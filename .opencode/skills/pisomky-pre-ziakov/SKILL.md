---
name: pisomky-pre-ziakov
description: "Vytvára písomky pre žiakov ako .docx priamo v aplikácii WordCraft cez MCP. Pri príkaze na vytvorenie si vypýta počet strán a ročník, otvorí dokument vo WordCrafte na živé sledovanie a pred inštaláciou alebo zmenou MCP si vyžiada povolenie."
metadata:
  language: "sk"
  platforms: "chatgpt,codex,opencode"
  output: "docx"
  editor: "wordcraft-mcp"
---

# Písomky pre žiakov vo WordCrafte

## Úloha

Vytvor hotovú písomku ako súbor `.docx` priamo v aplikácii WordCraft pomocou jej MCP servera. Používateľ má počas tvorby vidieť otvorenú aplikáciu a zmeny v dokumente. Text v chate slúži iba na krátke otázky, predpoklady a priebežné informácie; výsledkom má byť upraviteľný dokument vo WordCrafte.

Skill používaj pri písomkách, testoch a pracovných listoch pre žiakov. Ak používateľ neurčí inak, vytváraj jednu žiacku verziu bez riešení. Učiteľský kľúč alebo druhý variant vytvor ako samostatný `.docx` iba vtedy, keď oň používateľ požiada.

## Spustenie pri požiadavke na písomku

Pri požiadavke typu „vytvor písomku“ najprv skontroluj, či už používateľ uviedol potrebné údaje.

Najprv zisti ročník, predmet a tému:

> Pre ktorý ročník, z akého predmetu a na akú tému má byť písomka?

Potom zisti rozsah a náročnosť:

> Na koľko strán má byť písomka a aká má byť náročnosť — ľahká, stredná, náročná alebo zmiešaná?

Následne zisti predstavu o úlohách a zdrojoch:

> Máš predstavu o úlohách, alebo ich mám navrhnúť sám? Mám čerpať z konkrétnej učebnice, poznámok, súborov alebo odkazu?

Nakoniec zisti vzor vzhľadu a potrebu kľúča. Vzor rieš výhradne bežnou správou v chate, kde môže používateľ voľne napísať predstavu alebo priložiť súbor či obrázok:

> Ak máš vzor písomky, prilož ho sem do chatu alebo mi opíš, ako má vyzerať. Ak vzor nemáš, napíš „bez vzoru“.

Na vzor ani jeho opis nepoužívaj otázkový widget, formulár, tlačidlá možností ani nástroj na vyžiadanie používateľského vstupu. Ak používateľ už vzor spomenul alebo priložil, nadviaž naň v bežnom chate a nepýtaj sa znova, či ho má. Ak súbor ešte neposlal, bežnou správou ho vyzvi na priloženie a počkaj naň. Vzor nesmieš skombinovať s inou otázkou do widgetu.

Ostatné otázky (ročník, predmet, téma, počet strán, náročnosť, úlohy, zdroje, pomôcky a kľúč) môžu používať otázkový widget, ak ho hostiteľské prostredie podporuje. Inak ich polož v bežnom chate. Žiadosť o priloženie akéhokoľvek súboru vždy patrí do bežného chatu.

Potrebu kľúča môžeš zistiť samostatnou otázkou vo widgete:

> Chceš aj samostatný kľúč správnych riešení s bodovaním?

Ak pomôcky ovplyvňujú riešenie alebo náročnosť konkrétnej témy, pripoj k otázke o úlohách krátku otázku „Aké pomôcky môžu žiaci používať — napríklad kalkulačku, tabuľky alebo slovník?“ Inak ju nepokladaj povinne. Dohodnuté pomôcky uveď do pokynov písomky a prispôsob im úlohy. Pri nejasnosti nenavrhuj úlohy, ktorých riešiteľnosť závisí od nepotvrdenej pomôcky.

Veď rozhovor v týchto štyroch krátkych krokoch; nepýtaj sa znovu na údaje, ktoré používateľ už uviedol. Každú ďalšiu otázku obmedz na chýbajúce údaje a prázdne kroky preskoč. Ak zadal všetko naraz, môžeš pokračovať rovno. Odpoveď „bez vzoru“ znamená, že máš zvoliť prehľadný vzhľad vhodný pre ročník. Ak povie „vymysli sám“, navrhni úlohy primerané ročníku a téme bez ďalšieho povinného schvaľovania; zostávajúce otázky tým nepreskakuj, ak ich ešte nezodpovedal alebo výslovne nenechal všetky voľby na teba.

Ak používateľ dodá vzor, zachovaj podľa neho rozloženie, typografiu, hlavičku a spôsob zadávania úloh, pokiaľ neurčí inak. Rozlišuj predlohu vzhľadu od zdroja učiva; stará písomka použitá ako vizuálny vzor nemusí určovať obsah novej písomky.

Rešpektuj vlastné príklady, zakázané typy úloh a požadované zastúpenie úloh. Pri dodaných zdrojoch zisti potrebný rozsah (napríklad kapitolu alebo strany), ak je nejasný. Ak zdroj nevieš prečítať, oznám to a vyžiadaj dostupnú verziu; netvrď, že z neho čerpáš. Keď si používateľ zvolí vlastné zdroje, učivo mimo nich pridávaj len po dohode. Pri samostatnom návrhu nevymýšľaj citácie ani názvy učebníc.

Pred začatím tvorby musí byť známe aspoň:

- cieľový ročník alebo vek;
- požadovaný počet strán;
- predmet a téma, ak ich nemožno spoľahlivo odvodiť z kontextu.
- či máš použiť používateľovu predstavu a zdroje alebo navrhnúť úlohy samostatne.
- náročnosť, či sa má použiť vzor vzhľadu a či používateľ chce samostatný kľúč správnych riešení; používateľ môže tieto voľby výslovne nechať na teba.

Ďalšie voliteľné údaje si vypýtaj až vtedy, keď významne ovplyvnia výsledok: čas na písomku, počet bodov, variant A/B, jazyk alebo špeciálne úpravy. Ak ich používateľ neuvedie, použi rozumné predpoklady a stručne ich oznám. Nezaťažuj používateľa dlhým dotazníkom.

## Kontrola WordCraftu a MCP

Pred tvorbou dokumentu over, či je dostupná WordCraft aplikácia a MCP server. Názvy nástrojov sa môžu líšiť podľa hostiteľského prostredia, preto najprv preskúmaj dostupné nástroje a ich schémy. Typicky hľadaj schopnosti na:

- zistenie stavu inštalácie WordCraftu;
- vytvorenie alebo otvorenie dokumentu;
- písanie a formátovanie textu, tabuliek a obrázkov;
- uloženie do `.docx`;
- zistenie počtu strán a kontrolu obsahu;
- vykreslenie strán alebo snímku obrazovky;
- otvorenie dokumentu v živej aplikácii.

Použi živý režim s otvorenou aplikáciou vždy, keď je dostupný. Dokument otvor ešte pred vkladaním obsahu a vkladaj ho v zmysluplných krokoch, aby používateľ mohol sledovať priebeh. Nestačí vytvoriť dokument headless a otvoriť ho až na konci, ak je možné WordCraft ovládať naživo.

Ak WordCraft alebo jeho MCP server nie je dostupný, nepredstieraj, že je pripojený. Povedz používateľovi:

> WordCraft alebo jeho MCP server nie je pripojený. Chceš, aby som ti pomohol WordCraft nainštalovať a nastaviť MCP pripojenie?

Ak je WordCraft aj MCP už nastavený, automaticky spusti existujúci lokálny server alebo sa k nemu pripoj, otvor viditeľnú aplikáciu a pokračuj v tvorbe. Samotné spustenie pripraveného WordCraftu, otvorenie dokumentu a používanie existujúceho MCP nevyžaduje ďalšiu otázku na súhlas. Nedostupný nástroj v aktuálnom chate ešte neznamená, že aplikácia nie je nainštalovaná: najprv over dostupné pripojenia a lokálnu inštaláciu.

Výslovný súhlas vyžaduj pri novej inštalácii, sťahovaní programu alebo zmene MCP konfigurácie. Ak používateľ tento konkrétny setup už povolil v rozhovore, nadviaž na existujúci súhlas a nepýtaj sa znovu. Pred inštaláciou uveď, čo sa bude inštalovať a z akého dôveryhodného zdroja. Ak inštalátor vyžaduje práva správcu, informuj o tom a neobchádzaj ich. Rešpektuj aj povolenia vyžadované hostiteľskou aplikáciou.

Po povolení:

1. over alebo nainštaluj WordCraft a `wordcraft-cli` z oficiálneho zdroja alebo z používateľom určenej distribúcie;
2. nastav MCP server podľa aktuálneho hostiteľa, bez prepisovania existujúcej konfigurácie;
3. ak má používateľ sledovať tvorbu, spusti WordCraft s lokálnym control/live pripojením;
4. znova over dostupnosť nástrojov, otvor aplikáciu a až potom pokračuj v tvorbe.

Ak používateľ povolenie odmietne, nevytváraj ticho náhradný headless `.docx`. Ponúkni iba textový návrh alebo lokálny dokument ako alternatívu, ak s tým používateľ výslovne súhlasí.

Podrobné mapovanie podporovaných WordCraft MCP režimov a nastavenia je v [references/wordcraft-mcp.md](references/wordcraft-mcp.md). Načítaj ho pri kontrole, inštalácii alebo riešení problémov s MCP.

## Tvorba písomky

Po potvrdení údajov a dostupnosti WordCraftu:

1. Zhrň predmet, tému, ročník, počet strán, čas, náročnosť a prípadné predpoklady.
2. Navrhni pokrytie učiva: cieľ učenia → úlohy → typ úlohy → body. Dbaj, aby sa dôležité učivo neoverovalo jedinou náhodnou otázkou.
3. Otvor nový dokument vo WordCrafte v živom režime.
4. Vlož názov, predmet a tému, miesto na meno a dátum, pokyny, úlohy a dostatok priestoru na odpovede. Do žiackej verzie nevkladaj počty bodov pri úlohách, bodové maximum, údaj o získaných bodoch ani pokyny typu „za každú odpoveď získavaš 1 bod“. Bodovanie patrí výhradne do samostatného učiteľského kľúča.
5. Použi primerané nadpisy, číslovanie, tabuľky, odrážky, obrázky alebo page breaky. Všetky prvky musia byť upraviteľné vo WordCrafte.
6. Ulož dokument ako nový súbor `.docx` na absolútnu cestu. Neprepisuj existujúci súbor bez výslovného súhlasu.
7. Dokument nechaj otvorený vo WordCrafte a oznám používateľovi, že ho môže priebežne sledovať a upravovať.

Pri tvorbe priebežne informuj iba o dôležitých fázach: kontrola WordCraftu, otvorenie dokumentu, vloženie obsahu, kontrola strán a uloženie. Nevypisuj používateľovi každú jednotlivú MCP operáciu.

### Súbežné úpravy používateľa

Pred každou dávkou zmien načítaj aktuálny obsah a stav živého dokumentu cez MCP. Ak používateľ medzičasom dokument upravil, pokračuj z jeho aktuálnej verzie a zachovaj jeho zmeny; nepoužívaj zastarané pozície ani hromadné nahradenie celého dokumentu. Ak MCP poskytuje verziu dokumentu alebo kontrolu konfliktov, použi ju aj pri zápise. Keď sa používateľova zmena priamo prekrýva s plánovanou úpravou a zámer nemožno spoľahlivo určiť, zastav iba dotknutú úpravu a vypýtaj si rozhodnutie. Po zásahu používateľa do zadania znovu over riešenie, body a prípadný samostatný kľúč. Ak je kľúč už otvorený, zachovaj aj jeho ručné úpravy.

## Obsah a didaktická kvalita

- Každú úlohu interne vyrieš nezávisle od toho, či používateľ chce odovzdať kľúč. Over správnosť výsledku, úplnosť vstupov, jednoznačnosť zadania a primeranosť náročnosti. Ak úloha nemá riešenie alebo má neplánovane viac riešení, oprav ju a znovu vyrieš. Po zmene zadania aktualizuj aj riešenie a body.
- Jazyk, dĺžku pokynov a náročnosť prispôsob ročníku.
- Jedna úloha má overovať hlavne jeden jasný výkon; zložitejšiu úlohu rozdeľ na podúlohy.
- Pri výbere odpovede jasne uveď, či je správna jedna možnosť alebo viac možností.
- Pri výpočtoch rozlišuj výsledok, postup a jednotky podľa cieľa úlohy.
- Pri otvorených odpovediach ponechaj dostatok priestoru a používaj jednoznačné kritériá.
- Nevyžaduj obrázok, tabuľku, pomôcku alebo vedomosť, ktoré nie sú v dokumente alebo v zadaných materiáloch.
- Pri úpravách pre žiakov so špecifickými potrebami zachovaj cieľ učenia a uprav najmä jazykovú záťaž, rozloženie, počet krokov alebo spôsob odpovede.
- Ak používateľ dodá učebnicu, poznámky alebo pracovný list, používaj ich ako hlavný zdroj a nevymýšľaj učivo mimo nich bez upozornenia.

## Rozloženie a počet strán

Počet strán je požiadavka na skutočný layout dokumentu, nie iba na množstvo textu.

- Predvolene používaj papier A4, orientáciu na výšku a dobre čitateľné písmo, ak používateľ neurčí inak.
- Pri cieli na viac strán používaj prirodzené page breaky, priestor na odpovede, tabuľky alebo samostatné časti; nevypĺňaj strany umelo opakovaným textom.
- Nemenšuj písmo na nečitateľnú veľkosť len preto, aby sa obsah zmestil.
- Po uložení zisti skutočný počet strán cez WordCraft alebo jeho renderovanie. Ak sa nezhoduje so zadaním, uprav rozloženie a znovu ulož.
- Každú stránku vykresli alebo prezri na 100 % a skontroluj pretečenie, prázdne strany, osirotené nadpisy, rozbité tabuľky, chýbajúce znaky a dostatok miesta na odpovede.
- Ak presný počet strán nemožno dosiahnuť bez zhoršenia čitateľnosti, oznám skutočný počet strán a vyžiadaj si rozhodnutie používateľa.

## Výstupy

Predvolený výstup je jeden žiacky `.docx` otvorený vo WordCrafte.

### Samostatné okno pre každý dokument

Každý vytvorený dokument musí mať vlastné viditeľné okno WordCraftu. Písomka, učiteľský kľúč a prípadné varianty musia zostať súčasne otvorené, každý vo svojom okne. Nestačí prepínať dokumenty v jednom okne alebo na konci znovu otvoriť písomku namiesto kľúča.

Pred tvorbou ďalšieho dokumentu ulož aktuálny dokument a over jeho cestu. Použi otvorenie nového dokumentového okna, ak ho nainštalovaná verzia podporuje; over výsledok, nespoliehaj sa iba na názov `new_document`. Ak nové dokumenty nahrádzajú obsah toho istého okna, spusti pre ďalší dokument samostatnú viditeľnú inštanciu WordCraftu s vlastným voľným lokálnym control portom a pripoj k nej samostatnú MCP reláciu. Vytvorenie ďalšej pripravenej relácie je bežná súčasť tvorby a nevyžaduje opakovaný súhlas.

Udržuj mapovanie výstupnej cesty na dokumentové ID alebo príslušnú inštanciu, control port a MCP reláciu. Pred každým čítaním, zápisom a uložením over správny cieľ. V prostredí s jediným MCP pripojením nikdy nezamieňaj dokumenty potichu: použi podporované samostatné relácie alebo oznám konkrétne obmedzenie. Nezatváraj okná hotových dokumentov. Na konci over, že všetky požadované dokumenty majú samostatné okná a správne názvy súborov.

Ak používateľ požiada o ďalší výstup, vytvor ho oddelene:

- učiteľský kľúč s riešeniami a bodovaním;
- variant B s rovnakými cieľmi, bodmi a porovnateľnou náročnosťou;
- upravenú verziu pre konkrétnu potrebu;
- PDF iba ako doplnok k `.docx`, nie namiesto neho.

Riešenia nikdy nevkladaj do žiackej verzie, pokiaľ to používateľ výslovne nepožiada.

Žiacka verzia vrátane variantov A/B neobsahuje žiadne bodovanie ani bodové maximum. Body plánuj a kontroluj interne a uveď ich iba do učiteľskej verzie. Ak používateľ kľúč nechce, bodovanie sa do odovzdaného dokumentu nepridáva.

Pri súhlase s kľúčom vytvor samostatný `.docx` so zhodným číslovaním úloh, správnymi odpoveďami, potrebným postupom a bodovaním vrátane čiastočných bodov. Pri otvorených otázkach uveď prijateľné alternatívy. Počet strán dohodnutý pre žiacku písomku nezahŕňa kľúč. Ak používateľ kľúč nechce, odovzdaj iba žiacku verziu a riešenia použi len na internú kontrolu.

## Záverečná kontrola

Pred odovzdaním potvrď internou kontrolou:

- dokument je uložený ako `.docx`;
- WordCraft je otvorený na finálnom dokumente;
- každý výstup vrátane učiteľského kľúča je otvorený vo vlastnom viditeľnom okne WordCraftu a písomka zostala otvorená počas tvorby kľúča;
- skutočný počet strán zodpovedá zadaniu alebo je odchýlka oznámená;
- všetky úlohy sú čitateľné, jednoznačné a primerané ročníku;
- každá úloha bola interne vyriešená a prípadný odovzdaný kľúč zodpovedá finálnemu zadaniu;
- náročnosť a vzhľad zodpovedajú odpovediam používateľa a dodanému vzoru;
- interné bodovanie a bodovanie v učiteľskom kľúči sú konzistentné;
- žiacka verzia neobsahuje body pri úlohách, bodové maximum, polia na body ani pokyny o prideľovaní bodov;
- dohodnuté pomôcky sú uvedené a úlohy sú s nimi riešiteľné;
- pri zápisoch bol zohľadnený aktuálny obsah dokumentu a zachované ručné úpravy používateľa;
- žiacka verzia neobsahuje riešenia;
- stránky nemajú pretečenie, prázdne miesta spôsobené chybou, rozbité tabuľky ani chýbajúce znaky;
- existujúce súbory neboli prepísané bez povolenia;
- žiadna inštalácia, sťahovanie ani zmena MCP konfigurácie neprebehla bez výslovného súhlasu používateľa.
