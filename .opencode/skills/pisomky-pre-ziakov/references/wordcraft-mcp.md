# WordCraft MCP

Načítaj tento dokument iba pri kontrole, nastavovaní alebo riešení problémov s WordCraft MCP. Názvy nástrojov a parametre vždy over v aktuálne pripojenom MCP serveri; rôzne balíky môžu používať odlišné názvy.

## Dve bežné integračné vrstvy

### WordCraft CLI MCP

Oficiálny WordCraft CLI poskytuje MCP režim. Typické schopnosti sú:

- `list_commands` na vyhľadanie príkazov;
- `new_document`, `open_document` a `save_document`;
- `execute` alebo `batch` na formátovanie a vkladanie obsahu;
- `type_text`, `select_text`, `get_text` a `inspect_document`;
- `render_page` na vizuálnu kontrolu stránky;
- `screenshot`, `click`, `key` a `ui_inspect` v desktopovom live režime.

Pri živom sledovaní musí byť aplikácia spustená s control kanálom a MCP server sa musí pripojiť na loopback adresu. Používaj iba lokálne loopback pripojenie; nevystavuj control port do siete.

### Vysokoúrovňový WordCraft bridge

Niektoré MCP bridge balíky poskytujú nástroje s názvami podobnými týmto:

- `get_wordcraft_status`;
- `create_document`, `edit_document`, `convert_document`;
- `get_document_info`, `extract_text`, `render_pages`;
- `list_wordcraft_catalog`, `run_wordcraft_commands`;
- `open_in_wordcraft`.

Ak sú tieto nástroje dostupné, použi ich podľa ich aktuálnej schémy. Nevolaj ich naslepo a nevymýšľaj chýbajúce parametre.

## Bezpečný setup

1. Zisti, či je dostupný WordCraft, `wordcraft-cli` a živý MCP nástroj.
2. Ak je všetko nastavené, automaticky spusti existujúci lokálny MCP server a viditeľný WordCraft alebo sa pripoj k bežiacej aplikácii. Na bežné spustenie a používanie pripraveného pripojenia sa nepýtaj. Ak treba niečo nainštalovať alebo zmeniť konfiguráciu, vyžiadaj si povolenie len vtedy, keď ho používateľ ešte neudelil pre tento setup v rozhovore.
3. Ako prvú možnosť používaj oficiálny WordCraft desktop balík, ktorý obsahuje CLI a MCP server. Ak používateľ určí iný bridge, dodrž jeho oficiálny návod.
4. Pred sťahovaním uveď zdroj a platformu. Neinštaluj náhodný balík len podľa podobného názvu.
5. V OpenCode použij aktuálny formát jeho MCP konfigurácie. Lokálny server potrebuje typ `local` a príkazové pole; pred úpravou existujúceho konfiguračného súboru zachovaj ostatné servery a nastavenia.
6. Po nastavení znova načítaj dostupné nástroje a over živé otvorenie dokumentu.

Oficiálne informácie o WordCraft MCP a downloadoch:

- https://wordcraft.run/mcp
- https://wordcraft.run/download

Dokumentácia OpenCode k lokálnym MCP serverom:

- https://opencode.ai/docs/mcp-servers/

## Živý workflow pre písomku

Použi tento sled, ak používateľ chce sledovať tvorbu:

1. over stav a dostupné schémy;
2. spusti alebo otvor WordCraft v live režime;
3. otvor nový prázdny dokument;
4. vlož titul, polia pre žiaka a obsah v niekoľkých zmysluplných dávkach;
5. ulož nový súbor na absolútnu cestu ako `.docx`;
6. zisti počet strán a vykresli všetky stránky;
7. oprav layout v živom dokumente, ak počet strán alebo vzhľad nesedia;
8. znovu ulož a nechaj finálny dokument otvorený vo WordCrafte.

Headless vytvorenie môže byť iba diagnostická alebo núdzová cesta. Nepouži ho ako finálny workflow, ak používateľ požaduje, aby videl tvorbu v aplikácii, pokiaľ s tým výslovne nesúhlasí.

## Súbory a bezpečnosť

- Používaj absolútne cesty.
- Existujúci súbor neprepisuj bez výslovného súhlasu; vytvor nový názov alebo sa opýtaj.
- Do názvu súboru nedávaj osobné údaje žiakov.
- Pri inštalácii alebo úprave MCP konfigurácie rešpektuj používateľovo povolenie a prípadné práva správcu.
- Ak sa živý control kanál nedá bezpečne nadviazať, zastav sa a ponúkni používateľovi voľbu medzi nastavením WordCraftu a explicitne povoleným headless fallbackom.
