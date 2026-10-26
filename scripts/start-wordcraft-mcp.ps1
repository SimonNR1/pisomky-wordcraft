param([int]$Port = 7981, [switch]$CheckOnly)
$ErrorActionPreference = 'Stop'

function Find-WordCraftExecutable([string]$Name) {
    $foundCommand = Get-Command $Name -ErrorAction SilentlyContinue
    if ($foundCommand) { return $foundCommand.Source }
    $candidateDirectories = @(
        (Join-Path $env:ProgramFiles 'WordCraft'),
        (Join-Path $env:LOCALAPPDATA 'Programs\WordCraft')
    )
    if ($env:WORDCRAFT_DIR) { $candidateDirectories = @($env:WORDCRAFT_DIR) + $candidateDirectories }
    foreach ($candidateDirectory in $candidateDirectories) {
        $candidateFile = Join-Path $candidateDirectory $Name
        if (Test-Path -LiteralPath $candidateFile -PathType Leaf) { return $candidateFile }
    }
    throw "WordCraft executable missing: $Name. Install WordCraft from https://github.com/storytold/wordcraft/releases or set WORDCRAFT_DIR."
}

$appPath = Find-WordCraftExecutable 'wordcraft.exe'
$cliPath = Find-WordCraftExecutable 'wordcraft-cli.exe'
if ($CheckOnly) {
    Write-Output "App: $appPath"
    Write-Output "CLI: $cliPath"
    & $cliPath --version
    exit $LASTEXITCODE
}

function Test-ControlPort {
    $connection = New-Object System.Net.Sockets.TcpClient
    try { $connection.Connect('127.0.0.1', $Port); return $true }
    catch { return $false }
    finally { $connection.Dispose() }
}

if (-not (Test-ControlPort)) {
    # Visible window is intentional: the teacher watches the document being edited.
    $appProcess = Start-Process -FilePath $appPath -ArgumentList '--control', "$Port" -PassThru
    $ready = $false
    for ($attempt = 0; $attempt -lt 60; $attempt++) {
        if (Test-ControlPort) { $ready = $true; break }
        if ($appProcess.HasExited) { throw 'WordCraft closed before its control connection was ready.' }
        Start-Sleep -Milliseconds 250
    }
    if (-not $ready) { throw 'WordCraft control connection was not ready within 15 seconds.' }
}

# Preserve stdout for MCP JSON-RPC. Do not print startup messages here.
& $cliPath mcp --connect "127.0.0.1:$Port"
exit $LASTEXITCODE
