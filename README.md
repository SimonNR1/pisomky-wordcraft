# Písomky vo WordCrafte

Slovenský skill na vytváranie písomiek pre žiakov v OpenCode. Dokument sa tvorí cez MCP v otvorenom WordCrafte, takže učiteľ vidí priebeh a môže ho upravovať.

## Čo pripraví

- Písomku ako upraviteľný `.docx` na požadovaný počet strán A4.
- Úlohy podľa ročníka, témy, náročnosti a dodaných materiálov.
- Voliteľný kľúč správnych riešení ako samostatný `.docx`.
- Bodovanie iba v učiteľskom kľúči; žiacka verzia je bez bodov.
- Internú kontrolu riešení, rozloženia a počtu strán.

## Nastavenie na notebooku s Windows

1. Nainštaluj [OpenCode](https://opencode.ai/) a nastav si poskytovateľa/model, ku ktorému máš prístup. Prípadné poplatky závisia od poskytovateľa.
2. Nainštaluj desktopový [WordCraft z vydaní vývojára](https://github.com/storytold/wordcraft/releases). Potrebuješ aplikáciu aj `wordcraft-cli.exe`. Windows inštalátor ich obsahuje. Pri portable verzii pridaj priečinok do PATH alebo nastav `WORDCRAFT_DIR`.
3. Na tejto GitHub stránke klikni **Code → Download ZIP** a ZIP rozbaľ.
4. V OpenCode otvor rozbalený priečinok, v ktorom je `opencode.json`. Pri práci v termináli prejdi do tohto priečinka a spusti `opencode`.
5. Ak OpenCode požiada o dôveru projektu alebo povolenie MCP, povoľ tento projekt. Projektový MCP spúšťa priložený čitateľný PowerShell skript; ExecutionPolicy Bypass platí len pre tento proces a nemení systémové nastavenie.
6. Napíš: **Použi skill pisomky-pre-ziakov a vytvor písomku.**

WordCraft sa pri štarte MCP otvorí automaticky. Skript používa existujúcu inštaláciu a lokálne pripojenie `127.0.0.1:7981`. Nič neinštaluje ani nesťahuje. Keď WordCraft chýba, oznámi to; skill môže pomôcť s inštaláciou po tvojom súhlase. Pracuj v tomto priečinku, aby OpenCode našiel skill aj projektové MCP nastavenie.

## Aké otázky položí

1. Ročník, predmet a téma.
2. Počet strán a náročnosť.
3. Predstava o úlohách a zdroje; podľa potreby povolené pomôcky.
4. Vzor vzhľadu a záujem o samostatný kľúč riešení.

Už zodpovedané otázky preskočí. Ak je pripojenie pripravené, začne pracovať bez ďalšieho schvaľovania. Inštalácia a zmena konfigurácie vyžadujú súhlas. Bežné povolenia OpenCode môžu byť vyžiadané samostatne podľa tvojich nastavení.

Vzor vzhľadu písomky sa rieši bežnou správou v chate: môžeš ho opísať alebo priložiť súbor či obrázok. Otázka na vzor nebude v otázkovom widgete. Ostatné otázky môžu používať widget podľa možností aplikácie.

Príklad kompletného zadania:

> Použi skill pisomky-pre-ziakov. Vytvor písomku z matematiky pre 5. ročník ZŠ na zaokrúhľovanie na 100, 1 000, 10 000, 100 000 a 1 000 000. Jedna A4, ľahká až stredná náročnosť. Navrhni vlastné úlohy, bez vzoru. Sprav aj samostatný učiteľský kľúč. Súbory ulož do priečinka vystupy.

## Riešenie problémov

- **Skill sa nenačítal:** otvor správny priečinok a v novom chate napíš jeho meno. Je v `.opencode/skills/pisomky-pre-ziakov/SKILL.md`.
- **WordCraft sa nenašiel:** over inštaláciu a prípadne nastav `WORDCRAFT_DIR` na priečinok obsahujúci obe `.exe`.
- **Overenie bez spustenia MCP:** v PowerShelli v priečinku projektu spusti `powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\start-wordcraft-mcp.ps1 -CheckOnly`.
- **Pripojenie sa stratilo:** po zatvorení WordCraftu reštartuj MCP v OpenCode alebo zatvor a znovu otvor OpenCode.
- **Iná verzia OpenCode:** dodaná konfigurácia používa formát `mcp.wordcraft` a `enabled` z dokumentácie nižšie. Ak tvoja verzia používa formát `mcp.servers`, prispôsob ju podľa jej dokumentácie; nekopíruj tento súbor cez svoje globálne nastavenia.

## Obsah repozitára

- `.opencode/skills/pisomky-pre-ziakov/` — prenositeľný skill a referencia MCP.
- `opencode.json` — projektové MCP pripojenie pre Windows.
- `scripts/start-wordcraft-mcp.ps1` — automatické otvorenie WordCraftu a spustenie MCP.

Testované s WordCraft CLI 0.11.0 na Windows: živé vytvorenie žiackej písomky na jednej A4, samostatného kľúča a odstránenie bodovania zo žiackej verzie. Samotná konfigurácia v konkrétnej inštalácii OpenCode na inom notebooku môže vyžadovať prispôsobenie verzii.

Dokumentácia: [OpenCode skills](https://opencode.ai/docs/skills/), [OpenCode MCP](https://opencode.ai/docs/mcp-servers/), [WordCraft MCP od vývojára](https://github.com/storytold/wordcraft/blob/main/docs/mcp.md).
