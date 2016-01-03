-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: wm27.wedos.net:3306
-- Generation Time: Jan 03, 2016 at 01:22 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d33148_krc`
--

-- --------------------------------------------------------

--
-- Table structure for table `elrh_articles`
--

CREATE TABLE IF NOT EXISTS `elrh_articles` (
  `id` int(7) NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cat` varchar(25) COLLATE latin2_czech_cs NOT NULL,
  `posted` datetime NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dscr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin,
  `gallery` int(5) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs;

--
-- Dumping data for table `elrh_articles`
--

INSERT INTO `elrh_articles` (`id`, `author`, `cat`, `posted`, `name`, `dscr`, `content`, `gallery`) VALUES
(1, 'ellrohir', 'Paměti', '2012-12-11 15:45:18', 'O Krči', 'Shrnutí historie a podoby Krče takové, jak ji znal a pamatoval JUDr. Alois Papírník', '<i>Prvním příspěvkem na tomto místě zasvěceném mapování a připomenutí historie městské části Praha-Krč budiž text z pera JUDr. Aloise Papírníka (1925 - 2001), který se v zde v Krči narodil a prožil tu celý svůj bohatý a dlouhý život. Původně mělo jeho dílo, které je datováno k prosinci 1970 (tomu také odpovídá popisovaný stav, který už někdy neodpovídá dnešní realitě), sloužit pouze pro naší inspiraci při psaní vlastních článků. Tomuto účelu může ještě v budoucnu posloužit. Nicméně samo o sobě jde o natolik zajímavou a krásně shrnujicí práci, že stojí za to uveřejnit ji tak, jak leží a běží, celou. Je původní mimo pár drobných stylistických zásahů, oprav viditelných pravopisných chyb (autor se v závěru omlouvá za již horší znalost svého rodného jazyka) a změn některých znaků. Text neoplývá přehnanou délkou, o to lépe se vám však bude číst a nabízí záživné propojení historických faktů a vývoje s osobní zkušeností pisatele. Snad se vám tedy bude líbit a rozhodnete-li se pro přečtení, nebudete toho litovat.<br /><br />- Alois Sečkár v prosinci 2012</i><br /><br /><br />\r\n\r\n<h3>O Krči</h3>\r\n\r\nKrčská kotlina patří mezi nejstarší obydlená místa naší vlasti a doklady o osídlení pocházejí už z mladší doby kamenné. Není to tak nepochopitelné, uvědomíme-li si, že potok, tvořící osu dnešní Krče, tekl odedávna a poskytoval praobyvatelům kromě ryb a raků i nezbytnou pitnou vodu a při tom nebyl zas tak nebezpečný, jako řeka, at již co do povodní či do možnosti vpádu cizího kmene po této přirozené komunikaci.<br /><br />\r\nŠtorch se o Krči zmiňuje na několika místech své knihy "Praha v době přehistorické" a to v těchto souvislostech :<br />\r\n- nálezy střepin z klikatých rovných čar, zbytků hliněných nádob.<br />\r\nSám jsem je jako chlapec nalézal v kopci nad zdejší školou směrem k nové požární stanici, bohužel jsem je tehdy neschoval.<br />\r\n- uvádí kulturní jámy v území kolem rybníků za zdejší školou jako doklad neolitické osady spolu a jinými současnými osadami při jiných potocích, např. Botiči či Motolském, zatím co dnešní vnitřní Praha tehdy ještě osídlena nebyla.<br />\r\n- cituji z knihy: "...kdybychom sešli do Krče k potoku, najdeme tu v cihelnách, pískovnách a jinde, kde je zem odkryta <i>[Společenská Zahrada, pozn. A.P.]</i> přečetná svědectví o pravěkých sídlištích. V Krči nalezen byl zejména i další tulipánový pohár 14 cm. vysoký, podobný oněm z Troje, projevující ráz kolových staveb? Na dvoře velkostatku <i>[t.j. před dnešním nádražím, pozn. A.P.]</i> byl vykopán žlutohnědý zvoncovitý pohárek, typicky zdobený."<br />\r\n- a jiný citát z knihy : "Pan Welz, statkář český, našel r. 1911 při dobývání písku vedle svého statku malé žlutošedé osudí, s nepatrnými prsovitými vypuklinami, typu lužického! Vedle osudí stála větší popelnice, ale zcela rozbita. Asi deset kroků dále nalezen druhý žárový hrob. Byla v něm velká popelnice a malinký lužický okřínek. Na jiném místě vypadla z pískové stěny etážová popelnice, na spodu tuhovaná. Na podzim 1913 našli dělníci při odkopávání písku mísovitou popelnici, v níž byly opálené lidské kůstky a několik velmi primitivně zhotovených bronzových plíšků, měřících asi 1 cm v průměru. Miskovité  plíšky byly probity dvěma dírkami, snad to byly knoflíky."<br />\r\nZde už tedy doklad i o době bronzové. Kniha obsahuje ještě mnoho citací ohledně Krče, ale já  raději upozornil na knihu téhož autora, určenou mládeži a to na Osadu Havranů, která opět vyšla v roce 1965 a líčí život a osudy pravěké osady na krčském potoce. Mně, jako chlapci, jí doporučila tehdejší učitelka Rakovčíková, kniha ta mi dala hodně, mé dcerce už také a myslím, že by bavila i jiné.<br /><br />\r\nDomnívám se, že můžeme věřit, že toto osídlení už nikdy nepřestalo a že nový lid, jak se postupně střídal, využíval tato místa tolik se hodící k osídlení.<br /><br />\r\nPřešly věky a ustavil se a upevňoval se český stat. Blízkost Vyšehradu a tím kapituly vyšehradské způsobila, že se území Krče dostalo do sféry ekonomických zájmů této v té době významné instituce a stalo se jejím majetkem. Jí také vděčí za své jméno, neboť už v roku 1222 je uváděna jako Carcium, kteréžto jméno je pouhým latinským tvarem jména Krč, které tehdejší obyvatelé vyslovovali pravděpodobně Karč či Kerč a podobně.<br /><br />\r\nJiž tehdy dělila se Krč na Dolní a Horní, kteréžto rozdělení činilo donedávna, kdy se to ještě rozlišovalo, značné potíže. Obě Krče jsou totiž i "nahoře" i "dole" a zásadně platí, že ta část Krče, vinoucí se při "císařské" silnici, čili Budějovické, je Horní, tedy jak u Labuťě, tak na přiklad u Habrovky a zbytek směrem k Braníku je Dolní, počítaje v to i dnešní sídliště Stašek, čili rozdělení je tu východ-západ.<br /><br />\r\nPůvodně obě Krče patřily vyšehradské kapitule. Šlo v podstatě o dvě tvrze, hospodářské budovy   a pár chaloupek nevolníků. Tento velkostatkářský systém se udržel a v Krči nikdy nebylo malozemědělství, vždy jen velkostatek a pár domkářů, pokud nebyli deputátníky.<br /><br />\r\nZa zmínku stojí, že již z.r. 1328 se v Krči připomínají višně, to byla tehdy vzácnost. Dnešní obyvatelé ulice Višnové a Pod Višňovkou zajisté netuší, že právě v Krči byly vzpomenuty višně nejdříve v celém království a to již za Jana Lucemburského.<br /><br />\r\nPostupně se dostaly obě Krče do moci různých zámožných pražských měšťanů a sdílely osudy svých pánů. Lid si pány vybrat nemohl, jako ostatně nikde a nikdy a měl při tom dosti smůlu. Tak hned husitské války objevily v Krči spíš reakcionáře než pokrokáře a již r.1420 po bitvě na Vítkově v rámci očisty byla Dolní Krč, jako tvrz probošta pražského spálena samotnou její posádkou, když se nemohla ubránit náporu Husitů. Ti pak dobyli i tvrz Horní Krče, majetek německého kupce Munheima z Celetné ulice, který dodával Zikmundovu vojsku síru a sanytr. V r.1434, ne dlouho před lipanskou tragedií, vypálili opět obě Krče i s okolím Táboři a Sirotci a kteří tímto způsobem chtěli vylákat a donutit k boji Pražany a pány s nimi spojené. Vidouce pak přesilu protivníkovu, odtáhli od Krče směrem východním ke vsi jménem Lipany...<br /><br />\r\nV r.1448 konalo se v Krči vítání papežského legáta Jana Carvayala. Sešlo se mnoho vzácných pánů, kronikář mluví o 500 jezdcích, nepočítaje studenty, bakaláře a mistry a docela už ne kněze a mnichy řemesla i s korouhvemi a konšely se stříbrnými hůlkami. Legáta, jenž přijel na mezku, vedli pod baldachýnem až do Prahy. Jak vidno, pokud jde o zábavu pro davy, nic nového pod sluncem.<br /><br />\r\nV r.1499, nedlouho po objevení Ameriky, koupila Krč tvrz s dvorem, poplužím, lulkami, krčmou, chrastinami, rybníkem, potoky, vrbinami a jiným příslušenstvím obec Nového města Pražského za 700 míšeňských kop. Tak to byl takový pokus o spojení, které se pak uskutečnilo až 1923 vznikem velké Prahy, obec pražská tehdy Krč neudržela a tak se dostala později do držení Karmelitánů od sv. Havla a v r.1795 ji koupil Jan Geyer z Ehrenberku, totiž Krč Dolní. Horní Krč měla osudy jiné. Tu vlastnil staroměstský měšťan Leandr Rüppel, jeden ze 27 popravených českých pánů. Však mu také Horní Krč zabavili a sloužila pak potřebám špitálu sv. Bartoloměje.<br /><br />\r\nProfesor Ruth uvádí ještě jednu historku, hodnou nejen zaznamenání, ale přímo zfilmování. Je to ze staré kroniky z r.1572. Jedná se tam o tom, že na smrt odsuzené zločince posílal císař na galeje do Benátek. Tím se zbavil nedobrých živlů a ještě na tom vydělal. Ale pražskému lidu se to jaksi nelíbilo a tak se stalo ? a nyní cituji dávného kronikáře: "10.Aprolis vedli z Prahy 64 vězně na galeje a tu někde pod Slovany na Novém Městě u pražského špitálu sehnala se nějaká chasa, a odňali ty padouchy všecky Vlachům a z řetězů vytloukli a něco těch Vlachů zamordovali. A předních vůdců jejich něco bylo na kočím  <i>[t.zn.že jeli na voze, pozn. A.P.]</i>, ti ujeli přece přes Vyšehrad až tam někde za Krč. I honili je, a když jich měli dohoniti, skákali z vozů dolů a do lesa zutíkali a na voze několik set hotových peněz měvše, jim od té lotroviny pražské pobráno."<br /><br />\r\nProfesor Ruth uvádí ještě zajímavou variantu blanické legendy, podle které blanické vojská vyrazí ku Praze. Tu všichni Češi u Krče se shledají, vojsko, sedláci, měšťané i rytíři do nepřítele se dají a mocně Prahu opanujíce nepřátele napořád vražditi budou, že krev od strahovské brány poteče až k mostu.<br /><br />\r\nPřešla doba Temna i ranních červánků a přiblížil se konec minulého století. To už statek v Dolní Krči patřil p. Welzovi - pozůstatkem je dnešní zámeček, nedaleko školy. Podle profesora Rutha, který tehdy (kol r. 1900) psal ze současnosti, je Krč Horní a Dolní příjemná vesnice s vilkami a letními byty Pražanů. Říka dále, že potoku zde říkají "Kněžka" a stěžuje si, že chůze po silnicích přes Pankrác nebo přes Michli je nepříjemná pro prach. Co by říkal nyní, mačkaje se v tramvají a přestupuje na\r\nBudějovickém náměstí do přeplněných autobusů?<br /><br />\r\nJá bych ještě připomněl hospodu na Labuti, zaznamenanou už na mapce z doby Marie Terezie, což jsem viděl na vlastní oči. Byla to formanská hospoda a co je zajímavé, že na zmíněné samozřejmě německé mapě je naznačena jako "Labuť" na rozdíl \r\nod "Krtsch", kterýžto označený bod byl poněkud vlevo. Je patrno, že to stálo za to tento bod označit. Vždyť to byl motel 18. století. Unavený forman i jeho koně se vyspali a nazítří ráno hurá do Prahy, která už byla nedaleko.<br /><br />\r\nA což když tudy projížděl svérázný Václav IV. na svůj Nový hrad u Kunratic?\r\nNezavítal také někdy do Krče přestrojen za potulného hudce či krajánka, aby zjistil, co si lid myslí? Kdož ví?<br /><br />\r\nZa mého dětství do jedné vilky jezdíval starý pan Masaryk. My děti jsme stáli na místě zvané Skalka a volali a mávali. Starý pán  pokynul a vešel do starší vily za svým přítelem Antalem Staškem. Nebyla to ledajaká vila! Pan Stašek se vlastně jmenoval Zeman a bydlil tam s ním jeho syn Ivan Olbracht se svou družkou  Helenou Malířovou, sestrou paní Růženy Naskové...<br /><br />\r\nTaké není bez zajímavosti, že Ivan Olbracht s Helenou Malířovou chodili do hospody u Papírníků, nedaleko školy, kde je dnes tiskárna a kromě družné zábavy tam psali četná svá díla!<br /><br />\r\nNa místě, kde je dnes sídliště Antala Staška, bylo ještě za mého dětství pole a tam začátkem století dělal letecké produkce pan Kašpar. Byla tam osobně moje maminka jako děvčátko. Letadlo se vzneslo asi do výše pěti metrů a ulétlo tak kus cesty...<br /><br />\r\nV roce 1900 už měla Krč (Dolní a Horní) 2.329 obyvatel, asi devítinu počtu obyvatel tehdejších Nuslí. A přece ještě v roce 1850 měla Krč 665 obyvatel proti 562 obyvatelům Nuslí. Nedá mi to, abych se nevnutil, že kol r.1865 se přistěhoval z Krňan do Krče můj stejnojmenný pradědeček, pozdější mistr ševcovský a konšel Spojených obcí krčských.<br />\r\nO školství v Krči říká publikace "Nusle - Michle - Krč", cituji:\r\n"Když začíná vlastní školství v Horní a Dolní Krči, jsou známy tyto obce jako oddělené vsi, kam chodí Pražané na celodenní výlety a kde si začínají pomalu stavět své vily. Ataké prvá krčská škola byla zřízena v obytné vile. V létech padesátých minulého století chodilo přes 80 dětí do Michle. Až roku 1865 se Krč školsky osamostatnila a byla pro ní schválena v září tohoto roku jednotřídní škola. Od dědiců Claudiových byla zakoupena vila za 4.900 zlatých, která stejným nákladem byla upravena na školu. \r\nDo této jednotřídky bylo zapsáno 116 žáků!!! Za 7 let již se stává dvojtřídkou, aby se pravidelně po 10 letech rozšiřovala, při čemž třídy jsou přenášeny do soukromních domů."<br /><br />\r\nTo je právě ten dům na rohu ulice v Podzámčí a Hornokrčské.<br /><br />\r\nPokračuji v citaci:\r\n"Dodnes stojící škola v Krči, která stále slouží svému účelu, byla jako čtyřtřídka otevřena \r\n3. září 1886 za řídícího učitele Josefa Blažka a postavil ji za 12 tisíc zlatých stavitel Misterka. Za deset let bylo přistavěno scházející křídlo budovy pro pátou třídu a otevřeno roku 1897. také Krč zápasila s nedostatkem místa. Vždyť do čtyřtřídní školy, kterou obohatil již zmíněný učitel Blažek zahradou, bylo přihlášeno 310 žáků. Krč nezůstala nijak šťastná, neboť zanedlouho žáci přes deset let znovu nastupují cestu do nuselské nebo michelské měšťanky, jestliže nechtějí být odkázáni na pět tříd, které jim zatím poskytovala jejich obec."<br /><br />\r\nK tomu mohu dodat osobní vzpomínky. Začal jsem chodit do školy na podzim roku 1931 a to do pavilonu, co je přímo za nynější školičkou a v němž byly dvě první třídy.<br /><br />\r\nOd druhé do paté chodily děti a později tedy i já, do hlavní budovy. Další pavilon přes ulici, co je dnes kuchyň a jídelna, byl tzv. pomocnou školou.<br /><br />\r\nSám jsem od roku 1936 studoval na reálném gymnasiu v Křemencové ulici, ale mojí bývalí spolužáci chodili tehdy ještě do měšťanky až na Pankrác tzv. staré školy u Paloučku, a to většinou pěšky. Na Kačerov jezdila tramvaj sice od roku 1934, ale musel se platit zvlášť autobus a to ještě podle pásem. Tramvaj číslo 13 na Ryšánku začala jezdit až začátkem roku 1939. teprve nedlouho před koncem první republiky byla otevřena nová měšťanka u Hřbitova, čímž se krčským žáčkům cesta značně zkrátila. Koncem války však byla proměněna v kasárna SS, stejně jako na přiklad dnešní Fruta v Krči.<br /><br />\r\nZ kulturního snažení Krče dlužno uvésti zejména bývalé lesní divadlo, dnes dík nepochopení už v troskách. Kdysi tam putovali stovky Pražanů za dobrou zábavou, já tam viděl na přiklad Blodkovu operu v studni a nikdy nezapomenu na roj skutečných, živých svatojánských mušek (hrálo se totiž večer), který vlétl na scénu.<br /><br />\r\nOchotnické divadlo kvetlo zejména též v dnes již také zrušeném sále hotelu Klimeš, spolek ten jmenoval se Vlast. Pak pěvecký spolek Dalibor z Horní Krče.<br /><br />\r\nNěkdy kolem roku 1935 byla postavena krčská sokolovna, jako děcku mi imponovala plechovka, zazděná do základů, obsahující denní tisk, soudobé peníze apod. Zdalipak tam ještě je?<br /><br />\r\nKončím, čím jsem začal. Po osadě Havranů vystřídalo se mnoho lidu v krčské kotlině. Co zůstalo po neolitickém osídlení, víme. V zemi toho ještě leží dost a dost. \r\nCo pak asi zůstane pro nás?<br /><br />\r\n\r\nP.S.: \r\nProsím o shovívavost pokud jde o překlepy a chyby vůbec.  Já už vyšel dávno ze školy.<br /><br /><br />\r\nPrameny:\r\nE. Štorch: Praha v době přehistorické / G. Voleský 1921<br />\r\nE. Štorch: Osada Havranů / SNDK 1965<br />\r\nProf. F. Ruth:	Kronika královské Prahy a obcí sousedních / 1245 stran, Pavel Körber Praha 1903<br />\r\nPublikace: Nusle - Michle - Krč v minulosti a přítomnosti / Obvodní rada pro Prahu XIV 1948<br />', 1),
(2, 'ellrohir', 'Recenze', '2013-02-10 17:32:49', '100 let Lesního divadla v Krči', 'Recenze na stejnojmennou publikaci nakladatelství Gemini', '<img src="http://www.databazeknih.cz/images/11_/11248/100-let-lesniho-divadla-v-krci-145817.jpg" title="100 let Lesního divadla v Krči" alt="100 let Lesního divadla v Krči" /><br /><br />\r\n\r\nS podporou Městské části Praha 4 vyšla koncem roku publikace jménem <a href="http://www.databazeknih.cz/knihy/100-let-lesniho-divadla-v-krci-145817">„100 let Lesního divadla v Krči“</a>, pod kterou je podepsáno jméno editora <a href="http://www.databazeknih.cz/zivotopis/marek-zajac-11248">Marka Zajace</a>, který jednak už téměř 10 let řídí občanské sdružení Lesní divadlo Krč a též vlastní nakladatelství Gemini Publishing Prague, jehož nákladem kniha vyšla. Protože se týká věci, která spadá do působnosti těchto stránek, a navíc jsme se na díle přímo podíleli fotografickým materiálem, který tvoří významnou část obsahu, byli jsme jistě zvědaví na výsledek.<br /><br />\r\n\r\nPopravdě ten je přeci jen lehce rozpačitý. Na jednu stranu je jistě pěkné a chvályhodné, že něco takového vůbec vzniklo, protože je to šance, jak přiblížit šiřší veřejnosti fenomén Lesního divadla, kterým se kdysi mohla Krč pyšnit. Bohužel se však nemohu ubránit dojmu, že obsah, který se čtenáři dostane do rukou, je poněkud chudý. Zejména při zvážení ceny, která se, pokud si správě pamatuji z inzerátu v Tučňákovi, „oficiálních“ novinách Prahy 4, pohybovala kolem 200 Kč. Ne že by kniha vypadala na pohled špatně – použitý je kvalitní křídový papír, dobře svázaný, s tiskem nebyly žádné problémy, maximálně se zdá, že desky vazby se lehce nedovírají, alespoň u mého výtisku, ale to je spíše kosmetický detail. Je však na první pohled patrné, že jde spíše o útlou publikaci – cca 50 stránek formátu A4.<br /><br />\r\n\r\nA co je ještě podstatnější, to je náplň těchto stránek. Knihu lze rozdělit na tři části – první je čtyřstránkový text, jehož autorem je můj děda – JUDr. Alois Papírník. Jde o osobní vzpomínky na Lesní divadlo zejména z dětských let, sepsané krátce před koncem tisíciletí. K této části nemám naprosto žádné výhrady, a to rozhodně nejen proto, že jde o dílo mého blízkého příbuzného. Je to proto, že děda byl skutečně nadán neuvěřitelným literárním darem a vypravěčským talentem, což jsem si uvědomil vlastně až docela nedávno a ve své podstatě mě to přivedlo k práci na těchto stránkách. To jsem se ale nechal trochu unést, zpět k vlastní knize. Čtenář se z pohledu očitého svědka dozví řadu zajímavých detailů, například je tu neuvěřitelně sugestivně podaná vzpomínka na katastrofu v podobě vyhoření dřevěného divadla v polovině 30. let.<br /><br />\r\n\r\nNásleduje sedm stran s podtitulem „Dobru, kráse, můzám“. Zde se jedná o jakési shrnutí historie, která Lesnímu divadlu v Krči předcházela a mapování osudů divadla a jeho protagonistů. Doplněné je řadou zajímavých fotografií hereckých osobností. Nemohu si však pomoct, text mi přijde poněkud nepřehledný, často přerušován dlouhými citacemi z jiných zdrojů (celkem nejméně 1/3 délky), které mají za cíl doplňovat a navozovat atmosféru, ovšem na mě působí spíše rušivě, dal bych přednost jednolitému autorskému textu. Je však třeba sportovně přiznat, že faktografických informací, alespoň z pohledu hereckého, poněkud odtrženého od fyzických reálií (což je kontrastem k pohledu diváka – mého dědy – v úvodní části), je čtenáři předloženo dost. Také je pravda, že shrnout nejméně tři desítky let historie, není jen tak. Tady se ale dá namítnout, a já si také troufám to činit, že tedy měla být tato pasáž knihy delší a řekněme „lépe“ zpracovaná. Za potenciálně problematické považuji též jaksi suchopárné zpracování, kdy v podstatě jde o encyklopedické chrlení faktů, dat a jmen na úkor čtivosti (opět v příkrém rozporu s dědovými vzpomínkami, které naopak říkají fakticky málo, ale čtenář má mnohem spíše pocit, že „byl u toho“). Autor se zřejmě snažil nahradit tento nedostatek vkládáním výše zmíněných citací, ale nejsem si jist, zda dosáhl žádoucího dojmu. U mě bohužel ne.<br /><br />\r\n\r\nStěžejní částí díla jak rozsahem tak významem je fotogalerie. Něco přes čtyři desítky reprodukcí představující fotografie hereckých sborů, momentek z představení, ale i plakátů a dokonce notových partů. Velmi zajímavých je dvanáct stránek ofocených z dobové publikace k tehdy 10. výročí Lesního divadla, kterou vydal Krčský Sokol v roce 1922. Je zde k vidění kompletní obsah této staré brožurky, který částečně vyvrací mou námitku na příliš málo materiálu ke čtení – zde si čtenář může počíst vskutku vydatně. Na druhou stranu je zajímavé porovnat, jak vypadala vzpomínková výroční kniha tehdy a co je nám nabízeno dnes... Za podstaný nedostatek fotografické části považuji absenci jakýchkoliv popisných komentářů – není-li vysvětlující text přítomen přímo na snímku (což naštěstí poměrně často je), pak je třeba si jej domyslet. I zde mohlo a mělo být provedeno více práce.<br /><br />\r\n\r\nTo je tedy vše, co kniha „100 let Lesního divadla v Krči“ může nabídnout. Snad ještě za zmínku stojí zajímavá dvojice historických map s Německy psanými popisky, které zdobí vnitřní stranu vazby, a seznam použité literatury, který čítá celkem 14 prací, mezi kterými mohou hledat další inspiraci zejména milovníci naší divadelní historie. Z předchozích řádek vyplývá, že s výslednou podobou díla příliš spokojen nejsem, a je to skutečně tak. Přijde mi, že práce mohlo být odvedeno více a výsledek mohl být bohatší a lepší. Jsem však zároveň srozumněn s faktem, že v dnešní době je chvályhodné už jen to, že byl vůbec někdo ochoten ujmout se jako pan Zajac podobného projektu a vůbec něco takového dohromady dal. Za to autorovi jistě patří dík a nakonec i čtenář náročný jako já si své dokáže na stránkách této knihy najít.<br /><br />\r\n\r\nV případě, že tato recenze přes svůj lehce negativní tón vzbudila váš zájem o dílo, lze jej objednávat na adrese:<br /> Lesní divadlo Krč, o.s., Biskupcova 45/1809, 130 00 Praha 3<br />Případně na emailové adrese: gemini.publishing.prague@gmail.com<br /><br />\r\n<i>- Alois Sečkár, Praha, 10. února 2013</i>', 5),
(3, 'ellrohir', 'Odkazy', '2013-02-16 20:45:00', 'Vlastivědné vycházky po Praze - Zastávka v Praze', 'Odkaz na článek publikovaný na jiném webu, který vypráví o turistické vycházce, která mimo jiné prošla naší Krčí', '<p>Dnešní náhodný internetový objev mě inspiroval k publikování tohoto článku, lépe řečeno odkazu na článek. Alespoň to tu nebude tak prázdné jako dosud, než se nám podaří stránky zaplnit vlastními články.</p>\r\n\r\n<p>Dne <b>6. dubna 2008</b> prošla naší čtvrtí turistická výprava Zuzana Vlachové v rámci jejích "Vycházek po Pražských posedlostech". To by samo o sobě ještě tak zajímavé nebylo, kdyby o tom ovšem účastnci nepořizovali obsáhlý záznam doplněný historickými daty a reáliemi a ještě doprovázený fotografickou dokumentací. Na výsledný článek z procházky, která začínala v Krči a ve své druhé polovině došla až do Kunratic, si zde nyní dovolím odkázat s připojeným poděkováním na dálku paní autorce a účastníkům a přispivatelům.</p>\r\n\r\n<p>Celý článek, který nabízí řadu zajímavých informací, si můžete přečíst <a href="http://usedlosti.ctrnactka.net/pos08.htm" title="8. Od zámku ku zámku putujem, ani hradem neopovrhujem, musíme ještě do Krče, než nazujem si papuče">na této adrese</a>.</p>\r\n\r\n<p><i>- Alois Sečkár, Praha, 16. února 2013</i></p>', 0),
(4, 'ellrohir', 'Historie', '2013-03-08 20:43:03', 'Válečné pomníky na území Krče', 'Kamenné připomínky války a zejména Pražského Povstání nacházející se v Krči', '<p>Válečné pomníky na území Krče\r\nZa 2. Světové Války se na území Prahy a tudíž i Krče doopravdy bojovalo jen pár na začátku května 1945. Šlo samozřejmě o tak řečené Pražské Povstání.  Notoricky známý je, alespoň mezi těmi, kteří se zajímají o historii své země, sled událostí, který provázel ty největší  a nejdůležitější boje. Tyto bitvy a mnohdy heroické úsilí jsou poměrně dobře zmapovány – například <a href="http://www.ahmp.cz/povstani/index.html" title="Boje o radniční budovy na stránkách Archivu hl. m. Prahy">tento článek</a> se obsáhle věnuje situaci kolem Staroměstské radnice. <a href="http://www.rozhlas.cz/rozhlasovahistorie/bitva/_zprava/pred-65-lety-vypuklo-prazske-povstani--728699" title="Pražské povstání na webu Českého Rozhlasu">Jiný článek</a> se snaží povstání mapovat v celé šíři, ovšem za cenu větší stručnosti.</p>\r\n\r\n<p>Avšak kromě boje o rozhlas a intenzivních střetů v centru města, se události hýbaly a lidé bojovali a umírali i jinde v Praze, hodně (i když nejen) na jihu, protože odtud přicházely Němcům posily. A to je přesně případ Krče, kde se jednak v areálu pivovaru Pragovar nacházely kasárna SS, a také se tudy převalily jednotky od Benešova. Odpor místních narychlo zformovaných jednotek povstaleckých dobrovolníků přinesl řadu obětí, ať už v přímém boji, či při následných německých „odvetách“. Děda Alois Papírník ve svých pamětech popisuje významnou roli svého otce, taktéž Aloise, který coby místní velitel hasičů hrál v místním dění významnou roli, za kterou byl též po válce oceněn Válečným křížem.</p>\r\n\r\n<p>Jde o samo o sobě nesmírně zajímavé čtení, kterému se snad také někdy budeme zde na stránkách věnovat, avšak myšlenka a téma tohoto článku jsou jiné. Jeho úkolem je zmapovat všechny pomníky a pamětní desky, které se na počest obětem války na území někdejší Krče objevily. Velkou ambicí do budoucna je pak i zjistit bližší informace o jednotlivých osobách, aby to nebyla jen jména vytesaná do kamene či odlitá z kovu, ale aby bylo možné budoucím generacím připomenout jejich osudy. Zda se něco takového podaří, či zda je to vůbec možné - zda vůbec někdo dnes ještě ví a pamatuje, to v tuto chvíli netuším. Pokud ne, pak bude tento článek alespoň mapou míst a seznam osob. Každopádně se bude postupně rozšiřovat a doplňovat tak, jak budou přibývat nové informace. Pokud si například všimnete, že jsme některou z památek přehlédli, nebo pokud budete mít k tomu kterému pomníku nějaké doplňující informace, neváhejte se ozvat v diskusi pod článkem nebo přímo do mailu autorům.</p>\r\n\r\n<p>Celkem se uvádí zhruba 3500 padlých během květnových vojenských operací v Praze a blízkém okolí, do toho jsou však zahrnuty ztráty všech stran, počet českých obětí se odhaduje na 1500. Několik desítek z toho zemřelo na území Krče…</p>\r\n\r\n<p>Momentálně máme zmapováno celkem <b>23 míst</b>, kde se nějaký druh památníku či pamětní desky nachází.</p>\r\n\r\n<p>Ne všechny dále uvedené pomníky se vztahují přímo k událostem z května 1945. Jsou tu oběti nacismu, které zemřely již dříve, a pak je tu velký pomník padlým z 1. Světové války. I ty jsou zahrnuty v tomto článku, protože i tyto si jistě zaslouží trochu pozornosti a úcty.</p>\r\n\r\n<p><b>KDO VYKOUPILI SVOBODU NÁRODA NEZEMŘELI – ŽIJÍ</b></p>\r\n\r\n<p>\r\n<i>- Alois Sečkár, Praha, březen 2013\r\n<br />- článek aktualizován: 18. listopadu 2013</i></p>\r\n<p>-----------------------------------------------------------------------</p>\r\n\r\n<h4>Seznam památníků</h4>\r\n\r\n<p>Mapa ukazuje rozmístění jednotlivých památníků. Červená barva jsou ty, které mají přímou souvislost s Pražským Povstáním, modrou jsou vyvedeny ostatní.</p>\r\n<img src="/content/articles/memorials/map_locs.png" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče" width="750" />\r\n\r\n<h5>Památník obětem 1. světové války</h5>\r\n<img src="/content/articles/memorials/01.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče" height="300" />\r\n<p>Částečně mezi stromy ukrytá a polozapomenutá přípomínka padlých ve válce první. Na jižní (hlavní) straně je napsáno "OBĚTEM 1. světové války 1914-1918", na severní nese deska nápis "KDO VYKOUPILI SVOBODU NÁRODA NEZEMŘELI – ŽIJÍ". Na podobných monumentech bývají v jiných obcích uvedena konkrétní jména, zde však nic takového není.</p>\r\n\r\n<h5>Památník u stanice MHD Sulická</h5>\r\n<img src="/content/articles/memorials/02.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Padlí: Josef Krištof, Milan Mareš, Adolf Novotný, Josef Pavlík, František Seidl, Václav Veverka</p>\r\n\r\n<h5>Deska cti na Krčské hasičské stanici</h5>\r\n<img src="/content/articles/memorials/03.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Deska cti obsahuje jména příslušníků hasičského sboru, kteří zemřeli ve službě. Prvních pět jmen patřilo těm, kteří zemřeli v květnu 1945, nasleduje památka osmi dalších hasičů s daty úmrtí 1946 - 1972.<br />Padlí za války: Bohuslav Hampejs, Jiří Novák, Josef Červený, Karel Fessl, Miloslav Valentin</p>\r\n\r\n<h5>Pomník padlým u Jižní spojky</h5>\r\n<img src="/content/articles/memorials/04.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Nachází se na volném prostranství v blízkosti sjezdu z Jižní Spojky na Vídeňskou. Věnován je památce padlých v boji v okolí někdejšíhgo pivovaru Pragovar v květnu 45.<br />Padlí: Šimon Čupita, Jindřich Dvořák, Eduard Kryštof, Václav Michl, Štěpán Rehula, Emanuel Spurný, František Tikalský, Josef Trnka</p>\r\n\r\n<h5>K Habrovce 3</h5>\r\n<img src="/content/articles/memorials/05.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Na Krčské Stráni 11</h5>\r\n<img src="/content/articles/memorials/06.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Na Krčské Stráni 19</h5>\r\n<img src="/content/articles/memorials/07.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Na Krčské Stráni 21</h5>\r\n<img src="/content/articles/memorials/08.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Pod Rovinou 14</h5>\r\n<img src="/content/articles/memorials/09.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Hornokrčská 21</h5>\r\n<img src="/content/articles/memorials/10.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Památka zřejmě nejhoršího květnového masakru v Krči. Zde němci 7. května ráno bez skurpulí odpravili celkem 14 lidí. Vzpomeňte si na ně, až před vámi bude někdo zpochybňovat události těch let...<br />Oběti: Jan Čech, František Kodet, Vítězslav Liška, Vítězslav Maška, Miroslav Machoň, Josef Němejc, Maria Nešpor, Antonín Ondráček, Josef Patřičný, Jiří Petrlík, Arnošt Resl, Jan Staněk, Bohumil Zima</p>\r\n\r\n<h5>U Krčského Nádraží 36</h5>\r\n<img src="/content/articles/memorials/11.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Václav Veverka</h5>\r\n<img src="/content/articles/memorials/12.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>V lese nad bývalým Lesním divadlem pomalu obrůstá mechem a rozpadá se náhrobek Václava Veverky. Stále méně čitelný nápis nabádá: "Poutníče, pokloň se jeho památce. Zemřel za vlast.</p>\r\n\r\n<h5>Budějovická 72</h5>\r\n<img src="/content/articles/memorials/13.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Památník před Budějovickým Gymnáziem</h5>\r\n<img src="/content/articles/memorials/14.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>V parčíku nalevo od hlavního vchodu gymnázia. Stručný nápis připomíná všechny oběti 2. světové války.</p>\r\n\r\n<h5>Památník na hřišti u zastávky MHD Lísek</h5>\r\n<img src="/content/articles/memorials/15.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Za plotem a ukrytý v křoví stojí památník čtveřice obětí. Jména už jsou hůře čitelná: Václav Láf, Petr Sokolov, Václav Urban, <i>Neznámý rudoarmějec</i></p>\r\n\r\n<h5>Budějovická 108</h5>\r\n<img src="/content/articles/memorials/16.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p></p>\r\n\r\n<h5>Pamětní deska na zdi bývalého pivovaru</h5>\r\n<img src="/content/articles/memorials/17.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Areál někdejšího pivovaru Pragovar - a za války kasáren SS skrývá pamětní desku Eduarda Kryštofa.</p>\r\n\r\n<h5>Restaurace U Labutě</h5>\r\n<img src="/content/articles/memorials/18.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>V blízkosti restaurace U Labutě zemřel Josef Skřivan</p>\r\n\r\n<h5>Ulice V Pozámčí, podjezd pod žel. tratí</h5>\r\n<img src="/content/articles/memorials/19.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Deska připomínající jméno Bohumila Nováka je umístěna na betonových základech mostu, viditelná řidičům přijíždějícím od Jižní spojky</p>\r\n\r\n<h5>U Krčské Vodárny č.p. 946-948</h5>\r\n<img src="/content/articles/memorials/20.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Deska na zadní stěne spojeného bytového domu. Nese jména: František Kadlec, Václav Saska</p>\r\n\r\n<h5>U Krčské Vodárny 21</h5>\r\n<img src="/content/articles/memorials/21.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Na sloupu plotu vily v ulici U Krčské Vodárny, deska na památku Josefa Přibyla</p>\r\n\r\n<h5>Zelený Pruh 84</h5>\r\n<img src="/content/articles/memorials/22.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Na sloupu plotu jedné z vilek na hlavní ulici z Ryšánky na Zelený Pruh. Zde položilo svůj život hned 5 bojovníků za vlast.<br />Oběti: Ing. Miloslav Dvořák, Jaroslav Fencl, Josef Fiala a <i>dva neznámí</i></p>\r\n\r\n<h5>Ulice Vavřenova</h5>\r\n<img src="/content/articles/memorials/23.JPG" title="Válečné pomníky na území Krče" alt="Válečné pomníky na území Krče"  height="300" />\r\n<p>Do ulice přilehlá stěna bytového domu a památní deska Rudolfa Betelheima a Rudolfa Panýrka</p>', 0),
(5, 'ellrohir', 'Odkazy', '2013-03-16 19:30:00', 'Pivovary.info - Pivovar v Horní Krči', 'Odkaz na článek publikovaný na jiném webu, který vypráví o bývalém pivovaru v Horní Krči.', 'Právě před měsícem jsem zde <a href="http://www.krc-historie.cz/index.php?page=articles&aid=3">inzeroval</a> článek věnovaný turistické vycházce po zajímavých místech v Krči. Dnes předkládám podobný odkaz na zajímavé dílo z jiného webu.<br /><br />\r\n\r\nAutor <b>Jiří Pertlík</b> z webu <b>http://www.pivovary.info/</b> se <b>24. dubna 2009</b> zaměřil ve svém článku na historii bývalého pivovaru v Horní Krči. Areál stále stojí v ulici Vídeňská a pamatuje toho hodně. O tom všem Jiří Pertlík - <a href="http://www.pivovary.info/view.php?cisloclanku=2009040023">Parostrojní pivovar Horní Krč – Praha 4</a><br /><br />\r\n\r\n\r\n<i>- Alois Sečkár, Praha, 16. února 2013</i>', 23);
INSERT INTO `elrh_articles` (`id`, `author`, `cat`, `posted`, `name`, `dscr`, `content`, `gallery`) VALUES
(6, 'ellrohir', 'Paměti', '2013-03-17 11:02:25', 'Revolučním vojákem', 'Vzpomínky Aloise Papírníka a autentická výpověď jeho otce o událostech Pražského povstání', '<p><i>Probírám se tu soubory pamětí, které zvládl můj děda, JUDr. Alois Papírník, vytvořit a zapsat, aby se mohly i budoucí generace poučit, "jak to tehdy bylo". Popravdě jsem donedávna vlastně ani netušil, že něco takového existuje, natož v takovém rozsahu, jsou to skutečně desítky stránek, které člověk čte kolikrát s otevřenou pusou. Děda totiž měl zjevně dar vypravovat. Bohužel si sám pamatuju jen málo, pokud vůbec něco, z toho, co nám vyprávěl kdysi osobě na nesčetných vycházkách, na které mě a bratra brával, když jsme byli malí. </i></p>\r\n<p><i> Děda je už dlouho po smrti, zůstaly však jeho paměti, původně psané na starém psacím stroji, díky obětavosti jistých lidí jsou dnes z větší části převedeny i do podoby elektronické.  Rozhodně bych nechtěl tyto stránky proměnit v postupné přebírání a zveřejňování jeho textů. Ovšem čas od času narazím na pasáže, které za to prostě stojí. Věřím, že by děda sám nebyl proti, abych jeho texty podobným způsobem používal. Pokud se na mě tam odněkud dívá, doufám, že se nezlobí. Já si myslím, že by bylo škoda nepodělit se, když nám dnes moderní doba dává možnosti, jaké si asi děda představit nedokázal. Ani mě by to ostatně ještě pár let zpátky ani nenapadlo. Bylo by úžasné mít ho tu, aby se na stránkách Staré Krče podílel svými jedinečnými vzpomínkami osobně.  S životem se však vyjednávat nedá, a proto se musíme spokojit s jeho literárním odkazem.</i></p>\r\n<p><i>Abychom se dostali k samotnému dnešnímu článku. Je to kapitolu vybranou z díla „Takový byl táta“, které děda napsal už kdysi dávno, krátce poté co náhle a předčasně (v  57 letech) zemřel po krátké a těžké nemoci jeho otec, taktéž Alois Papírník. Děda se tehdy rozhodl „napsat monografii o ‘obyčejném’  člověku“. V úvodu se ptá: „Avšak,  cožpak byl táta z těch, kdož zapadnou beze stopy? Což opravdu zemřel  Hus, Žižka, Komenský? Vždyť jsou to živé postavy pro své dílo.“ A o svém otci dále říká: „Nebyl vědcem, ani dobyvatelem, ba nebyl dokonce ani tzv. úspěšným mužem - byl jen dobrým člověkem!“</i></p>\r\n<p><i>Mohlo by se zdát, že citace z biografie „obyčejného člověka“ mohou být sice svým způsobem zajímavé a pro potomky mít značnou citovou hodnotu, avšak z pohledu historie městské části Praha-Krč musí být nutně nevýznamné. To se však vzápětí ukáže býti nepravdou, protože když nic jiného, tak právě vybraná kapitola, popisující účast Aloise Papírníka staršího na pohnutých událostech revolučních dní počátku května 1945, odkrývá fascinující a veřejnosti neznámý příběh jednoho obyčejného člověka v neobyčejné době. Tisíce a tisíce podobných příběhů už byly zapomenuty, nebo dříve či později zapomenuty budou. Tento se nyní dostává do spárů internetu, kde si ho tato kolektivní paměť moderního lidstva bude pamatovat možná navěky.</i></p>\r\n<p><i>Uváděl jsem zde literární a vypravěčský talent mého dědy. V následujícím textu však prostor dostává také jeho tatínek. A to přímo tak, že jeho úředně potvrzená protokolární výpověď tvoří vlastně většinu obsahu. Děda pouze krátce uvádí a shrnuje otcovy vzpomínky. Pokud můžeme věřit slovům tohoto „obyčejného“ a dobrého člověka,  a já pevně věřím, že můžeme, neboť  právě na jejich základě se stal Alois Papírník starší nositelem Československého válečného kříže,  staly se v Krči v prvních dnech Pražského Povstání vskutku veliké věci. Nechť si každý čtenář udělá obrázek o tom, jak toto vyprávění zapadá do celkového kontextu dějin a co všechno se mohlo nebo nemohlo stát, kdyby se události těch dní vyvinuly jinak. Historie sice kdyby nezná, ale pro jednou si ten luxus dovolme.</i></p>\r\n<p><i>Promiňte mi prosím tento poněkud delší úvod k celé věci, teď už budou hovořit starší Aloisové.</i></p>\r\n<p><i>- Alois Sečkár v březnu 2013</i></p>\r\n\r\n<h3>Revolučním vojákem</h3>\r\n<p>Jak se to vlastně všechno seběhlo? Zde mám po ruce dokument nad  míru cenný a autentický, je to otcovo vlastní vylíčení své revoluční  činnosti, datované 1.června 1945 a úředně odsouhlasené a podepsané.  Ocituji tento doklad bez komentáře, neboť význam pozorný čtenář jistě  pochopí. Nuže drahý, zesnulý tatínku, pověz nám jak to bylo. Pozor,  prosím, to mluví nyní tatínek: </p>\r\n\r\n<img src="/content/articles/ap.jpg" title="Alois Papírník starší v hasičské uniformě" alt="Alois Papírník starší v hasičské uniformě" width="200" />\r\n\r\n<p>"Na výzvu nadřízených úřadů podávám zprávu o událostech při  pražském povstání v Krči krčském Pragovaru ze dne 6. a 8.května  1945. Uvádím pouze zhruba události, jichž jsem byl přímým účastníkem  a prosím, aby toto vylíčení nebylo posuzováno jako vyzdvihování  osobních zásluh, konstatuji pouze fakta, která mohou být uvedenými  osobami ověřena. </p>\r\n<p>Již měsíc před pražským povstáním byl jsem požádán bratry  z podzemního hnutí Havlíčkem a nynějším předsedou Národního výboru  v Krči Kozlerem o spolupráci a o přípravných pracích požární pobočky  krčské. </p>\r\n<p>Dle ujednání měli hasiči strhnout dřevěný železniční most,  odporážet topoly na křižovatce u nádraží, zabezpečit Pragovar  a podobné práce, jež budou nutné k zabezpečení Prahy. Znaje povahu  a mentalitu členstva krčské pobočky hasičského sboru zaručil jsem se,  že všechny svěřené a nutné úkoly pro osvobození Prahy budou vykonány. </p>\r\n<p>Zjevných příprav nebylo možno přirozeně konat, protože vedoucím  stanice byl ruský běženec Kosťa Lichopekin, velký germanofil a velký  obdivovatel nacistického zřízení. </p>\r\n<p>V očekávání blížících se rozhodných událostí nadešel konečně  signál k povstání strhováním německých nápisů, jež přešlo  k otevřenému povstání. Dne 5.května, před voláním pražského Rozhlasu  o pomoc, ušili jsme časně ráno vlajky československou a sovětskou pro  požární stanici. </p>\r\n<p>V poledne, po volání čs.rozhlasu o pomoc, dala se ihned požární  pobočka v Krči do revolučních služeb. Z vozů na stanici udělány  závory přes silnici a odzbrojováni Němci, jedoucí z Prahy směrem na  Benešov. Než zavěsil jsem vlajky na cvičnou věž (asi 25 m vysoká),  odzbrojili kolegové holýma rukama šest vojínů, jednoho majora,  jednoho nadporučíka letectva a pak další a další, též i civilní Němce  a nakonec stanici s raněnými. </p>\r\n<p>Jelikož nebylo možno raněným ve voze nijak pomoci a kteří byli  při tom ohrožování veřejností, bylo rozhodnuto, dopraviti je do  lazaretu Masarykových domovů v Krči".</p>\r\n<p>Nemohu si odpustit poznámku: Kolik "hrdinů" přišlo tu o krásnou  možnost udatně bezmocným Němcům zakroutit krkem, co? A nebylo jich  málo! Než tatínek vypráví dál a my posloucháme: </p>\r\n<p>"S vědomím vedoucího cvičitele Háši ujal jsem se vedení vozu. Při  sjíždění z vrchu zvaného "Endršťák voláno na mne před vilou vrchního  zdravot.rady Pazderníka a jeho paní, abych nejel dále, že s Pragovaru  Němci střílí. Nedbal jsem toho, poněvadž jsem vše považoval za ženský  strach a jel dále. Ale u Pragovaru byl by mne málem vyhodil ručním  granátem do povětří V.Boček z Horní Krče, který, když viděl ujížděti  německou ochrannou stanici (dle barvy), předpokládal, že to ujíždějí  Němci a chtěl vše likvidovat ručním granátem. V poslední chvíli ale  vzkřikl jsem na něho a on, poznav mne, volal mne dolů, abych dále  nejel, že z Pragovaru Němci střílí. Do mne však v první chvíli  nestříleli, poněvadž nevěděli, nejsem-li jeden z nich. </p>\r\n<p>Když jsem však vylezl z vozu, střelili po mně a zasáhli mě do  pravého boku (Streichschuss). Kule narazila na kost kyčelní a vyrvala  kus masa, načež vylétla ven. (Dle sdělení p. Dr.Bulíře a německého  lékaře v M.D. stačil jeden centimetr a byl z toho pohřeb. </p>\r\n<p>Odebral jsem se do domu u Karla IV. a tam jsem ošetřoval raněnou  starší ženu Marii Vítkovou, která utrpěla průstřel nohy. Sám jsem se  nemohl obvazovat, až teprve když přijel vůz naší požární stanice  v Krči, který pod ochranou Červeného kříže vozil raněné do  Masarykových domovů. Ti vzali mne s sebou a v M.D. dostalo se mi  první pomoci a injekce proti tetanu. </p>\r\n<p>Na zpáteční cestě zastavil nás Josef Saidl s prosbou, abychom se  ujali střeleného u nádraží, který prý tam volá o pomoc. I toho přes  překážky jsme odvezli zpět do Masarykových domovů. Na zpáteční cestě  jsme vzali s sebou německého lékaře, aby pomohl u Pragovaru německému  personálu Červeného kříže, který tam byl poslán na příkaz šéflékaře.  Nad Pragovarem nás barikádníci zastavili, abychom vzali do Prahy  další raněné. Naložili jsme Šimona Šupitu a V.Růžičku. </p>\r\n<p>Mezitím tázal se mne major Fábera, zdali nejsou u nás nějací  důstojníci, že jich nutně potřebuje k vyjednávání s SS-manny, kteří  s ním, ježto je v civilu, nechtěli jednat. Slíbil jsem, že je  opatřím. U pobočky jsem vyskočil a našel jsem na naší stanici  poručíka vládního vojska a lékaře nadporučíka MUDr. Raymanna, kteří,  byvše mnou vyrozuměni, ihned se dali pro vyjednávání k dispozici. </p>\r\n<p>Kolega Zálužanský připravil svůj osobní vůz a odvezl nás  s mezitím zhotovenou bílou vlajkou k majoru Fáberovi, který nás  informoval a žádal o spolupráci, ježto předání Pragovaru do našich  rukou by značně celou revoluční akci Prahy posílilo. </p>\r\n<p>Pak jsme se odebrali, rozšířeni o dva členy (t.j. magistrátní  okresní Müller a německý lékař) k rozhraní, kde máváním bílou vlajkou  dával jsem střílejícím Němcům znamení k zastavení palby. Jedna  z německých sester Červeného kříže utíkala k střelci a žádala jej  o vyslání důstojníka. Za dvě až tři minuty přišel asi dvaadvacetiletý  důstojník s pozdravem "Heil Hitler" a tázal se, jaké máme přání. </p>\r\n<p>Při seznání příčiny ihned prohlásil, že nás uvede k veliteli  SS-majorovi. Při vstupu do hlavní brány jsme slyšeli poznámky  "tschechische Luze nieder mit" a podobné lichotky. V zápětí - nevím  zda na příkaz či jak - postavili se za nás tři muži s rychlopalnými  automatickými pistolemi, kteří nás doprovázeli až do pokoje  důstojníků v I.poschodí zámečku, kde se nyní nachází místnost  velitele Čs.R.G. majora Fábery. Celou cestu řvali na nás a spílali  nám, takže jsme očekávali každou chvíli, kdy nás skolí, až na rozkaz  provázejícího nás důstojníka, který poukázal na bílou vlajku, ustali. </p>\r\n<p>V místnosti důstojníků se právě odbýval "předsmrtný" banket.  Stoly plné jídla, vína a likérů. Nacházelo se tam asi pět důstojníků  SS se ženami v náladě - mezi nimi i mně z Pragovaru známý (byl jsem  tam služebně kasárnován u P.O.) Obersturmbannführer Edelhof. Po  služebním hlášení našeho vedoucího se jakž takž vzpamatovali a po  představení žádali o chvíli strpení, že se poradí. </p>\r\n<p>Major vedoucí, druhý major a mně známý Edelhof, jenž mi hned při  představení řekl "s,Löschmeister, Sie auch?" Odpověděl jsem: "Ja,  Herr Obersturmbannführer, das ist meine Pflicht". Pohleděl na mne  a řekl: "Bravo!" načež jsme usedli a začalo jednání. Major dal rozkaz  palbu zastavit, což bylo okamžitě provedeno. </p>\r\n<p>Sjednáno, že SS-mani opustí Pragovar do 18.hodiny , předají jej  policejní stráži o síle 155 až 20 mužů, když jim bude dovolen odjezd  asu 40 mužů s poboční zbraní; pistolí a ručním granátem. Pokud na to  nepřistoupíme, že jim pak bude vše lhostejno, protože nebojují proti  vojsku a že skladiště, ve kterém jest za dvacet milionů zlatých marek  zboží, vyhodí to do povětří nebo zapálí. Dále žádali od nás doprovod  jedním otevřeným vozem, aby po nich nebylo z naší strany stříleno.  Při dotaz, kam chtějí jeti, řekl major: "Ganz egal".</p>\r\n<p>Do Prahy jsme je nechtěli pustit, nabídli jsme jim tedy směr  Benešov, což přijali a žádala doprovod asi 20 km od Krče. Nabídl jsem  jim požární vůz, který označíme Červeným křížem a že s nimi pojedu  s bílou vlajkou, s čímž souhlasili. </p>\r\n<p>Vtom začala střelba na Pragovar od lékárny, kde asi nevěděli, že  dole jednáme o kapitulaci. Střelba byla v zápětí opětovaná Němci.  Jaké byly naše pocity, když na nás začal řvát: "No, schauen Sie, was  macht die tschechische Luze! Na, sagen sie jetzt"!</p>\r\n<p>Náš poručík mu ostře odpověděl, ale on zas se ho otázal, jakou má  šarži. A když tento odpověděl, že je poručík, pravil: "No a jsem  major a když na to přijde, musí k vyjednávání šarže jako já nebo  vyšší". Ke mně pak, jelikož jsem byl "Fahnenträger" jak mi řekl  - otočil se a hnal mne k oknům po budově v doprovodu dvou  s pistolemi, abych se postupně ukazoval v oknech, mával praporem  a volal "zastavit palbu". Jaký to byl pocit, když kulky hvízdaly do  oken, můžete si představit. </p>\r\n<p>Plížil jsem se opatrně k oknům snaže se vystrčit nejdříve vlajku,  ale na řvaní "auf, auf" musel jsem se vztyčit. Tak tomu bylo v celém  1.patře a na půdě u vikýřů. Po zastavení palby se věc urovnala  a jednání jsme opouštěli. Venku teprve jsme si všichni oddechli. Mít  na sebe namířené pistole a být v jejich moci nebylo, jak později  události jinde dosvědčily - nic příjemného. </p>\r\n<p>Po sdělení podmínek kapitulace majorovi Fáberovi nařídil mi  tento, abych ihned odejel do Braníka s hlášením o vyslání policejní  čety k převzetí a zabezpečení Pragovaru. Já a kolega Zálužanský jako  řidič odjeli jsme na bránické komisařství. Při hledání vedoucího  důstojníka bylo nám řečeno, že se nachází ve vedlejší místnosti.  Dotazem ukázán nám major, jehož jméno neznám a na můj dotaz, zda on  je vedoucím, přisvědčil. Učinil jsem mu pak toto služební hlášení:  "Pane majore, z příkazu majora Fábery z Krče žádám o vyslání čety  policistů v síle asi 30 mužů k převzetí a zabezpečení Pragovaru,  ježto podmínky SS opustí a předají Pragovar do 18. hodin".</p>\r\n<p>Vedle však stojící nadporučík (jízdy, tak se aspoň domnívám),  jaksi podotkl: "To je nám známo!" Odvětil jsem, že nemůže znáti  podmínky, kterým jsem byl svědkem asi před osmi až deseti minutami,  že jedeme po hasičsku a ať nám cesta z Krče trvala 3 minuty od  hlášení se u majora Fábery. Pan nadporučík si asi myslel své  a hlásil: "Pane majore, hlásím odjezd do Krče", aniž vyčkal příkazů  svého nadřízeného a odešel. </p>\r\n<p>Upozornil jsem pana majora na následky, jaké mohou vzniknout,  nebude-li vše předáno podle ujednání. Jelikož neměl pro nás dalších  rozkazů spokojiv se snad s četou, která odjela aniž byla informována,  odešel jsem. Venku se mi rozčílením a bolestí v boku udělalo nevolno  a kolega Zálužanský vzal mne do bytu (bydlí v Bráníku), kde jsem se  po hodině až hodině a půl zotavil tak, že jsme mohli jeti zpět. Chtěl  jsem, aby mě zavezl domů, ale jelikož byla v cestě barikáda, šel jsem  pěšky, zatím co on jel na požární stanici. </p>\r\n<p>Co se dělo v Krči Pragovaru nevím. Druhý den t.j. v neděli ráno  šel jsem v 5.00 hodin na naší požární stanici, přelézaje barikády až  ke konečné stanici č.13, kde trhali dlažbu a stavěli další barikády.  Tázal jsem se, zda cesta k nám je volná, odvětili, že ano. Již však  u biografu jsem byl odstřelován z měšťanské školy, dal jsem se tedy  podle vil k policejnímu revíru 55. Cestou, nevím odkud, bylo po mně  z vily opět stříleno. Na policejní stanici přítomný poručík Svoboda  konal službu v civilu. Tázal jsem se ho, zdali je možno dostat se  k našim; odpověděl mi, že dle sdělení je naše pobočka od noci  obsazena Němci, kteří tam zřídili štáb a naši prý museli do 90 minut  opustit stanici. Šel bych prý si pro smrt nebo zajetí. Zůstal jsem  tedy s ním až do dvanácti hodin a sháněli jsme informace o bojích,  jakož i o synovi, o kterém jsem nevěděl. Ten zatím zabráním Janečkovy  zbrojovky dostal se různými cestami na pobočku, kde se chtěl se mnou  sejít. Zůstal tam přes noc a teprve v neděli ráno bylo mu dovoleno  odejíti. Setkali jsme se doma. </p>\r\n<p>Únavou jsem usnul tak jak jsem byl, na pohovce. V zápětí přišli  pouze k nám dva SS-mani a dotazovali se, kdo jsem a mám-li zbraně. Po  sdělení, že jsem hasič, odešli, ale nesměl jsem se vzdálit. </p>\r\n<p>Pak začaly ony nekonečné hodiny beze zpráv, bez rádia, bez  světla. Stříleli do oken, běsnili a když jsme si chtěli vzíti na  starost evakuované z Pankráce a Horní Krče, nebylo mi dovoleno. </p>\r\n<p>Když se mi podařilo 8.května se dostat k lékaři, aby mi vyčistili  bolestivou část a hnis, byl bych býval zastřelen, kdyby byli věděli,  že jsem chtěl ošetření pro sebe. Oklamal jsem je a řekl jsem, že je  to pro mou ženu. Ve středu ráno pak asi v půl šesté dostal jsem se do  Pragovaru a týž den jsem konal službu na krčském nádraží. </p>\r\n<p>Pak se svolením svého úřadu jsem byl jako člen Národního výboru  v Krči od služby v požární odbočce osvobozen, až do skončení prací  místního Národního výboru v Krči".   ----------</p>\r\n<p>Potud táta. </p>\r\n<p>Chci dodržet své předsevzetí a nekomentovat ty události, které přece  hovoří řečí až příliš jasnou. Podotknu jenom, že to vše vykonal muž  s bolestivým zraněním a ve starostech o můj osud, o němž nic nevěděl  a jen se domýšlel. Samozřejmě, že ze svého zranění žádnou rentu či  bolestné nevytloukal. </p>\r\n<p>Je nasnadě, že kdyby bránická policie vyhověla otcovu požadavku,  vyvíjela by se bojová situace podstatně jinak. SS by byli bývali  odtáhli a revolučním bojovníkům by byl otevřen takřka nevyčerpatelný  arzenál nejrůznějších zbraní, jak tam byl po revoluci ostatně  nalezen. To znamenalo vyzbrojit kolik set lidí a hájit jižní část  Prahy na linii železnice Braník - Michle. Krč by to byla patrně  odnesla, ale dál by se nedostali. Ve skutečnosti hnal se pan poručík  se svými jízdními policajty na Pragovar šturmem, mávaje šavličkou,  patrně jak byl zvyklý rozhánět za první republiky demonstranty, neboť  co by poslouchal "hloupého" hasiče. Samozřejmě, že byli krvavě  odraženi když potom se pokoušeli přece jen použít otcova plánu,  odmítli je SS s poukazem na tlupy maršála Schörnera, které se blížili  od Benešova ku Praze. Dříve totiž o tom nevěděli a hleděli zachránit  kůži; nyní už toho nebylo třeba. </p>\r\n<p> Čtenář snad myslí, že povedený poručík a bránický major byli  potom postaveni před válečný soud a zastřeleni buď pro vyloženou  zradu na pražském povstání nebo pro hrubou nedbalost, jež stála zkázu  Pankráce a stovek lidí? Ale kdež! "Vyšší zájmy" rozhodly jinak.  Dokonce jsme se dočetli v novinách, jak udatná branická policie ujela  před Němci na druhou stranu Vltavy i s koňmi. To je, co? </p>\r\n\r\n<p> Nicméně nerozhodovaly jenom čachry a byli ještě lidé, a to na  vysokých místech, kteří ocenili otcovo hrdinství i strategický plán  i když tento, nebyl bohužel použit nikoliv jeho vinou.</p>\r\n\r\n<img src="/content/articles/kriz.jpg" title="Československý válečný kříž 1939" alt="Československý válečný kříž 1939" width="200" />\r\n\r\n<p>Tak se stalo, že otec dostal postupně tato vysoká vyznamenání: </p>\r\n\r\n<p><i>1. Pochvalné uznání IV. stupně ze dne 25.května 1945, udělené  Vojenským velitelstvím Velké Prahy "Bartoš", podepsán generál  Kutlvašr. </i></p>\r\n<p><i>2. Československý válečný kříž 1939 ze dne 5.května 1946, udělený  presidentem republiky Československé republiky podepsán generál  Svoboda. </i></p>\r\n<p><i>3. Osvědčení ministerstva národní obrany ze dne 19.května 1948, že  je otec účastníkem národního boje za osvobození podle § 8 zákona č.255/1946 Sb. </i></p>\r\n<p><i>4. Pamětní odznak druhého národního odboje ze dne 9. května 1951,  udělený ministrem vnitra, podepsán min.Nosek. Byl otci odevzdán primátorem Vackem dne 12.května 1952. </i></p>\r\n<p>Nic by nebylo otcovu duchu tak cizí, jako snad nějaké vynášení  těmito oficiálně uznávanými zásluhami. Tato vyznamenání ležela celou  dobu v šuplíku a pamatuji se, že jen na některých šatech nosíval otec  úzkou stužku válečného kříže. Jednal prostě tak, jak by jednal nebo  jak by měl jednat každý Čech ve stejné situaci, bez rozdílu svého  politického přesvědčení. </p>\r\n<p> Našli se ovšem lidé, kteří, když ze sebe oprášili mour, o nějž se  umazali, jak byli zalezlí celou revoluci ve sklepě, se po straně  ptali, jakou protekcí to otec dostal a co vlastně dělal, zvláště když  po roce 1948 nebyl ani nikde politicky organizován. Pádnou odpovědí  jsou doklady 3 a 4, předané otci již lidově demokratickým režimem. </p>', 0),
(7, 'ellrohir', 'Paměti', '2013-03-18 18:21:30', 'O Krčských urbanistických plánech', 'Alois Papírník hovoří o smělých stavebních plánech v Krči z počátku 20. století', '<i>Je tu další díl ze seriálu "úryvky z pamětí JUDr. Aloise Papírníka". Po kratším textu <a href="index.php?page=articles&aid=1" title="Článek ''O Krči''">o Krči obecně</a> a po vyprávění dědova otce <a href="index.php?page=articles&aid=6" title="Článek ''Revolučním vojákem''">o Pražském povstání</a> jsem nyní vybral jakousi esej na téma smělých plánů, které byly s Krčí krátce po začátku 20. století. Je to součást delšího textu zaměřeného více zeširoka na Krčský místopis a v původní verzi byly různé odbočky, které tříštily hlavní proud myšlenek, proto jsem si dovolil text na některých místech upravit, zejména smazáním některých pasáží. Snad ku prospěchu celé věci.\r\n<br /><br />\r\n- Alois Sečkár v březnu 2013</i>\r\n\r\n\r\n<p>V té době <i>[cca 1910, pozn. AS]</i> se Krč stále ještě rozmýšlí zda se stát průmyslovým satelitem hlavního města nebo jeho rekreační oblastí. Zbytky starých zemědělských osad se začínají ztrácet v aglomeraci nového typu osídlení protkaného zatím ještě značnými plochami zeleně. A i když se v údolí zakládají a rozvíjejí některé menší podniky, výroba cementových cihel a dlaždic a pivovary, přiklání se volba zatím ke klidové zóně předměstkého trvalého i sezónního bydlení a rekreaci. Snad s ohledem na přitažlivost Kunratického lesa a menších hájů na severním svahu dosud sahajících až k dnešnímu sídlišti Novodvorská.</p>\r\n\r\n<p>Charakter rekreační oblasti a zdravého prostředí potvrdila i výstavba vily a pavilonů ´´ Radost´´ a ´´Rozkoš´´ v roce 1893 na úpatí stejnomeného lesa, které souvisely se vznikem lázní Emila Pavikovského. Celý soubor převzal dr. Šimsa, který jej po svém návratu z Jugoslávie odkoupil spolu s dalšími pozemky Tomáše E. Welze a na okraji lesíka v Dolní Krči doslova ´´ V podlesí´´ (dnešní název) zřídil sanatorium pro nervově choré. Novou hlavní budovu projektoval v roce 1910 architekt Bohumil Černý z Prahy II.</p> \r\n\r\n<p>Současně se Šimsový sanatoriem zrodil i další projekt, využívající blahodárného působení malebné, téměř panensé krajiny Krčského údolí v porovnaní s rodící se nedalekým průmyslovým velkoměstem s potůčkem, loukami, lesy a stromořadími podél cest. Statistika zde konstatuje pouze tříprocentní zástavbu.</p>\r\n\r\n<p><i>´´Blíž k přírodě! stalo se heslem moderní doby a moderního člověka městského. A přirozeno, neboť právě ve velkoměstech sociální poměry, těžší životní podmínky a stupňové životní nároky nutí každého, aby napnul své nejlepší síly, duševní i tělesné, k uhájení své a své rodiny existence. Ký div, že toto nepřirozené přepínání sil nezbytně vyvolati musí reakci – touhu po klidu a odpočinku a že tělesně vysílen, nervově rozrušen hledá měšťák místo, kde by nalezl celkového uklidnění. Odtud ta touha po lázních, letních bytech, odtut pak v poslední době utěšeně se vzmáhající touha po vlastním, útulném rodinném domku, stuleném v zeleni a květu vlastní zahrádky. A této touze se nelze diviti; vždyť většina úředníků jest nucena dobrou polovinu svého života stráviti v dusných, zaprášených, mnohdy ani nejprimitivnějším zásadám zdravotním nevyhovujících kancelářích. Zda může úředník neb obchodník, duševní prácí znaven, najíti potřebného klidu a osvěžení v dnešních činžovních kasárnách, plných hluku, křiku i nepříjemných, celým domem pronikajících zvuků pian, fonografů atd? A zda může potřěbné úlevy svým napjatým nervům zjednati procházkou po hlučných, zaprášených ulicích – Sotva.</i></b>\r\n\r\n<p>Tak uvádí svou publikaci presentující plán na vybudování ideálního zahradního města v Krčí a v Bráníku na Velikonoce 1911 Tomáš Welz, majitel velkostatku v Dolní Krči.</p>\r\n\r\n<p>Brožura vzbudila ohlas i v odborném tisku. Časopis ´´Architektonický obzor´´ v květnu 1911 vítá tuto iniciativu a odvolává se na příklady přečetných měst anglických, německých a francouzských. Přiklání se k názoru anglického sociologa Ebebezera Hawarda, který zpracoval svou teorii o decentralizaci městského osídlení ve své knize ´´Zahradní města zítřka´´, vydané již roku 1898. kniha vyvolala mezinárodní hnutí, které se stavělo proti zahušťování zástavby v centrech měst v souvislosti s živelným rozvojem průmyslu. Cílem bylo zlepšení hygienických podmínek a životního prostředí. Zdůrazňovala se symbióza bydlení s přírodou, ale také úloha umění v životě člověka, dobrá řemeslná práce, dokonalý detail, intimní prostředí, lidské měřítko staveb i jimi tvořených prostorů, doplněných konfigurací terénu s malebnými skupinami rostlin a stromů.</p>\r\n\r\n<p>Nešlo však o pouhé odstěhování se na venkov a rouseaovský návrat k přírodě. Jednalo se o vytvoření ideálu ´´krásného zdravého bydlení´´, bydlení pro městského člověka, který je vázán společensky,zaměstnáním i možnostmi nákupu na jádro města. Chce bydlet mimo průmyslové exhalace a ruch, a při tom v blízkém a přímém spojení, zprostředkovaném dostupnými dopravními prostředky. Haward vytvořil prototyp, ideál. Navrhl parcelaci volných pozemků systému soustředných kruhů, prolnutých radiálami komunikací, kterou však bylo třeba upravit pro specifické podmínky zvolené lokality. Uprostřed soustředil soubor veřejných budou. Předpokládal výstavbu radnice, divadla, koncertní síně, knihovny, muzea, obrazárny a nemocnice. To vše obklopovala zeleň ústředního parku lemovaná zasklenou krytou promenádou s řadou obchodů. Obytné okrsky tvořily segmenty umístěné v mezikruží komunikací. Na vnějším obvodu za izolačním pásem stromů umístil Haward výrobní podniky a služby. Zázemí dotvářely ještě zemědělské závody a sady s dětskými domový, ozdravovnami, léčebnami a školami v přírodě.</p> \r\n\r\n<p>Charakteristickými rysy koncepce byly nízká vilová zástavba, bohatší soukromé i veřejné zeleně, přímý styk s volnou krajinou a návaznost na rekreační možnosti. Takto uspořádané jednotky o maximálním počtu obyvatel 32 000 měly obklopit původní centrum velkoměsta systém satelitů.</p>\r\n\r\n<p>Ačkoliv se ideální záměr neujal a neovlivnil podstatně charakter budoucího urbanismu, myšlenka budovat zahradní města jako určitý svébytný okrsek vilové zástavby, nový městský útvar uprostřed zeleně na geometrické parcelaci, nezanikl. Po klasických příkladech londýnských satelitů Letschworth (1903) a Hamstead (1906) se objevují další realizace, i když méně rozsáhlé a ne zcela dotažené a dokončené v dalších evropských zemích.</p>\r\n\r\n<p>Jedno z prvních, ne-li vůbec první pražské zahradní město mělo být realizováno pravé v Dolní Krči na levém břehu Kunratického potoka u Krčského nádraží a Společenské zahrady, nazvané pracovně ´´B´´. V menším měřítku, leč doslova opisuje Howardovu ideální představu, systém soustředných kružnic, jejíž růst omezovala na východní straně od Prahy na Vídeň, potok a Kunratický les, ze severu těleso železniční trati Bráník – Krč – Vršovice, ze západu pozemek Šimsova sanatoria, které svou polohou s posláním vhodně doplňovalo koncepci zahradního města, stejně jako na něj navazující les oddělující Krčské údolí od plání ke Lhotce, Novému dvoru a Libuši.</p>\r\n \r\n<p>Přes všechny osvětové snahy <i>[např. zřízení Lesního divadla, které děda na tomto místě rozvíjí, pozn. AS]</i> však zůstávala vilová kolonie torzem. Stejně jako další plánovaná zahradní města, která měla vzniknout jednak nad Dolní Krčí \r\nna protějším svahu než předchozí kruhové se Šimsovým sanatoriem a lesním divadlem (město ´´C´´) a potom ještě jedno níže v údolí, blíž směrem k Vltavě na katastrálním \r\núzemí Bráníka (město ´´A´´).</p>\r\n\r\n<p>Nevýhodou Krčských lokalit bylo špatné dopravní spojení s centrem.</p> \r\n\r\n<p><i>´´Dlouhé období komunikačního interregua umrtvuje všechnu radost v novém bydlišti, neboť zaviňuje mnohé nepříjemnosti a strádání, jemuž nepřivyká každý velkoměšťan. Dostati se z domu i domů v nejisté době, po blátivých neupravených cestách, za tmy i osobní nejistoty, oslabí jistě potěšení ze zahrádky vlastního domu. Další obtíže vznikají z nedostatečného spojení s městem, když hlava rodiny nemůže používati rychlé komunikace k vykonávání úředních svých povinností ve vzdálených úřadech a děti k návštěvě školy. Podobné nesnáze se dostávají při nákupu, není-li na blízku vhodného tržiště, kde lze levně a pohodlně zásoby doplňovati.´´ [zdroj citace neuveden, pozn. AS]</i></p>\r\n\r\n<p>Proto bylo důležité zajistit určitou samostatnost obce v duchu Hawardových předloh, to znamená vybudovat centrum se školou, tržištěm, společenskou budovou a veřejným sadem. Dále pak provést příslušné úpravy cest a stabilizovat komunikační spojení s centrem Prahy, jakoš i vyřešit napojení inženýrských sítí na zdroje vody a elektřiny atd. nabídkový prospekt Welzův navíc sliboval, že elektrická dráha přes Pankrác do Krče nedá na sebe dlouho čekat.</p>\r\n\r\n<p>Po základním rozměření území měly být založeny 12 – 16 m  široké štěrkové silnice, budoucí ulice osazené stromy, pod nimiž by vedl tlakový vodovod s filtrovanou říční vodou. Parcely o ploše 800 metru čtverečních měly poskytovat dost místa pro vlastní vilku, jejíž typový projekt vypracoval architekt Bohumil Černý, a založení zahrádky. Rodinný domek s třemi pokoji, kuchyní, koupelnou a příslušenstvím měl stát 10 000 K. 1 500 se skládalo na počátku a pak se splácelo 750 K ročně.</p>\r\n\r\n<p>Záměr chtěl docílit zrušení dvojího bydlení, trvalého uvnitř velkoměstského ruchu a rekreačního na venkově. Nabízel čistý vzduch, relaxaci při práci na zahrádce a procházkách v přírodě a mravní vliv prostředí na výchovu dětí. Pohotově reagující ´´Architektonický obzor´´ z roku 1911 se však dívá kriticky na regulační plán a domnívá se, že by se dispozice mohla řešit účelněji a zdárněji. Vytýká kruhovému zahradnímu městu uměle vykonstruované řešení. Ideální plán se mu zdá bez návaznosti na centrum Prahy i historické Krče a ironicky dodává:</p>\r\n \r\n<p><i>´´Autor chtěl ukázati, že četl v odborné literatuře´´.</i></p>\r\n\r\n<p>Na omluvu Welzovi můžeme říci, že tuto kritiku sklidili i předchozí ideální koncepce zahradních měst. A právě z poučení z jejich nedostatků se vzcházelo při dalším zpracování urbanistických prognóz. Kromě toho se později prokázaly některé tehdy ještě netušené kvality. Osvědčila se velikost parcely a výška zástavby, s tím, že se upozorňovalo na nebezpečí zastínění vzrostlými stromy a tedy obezřetnou výsadbu.</p>\r\n	\r\n<p>Přes všechna ´´pro a proti´´ nezůstal projekt zahradního města v Krči na papíře. Parcelace byla provedena a její stopy lze dodnes vysledovat v půdorysu součastné zástavby. Zahradní město ´´C´´ na úbočí Pankrácké stráně se dodnes odráží v řešení bloků ohraničených ulicemi Olbrachtova, Na strži, Krčská a Antala Staška a pak dolů od Staškovy ulice lemovaných Krčskou, U krčské vodárny a Pecharovou.</p>\r\n	\r\n<p>Nejzajímavějším dokladem rozvoje obce tohoto období asi zůstanou tři segmenty kruhové kompozice sousedící s volným, dnes už sbíhající se k ulici ´´U kola´´, pozůstatku to ústředního kruhového motivu. Jedna z radiál dodnes stuje ´´Paprsková´´. Nejen tvar pozemků, ale vily na nich stojící (ač žádná patrně nebyla realizovaná podle nabídkového projektu arch. Černého), dokládají, že se zde v roce 1911 skutečně začalo stavět. Plocha se nepokryla důsledně kobercovým zastavěním, jak se předpokládalo. Přesto lze konstatovat, že zde byl v převážné míře použit charakteristický typ rodinného domku, jak hmotově a provozně, tak výtvarným pojetím dekoru odpovídající produkci počátku století, typ secesní vily. Jistě se najdou mezi nimi jedinci vybočující z průměrné řady, vcelku však je třeba hodnotit především úlohu kolonie jako možného městotvorného prvku, který se nechtěl spokojit jenom s pouhým řešením funkce bydlení. I když průmysl a pracovní příležitost ponechával v rozporu s Hawardovým záměrem stranou a spoléhal na nedalekou Michli a vlastní Prahu.</p>\r\n\r\n<p>Blahodárný účinek venkova a přírody pak ale využíval plně. Kromě Šimsova sanatoria zde byla plánována výstavba několika léčebných a výchovných ústavů. Na blíže zatím neurčitelném pozemku v Dolní Krči (podle vrstevnic na situaci pravděpodobně pod zámkem na dolním toku potoka na svažitém pozemku ohraničeném jeho břehem a okresní silnicí) měl stát ´´Sirotčinec a vychovatelna okresu vinohradského a žižkovského´´. Tři vítězné návrhy soutěže architektů prof. Viktorina Šulce, Karla Roštíka a Bohumila Slámy byly publikovány v Architektonickém obzoru v březnu 1916. Koncepci čtyř budou obsahujících administrativu, tělocvičnu, jídelnu s kuchyní, kotelnu ústředního topení, byty personálu a kanceláře, vlastní ústavní objekty a domek vrátného, doplňovalo velké hřiště a zelinářská a ovocnářská zahrada.</p>\r\n\r\n<p>Všechny tři návrhy vycházejí z obdobného pojetí doznívající secesní architektury, nebo spíš geometrické moderny. Kompozice hmoty u Šulce ještě vzdáleně připomínající barokní dynamiku různými výškovými úrovněmi, půdorysným členěním, tvary střech a ornamentálními mandorlami v parapetech oken, mizejí postupně u Roštíka a u Slámy se ustalují na střízlivém klasicizujícím uspořádání se strohým vysokým řádem pilastrů na rizalitech a jednoduchým rastrem oken na plochých průčelích.</p>\r\n\r\n<p>Rozsáhlý projekt, který by svým objemem změníl zcela měřítko a malebný ráz Krčského údolí, nebyl však, pravděpodobně z ekonomických důvodů, realizován. <i>[Zde dědův text odbíhá k výstavbě Masarykových domovů a poté se vrací už do další dekády, proto tu článek ukončuji, pozn. AS]</i></p>', 0),
(8, 'ellrohir', 'Historie', '2013-09-02 11:15:00', 'Tužme se! – V Krči už 120 let', 'Stručný pohled do historie krčského Sokola', '<p>V lednu uplynulo 120 let od památného dne, kdy se v <a href="http://www.krc-historie.cz/index.php?page=gallery&gid=7">restauraci U Labutě</a> sešli rodáci z Horní a Dolní Krče rozhodnutí založit místní sokolskou jednotu. Dalších 31 let předtím založili Miroslav Tyrš s Jindřichem Fügnerem svou Tělocvičnou jednotu pražskou, na kterou nyní chtěli místní navázat. Založení bylo přítomno 22 osob.</p>\r\n\r\n<p style="text-align: center;"><img src="http://www.krc-historie.cz/gallery/1356773472.jpg" width="300" title="Krčská Sokolovna dnes" alt="Sokolovna" /></p>\r\n\r\n<p>Zpočátku chyběly vlastní prostory pro cvičení, která tak probíhala porůznu v hostincích, v parku <a href="http://www.krc-historie.cz/index.php?page=gallery&gid=10">Krčského zámku</a> či na dvoře místních ledáren. Krom vlastního cvičení organizoval Sokol Krč také různé výlety a společenské akce. Sportovní náčiní se kupovalo z výtěžků těchto akcí a dobrovolných sbírek. V roce 1899 byl ustanoven dámský cvičební oddíl, což bylo na tehdejší dobu do značné míry pokrokovým činem.</p>\r\n\r\n<p>V meziválečném období byla krčská sokolská jednota provozovatelem monumentálního Lesního divadla v Krči, vedle toho měla vlastní kapelu, kvalitní a ceněný soubor loutkového divadla a promítala filmy v biografu Edison, které bývalo v prostorách restaurace „Na krásné vyhlídce“ na rohu dnešních ulic Antala Staška a Krčská. Vedle toho samozřejmě v rámci jednoty fungovala řada kulturních a sportovních oddílů.</p>\r\n\r\n\r\n<p style="text-align: center;"><img src="http://www.krc-historie.cz/gallery/1309694658.jpg" height="350" title="Odznak k příležitosti slavnostního otevření nové Sokolovny" alt="Odznak" /></p>\r\n\r\n<p>28. října 1934 byla slavnostně otevřena <a href="http://www.krc-historie.cz/index.php?page=gallery&gid=9">budova tělocvičny</a>, která stojí dodnes v krátké uličce „Za Obecním úřadem“, když jako jedna z mála budov v Krčském údolí přečkala stavbu Jižní spojky koncem 70. let. 200 tisíc korun na její stavbu bylo po dlouhém úsilí místních shromážděno na jaře, základní kámen byl položen v červnu. Členové Sokola objekt postavili svépomocí v neuvěřitelném čase. Původní Sokolovna byla menší, než jak ji můžeme vidět dnes – přísálí, kde se dříve hrálo loutkové divadlo a dnes slouží k různým sportovním aktivitám vedle velké tělocvičny v hlavní budově, bylo přistavěno později.</p>\r\n\r\n<p>2. světová válka a německá okupace činnost krčského Sokola ochromila. V tělocvičně se na místo cvičenců shromaždoval majetek zabavený místním židovským občanům. Sportovní náčiní však válečná léta víceméně přestálo a poměrně rychle došlo k obnovení činnosti, i když už zdaleka ne v takovém rozsahu jako za 1. republiky. V roce 1948 sportovní aktivity Sokola opět zasáhla politika - po únorovém převratu byla řada členů vyloučena. Oficiálně však oddíl zůstal sokolskou jednotou (pro potřeby ČSTV „venkovskou“), nedočkal se reorganizace do podoby některé ze socialistických sportovních organizací, protože v okolí se nenacházel žádný větší podnik, jehož sportovním oddílem by se mohl stát.</p>\r\n\r\n<p>Od tradičního cvičení na nářadích se sportovní činnost přesunula spíše ke sportům. TJ Sokol Praha Krč míval kvalitní družstvo stolního tenisu, úspěšný lyžařský a ski-bobistický tým a volejbalisty a volejbalistky prvoligové úrovně. Od roku 1961 se každoročně pořádá volejbalový Memoriál Jana Motyčky. „Turistický oddíl mládeže“ pak poskytoval jakousi náhradu oficiálně zakázaným (politicky nespolehlivým) skautům. A v neposlední řadě hlavičkou Sokola Krč fungoval také dlouhou dobu baseballový a softbalový oddíl, o jehož historii se chystám psát samostatně v některém z dalších článků.</p>\r\n\r\n<p>Po roce 1989 došlo k navrácení majetku – zejména tedy objektu Sokolovny a přilehlých venkovních sportovišť do rukou občanského sdružení a TJ Sokol Praha Krč se stal opět členem obnovené České obce sokolské.  Dnes má TJ celkem 271 členů a má svá družstva v celé řadě především míčových sportů. Dále v prostorách sokolovny probíhají pravidelně kurzy Ju-Jitsu. Veřejnost si může pronajmout jak venkovní antukové kurty, tak tělocvičnu a menší přísálí uvnitř budovy. Krom toho jsou pro veřejnost organizovány různé sportovní soutěže a taneční zábavy.</p>\r\n\r\n<p><br /></p>\r\n\r\n<p><b>Kontakt:</b>  Za Obecním úřadem 354/7140 00 Praha 4<br />\r\n<b>Tel.:</b> +420 241 444 594; +420 737 056 335;<br />\r\n<b>Web:</b> <a href="http://sokolprahakrc.webnode.cz/">http://sokolprahakrc.webnode.cz/</a><br /></p>\r\n\r\n\r\n<p><b>Zdroje:</b><br />\r\nTučňák, Měsíčník MČ Praha 4, Ročník XXIII, Duben 2013, s. 14<br />\r\n<a href="http://sokolprahakrc.webnode.cz">http://sokolprahakrc.webnode.cz/</a><br />\r\n<a href="http://is.muni.cz/th/361551/ff_b/Vlasakova_Bakalarska_prace_podzim_2012.pdf">http://is.muni.cz/th/361551/ff_b/Vlasakova_Bakalarska_prace_podzim_2012.pdf</a></p>', 9),
(9, 'ellrohir', 'Materiály', '2013-11-09 11:55:00', 'Informační brožura - Šimsovo sanatorium', 'Dobová brožura propagující služby Šimsova sanatoria v Krči', '<p>Dostala se nám do rukou dobová informační brožura „Sanatorium dra. Šimsy v Krči u Prahy. Jde o zajímavé svědectví o tom, jak ústav ve své době vypadal a fungoval. Chybí bohužel přesná datace, ale sanatorium fungovalo mezi léty 1909 a 1916 [1], její vydání lze tedy umístit do tohoto období. Všech 18 listů publikace vám nyní nabízíme v <a href="index.php?page=gallery&gid=43">této galerii</a>. Obal je sice potrhán, ale jinak se knížečka zachovala skvěle.</p>\r\n\r\n<p>Na stránkách je postupně představen vznik a účel sanatoria, které si kladlo za cíl „fysikální a tetickou léčbu chorob vnitřních, zvl. srdečních, žaludečních a nervových“, jsou představeny používané léčebné metody, mezi které krom specifických diet a obvyklých lázeňských procedur patřila i léčba elektřinou a radiem a je představen režim pro klienty vč. rozpisu časů jídel, které byly čtyři – snídaně, oběd, svačina a večeře. Nechybí mapka areálu a shrnutí podmínek pro přijetí a pravidel chování.</p>\r\n\r\n<p>Stránky textu jsou doplněny fotografiemi a brožura krom toho obsahuje čtyři krásné ilustrace zobrazující, jak sanatorium v té době vypadalo. Celkově jde beze sporu o velmi atraktivní materiál pro milovníky historie, díky kterému je možné nenásilnou formou nahlédnout do lázeňského života v českých zemích na sklonku monarchie.</p>\r\n\r\n<img src="/gallery/1383935987.jpg" title="Sanatorium - Brožura" alt="Sanatorium - Brožura" width="350" />\r\n\r\n<p>Odkaz na galerii: <a href="index.php?page=gallery&gid=43">ZDE</a></p>\r\n\r\n<p><br /></p>\r\n\r\n<p>[1] <a href="http://euro.e15.cz/profit/neuropsychiat-jan-simsa-zalozil-penzion-pro-bohate-pany-898649">http://euro.e15.cz/profit/neuropsychiat-jan-simsa-zalozil-penzion-pro-bohate-pany-898649</a></p>', 43),
(10, 'ellrohir', 'Odkazy', '2013-11-11 21:30:00', 'E15.cz - Neuropsychiat Jan Šimsa', 'Odkaz na článek publikovaný na jiném webu, který se zabývá MUDr. Šimsou a jeho sanatoriem.', 'Po čase jsem opět našel na jiném místě internetu pojednání na téma Krče, o které bych se tu s patřičným uvedením odkazu rád podělil.<br /><br />\r\n\r\nPro jinak spíše ekonomický <a href="http://euro.e15.cz">E15</a> vytvořil <b>19. června 2010</b> autor <b>Robert Šimek</b> článek o jedné z Krčských historických person MUDr. Janu Šimsovi a jeho sanatoriu, jehož budova dodnes patří k hlavním dominantám naší čtvrti. Text naleznete zde - <a href="http://euro.e15.cz/profit/neuropsychiat-jan-simsa-zalozil-penzion-pro-bohate-pany-898649">Neuropsychiat Jan Šimsa založil penzion pro bohaté pány</a><br /><br />\r\n\r\n\r\n<i>- Alois Sečkár, Praha, 11. listopadu 2013</i>', 8),
(11, 'ellrohir', 'Materiály', '2013-12-01 17:10:00', 'Oběžník náboženské obce církve českomoravské', 'Naskenované dva listy církevního oběžníku z roku 1942', '<p>Dnes vám přinášíme naskenované listy dobového „Oběžníku náboženské obce církve českomoravské v Praze XIV. – Krči“. Výtisk, tvořený vlastně jen jedním listem papíru (čili 2 A4 strany), je díky tužkou psané poznámce v záhlaví (domnívám se, že psaná někdy později mým dědou) datován do října 1942, tedy do neveselého období Protektorátu.</p>\r\n<p>Díky ručně psané adrese pro doručení v levém horním rohu se dále dozvídáme, že Papírníkovi patřili mezi příslušníky této církve (dnes Církev československá husitská, během své existence od roku 1920 [1] několikrát vystřídala oficiální název) a že toho času bydleli v Nádražní 165 (dnešní U Krčského Nádraží).</p>\r\n<p>Samotný oběžník informuje členy své obce o místním dění a podává tak nesmírně zajímavé svědectví o tehdejším běžném životě. Kdyby člověk neznal rok vydání, z textu by zřejmě vůbec nepoznal, že byla válka. Zato se čtenář dozví o novém faráři panu Mocovi, o vzhledu prostoru pro bohoslužby, který se tehdy nacházel v prostorách Sokolovny. Dále je prezentována „Akce 100“, snaha shromáždit formou sbírky celkem 100 tisíc korun a adekvátně zakulatit počty členů v určitých spolcích. Následuje odstavec o církevní dani, formě členského příspěvku, který činil 10 korun ročně. Potom se píše o Jednotě mládeže organizované v rámci církevní obce. Poslední je popsán Sbor služby, poradní a debatní orgán, který si kladl za cíl vnášet jasno do otázek a výkladu víry. Pod čarou na konci druhého listu ještě o své činnosti stručně informují stavební a sociální odbor.</p>\r\n<p>Zájemcům vřele doporučuji prohlédnout a přečíst si naskenované stránky v <a href="index.php?page=gallery&gid=44">TÉTO GALERII</a>.</p>	\r\n\r\n<p>[1] <a href="http://www.ccsh.cz/view.php?id=338">http://www.ccsh.cz/view.php?id=338</a></p>\r\n', 44),
(12, 'ellrohir', 'Střípky', '2013-12-27 18:51:00', 'Stoletá voda', 'Krátká vzpomínka na velkou povodeň v roce 1903', '<p>Když jsme letos v létě stáli nad korytem rozbouřeného Kunratického potoka, kterým se s hukotem valilo hrozivé množství dravé vody, tak jsme si s bratrem říkali, jak je pro Krč dobře, že potok teče v hlubokém korytě, navíc údolím, kde v jeho nejbližším dosahu už vlastně žádná obytná zástavba nezbyla.</p>\r\n\r\n<img src="/content/articles/povoden.jpg" title="Povoden 2012" alt="Povoden 2012" width="350" />\r\n\r\n<p>Tak tomu ale nebylo vždy, jak naznačují například následující ručně psané vzpomínkové zápisky prapradědečka Františka Papírníka tlumočené mým dědou:</p>\r\n\r\n<p><i>"Hrozná povodeň stíhla obec Dolní Krč dne...května 1903, které  nebylo pamětníka. V ten den přišla bouře s hrozným hromobitím, ale  nejhorší bylo to, že u Hostivaře se strhly mračna a veškeren proud  hnal se nesmírnou rychlostí přes obě Krče.</i></p>\r\n<p><i>Z povodně této zaznamenati sluší toto: Předně že si povodeň  vyžádala jeden lidský život. Dotyčný byl sladovnickým v Dolnokrčském  pivovaře (pozn.: co je dnes truhlář Hlušička) a chtěl zachránit  prasata; šel po zdi spojující potok s pivovárkem, ale ta byla vodou  rozbořena, rovněž zeď při pivovarské zahradě byla asi v délce patnáct  metrů sesypaná. Dále zeď tak zvaná "V kaštanech" byla sesuta. Dále  zeď při silnici proti Maškovi se sesypala. Nejhorší ale bylo, že  stálým přibýváním vody byla panská zahrada zaplavena a nemohla  pojmouti již více žádné vody.</i></p>\r\n<p><i>Nejdříve byly vyvráceny vrata proti Baurovům, což bylo jediným  štěstím, že praskla panská zeď proti Pospíšilovům později. Když zeď  praskla, byly zaplaveny byty u Pospíšilů, v krámě, v hostinci,  u Kořínkové, Kaisrové ve všech níže položených bytech.</i></p>\r\n<p><i>Nejhorší to bylo ale u Skřivanů, který mimo toho utrpěl velkou  škodu přítokem proudu z panského vrchu, který mu zničil větší část pozemku."</i></p>\r\n\r\n<p>Nic podobného snad už dnes Krči nehrozí, alespoň ne stran Kunratického potoka.</p>\r\n\r\n<p>Vše zlé je však k něčemu dobré, jak se říká, a i zde to platí. Povodeň změnila život malé Anny Svobodové, jejíž matka se nachladila během záchrany před povodní a krátce na to zemřela. Tragická událost však znamenala takový běh věcí, že se o dvě desetiletí později Anna seznámila s jistým Aloisem Papírníkem a do manželského svazku se v roce 1925 narodil další Alois, můj děda. Voda bere a ničí, ale zaplétá také lidské osudy. Kdo ví, kde byly byly dnešní stránky o Staré Krči bez povodně 1903...</p>', 0),
(13, 'ellrohir', 'Odkazy', '2014-01-18 21:58:00', 'Srovnávací fotografie z Krče', 'Odkaz na externí galerii tzv. srovnávacích pohledů, které ukazují přímé porovnání Krče dříve a dnes', '<p>Autor jménem <a href="https://www.facebook.com/vaclav.visek" title="Václav Víšek- Facebook">Václav Víšek</a> se rád toulá s fotoaparátem republikou a tvoří srovnání toho, jak to vypadá dnes, se staršími pohledy a fotografiemi.</p>\r\n\r\n<p>Sledoval jsem jeho <a href="http://fotoalba.centrum.cz/unewest.php?uid=9978691" title="Fotoalbum uživatele Venca-01">galerii</a> a nalezl také několik pořízených v "naší" Krči. Některé fotky "dříve" jsou sice datovány pouze do roku 1995, ale i na nich je vidět, že se za 18 let změnilo mnohé. A nebo naopak nezměnilo - a to zase třeba i u těch, které jsou výrazně starší. Každopádně jde o zajímavý materiál.  A nechcete-li se omezit jenom na Krč, autor má už na svědomí doslova tisíce takových fotek! Na jeho <a href="http://vencovypindy.blogspot.cz/" title="Blog Václava Víška">blogu</a> navíc mnohé z nich komentované.</p>\r\n\r\n<p>Odkazy na jednotlivé srovnávací snímky nabízím dále:</p>\r\n\r\n<p>\r\n<b>Budějovická</b><br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731052">http://fotoalba.centrum.cz/photo.php?pid=25731052</a> 1995 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731053">http://fotoalba.centrum.cz/photo.php?pid=25731053</a> 1995 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731054">http://fotoalba.centrum.cz/photo.php?pid=25731054</a> 1958 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731055">http://fotoalba.centrum.cz/photo.php?pid=25731055</a> 1971 vs. 2013<br />\r\n</p>\r\n\r\n<p>\r\n<b>Jihlavská</b><br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731056">http://fotoalba.centrum.cz/photo.php?pid=25731056</a> 1969 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731057">http://fotoalba.centrum.cz/photo.php?pid=25731057</a> 1967 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731058">http://fotoalba.centrum.cz/photo.php?pid=25731058</a> 1969 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731059">http://fotoalba.centrum.cz/photo.php?pid=25731059</a> 1973 vs. 2013<br />\r\n</p>\r\n\r\n<p>\r\n<b>Ryšánka</b><br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25196528">http://fotoalba.centrum.cz/photo.php?pid=25196528</a> 1968 vs. 2012<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731060">http://fotoalba.centrum.cz/photo.php?pid=25731060</a> 1995 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731061">http://fotoalba.centrum.cz/photo.php?pid=25731061</a> 1946 vs. 2013<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=25731062">http://fotoalba.centrum.cz/photo.php?pid=25731062</a> 1967 vs. 2013<br />\r\n</p>\r\n\r\n<p>\r\n<b>U Labutě</b><br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=24144683">http://fotoalba.centrum.cz/photo.php?pid=24144683</a> ???? vs. 2011<br />\r\n<a href="http://fotoalba.centrum.cz/photo.php?pid=24144684">http://fotoalba.centrum.cz/photo.php?pid=24144684</a> ???? vs. 2011<br />\r\n</p>', 0);
INSERT INTO `elrh_articles` (`id`, `author`, `cat`, `posted`, `name`, `dscr`, `content`, `gallery`) VALUES
(14, 'ellrohir', 'Odkazy', '2014-03-16 12:00:00', 'Cestovatel.cz - Pražské zahrady, zastavení 45 - Praha 4-Krč', 'Odkaz na článek publikovaný na jiném webu, popisující park u Krčského Zámečku a Kunratický les.', '<p>Autorka článku <a href="http://www.ivanafilipova.ic.cz/">Ivana Filipová</a> se ve svém seriálu věnuje pražským zahradám a parkům. V 45. díle se podívala k nám do Krče. Stalo se tak už na jaře 2008, ale report stojí za přečtení stále.</p>\r\n\r\n<p>První polovina článku se věnuje okolí Welzova zámku, dnes hotelu a malého golfového resortu, poté autorka vyrazila přes Víděňskou do Kunratického lesa. Text rekapituluje historii a popisuje místní flóru.</p>\r\n\r\n<p>K přečtení je článek <a href="http://www.cestovatel.cz/clanky/prazske-zahrady-praha-krc/" title="Pražské zahrady, zastavení čtyřicáté páté - Praha 4 - Krč">ZDE</a>. Váže se k němu navíc pěkná <a href="http://www.cestovatel.cz/clanky/prazske-zahrady-praha-krc/galerie/" title="Fotogalerie k článku">galerie 29 fotek</a> ze zámeckého parku, okolí rybníka Labuť a z lesa nad ním.</p>\r\n\r\n<p><i>- Alois Sečkár, Praha, 16. března 2014</i></p>', 0),
(15, 'ellrohir', 'Odkazy', '2014-10-16 21:22:30', 'Prahaneznama.cz - Zelená Liška', 'Odkaz na článek publikovaný na jiném webu, který se věnuje historii sídliště Zelená Liška', '<p>Zástavbě bytových domů mezi Budějovickou a Pankrácem se říká Zelená Liška. Jak uvádí sdílený článek, buďto tu stál hostinec s vývěsním štítem tohoto motivu, nebo snad dokonce měl v inventáři zelenou psí boudu obývanou liškou.</p>\r\n\r\n<p>Autor (snad by to měl být Petr Ryska, provozovatel webu Prahaneznama.cz) velmi poutavě popisuje genezi a výsledný vzhled zdejšího sdíliště, jehož počátky sahají do dob první republiky. Vše je doplněno mnoha fotografiemi.</p>\r\n\r\n<p>Článek rozhodně stojí za přečtení a naleznete jej <a href="http://www.prahaneznama.cz/praha-4/krc/zelena-liska/">ZDE</a>.</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `elrh_books`
--

CREATE TABLE IF NOT EXISTS `elrh_books` (
  `id` int(7) NOT NULL,
  `cat` smallint(6) NOT NULL DEFAULT '1',
  `ord` smallint(6) NOT NULL,
  `author` varchar(50) COLLATE latin2_czech_cs NOT NULL,
  `posted` datetime NOT NULL,
  `name` varchar(100) COLLATE latin2_czech_cs NOT NULL,
  `writer` varchar(50) COLLATE latin2_czech_cs NOT NULL,
  `year` varchar(4) COLLATE latin2_czech_cs NOT NULL,
  `dscr` text COLLATE latin2_czech_cs NOT NULL,
  `url` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `thumb` varchar(100) COLLATE latin2_czech_cs NOT NULL,
  `review` int(11) NOT NULL,
  `review_ext` varchar(255) COLLATE latin2_czech_cs NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs;

--
-- Dumping data for table `elrh_books`
--

INSERT INTO `elrh_books` (`id`, `cat`, `ord`, `author`, `posted`, `name`, `writer`, `year`, `dscr`, `url`, `thumb`, `review`, `review_ext`) VALUES
(1, 1, 1, 'ellrohir', '2014-03-03 16:30:00', '100 let Lesního divadla v Krči', 'Marek Zajac', '2012', 'Kniha pojednávající o Lesním divadle v Krči. Je souborem vzpomínek pamětníků, dobových fotografií a opatřen textem Kateřiny Kroupové. ', 'http://www.databazeknih.cz/knihy/100-let-lesniho-divadla-v-krci-145817', '/content/thumbs/books/divadlo.jpg', 2, ''),
(2, 2, 1, 'ellrohir', '2014-03-03 16:30:00', 'Posázavský pacifik z Prahy do Čerčan a Dobříše na starých pohlednicích', 'Karel Černý, Jakub Džurný, Martin Navrátil', '2013', 'Nová publikace z ediční řady Železniční tratě na starých pohlednicích tentokrát představuje jednu z nejkrásnějších a nejromantičtějších tratí spojujících Prahu s rekreačními oblastmi povltaví a posázaví. Dobové snímky odkrývají zajímavé pohledy nejen na výstavbu a vývoj tratě, ale i na život lidí okolo ní.', 'http://www.databazeknih.cz/knihy/posazavsky-pacifik-z-prahy-do-cercan-a-dobrise-na-starych-pohlednicich-196173', '/content/thumbs/books/pacifik.jpg', 0, 'http://www.mistnikultura.cz/posazavsku-pacifik-z-prahy-do-cercan-dobrise-na-starych-pohlednicich'),
(3, 2, 2, 'ellrohir', '2014-03-03 16:30:00', 'Zmizelá Praha - Tramvaje a tramvajové tratě 4. díl', 'Pavel Fojtík', '2010', 'Čtvrtý díl Tramvají a tramvajových tratí v řadě Zmizelá Praha nás zavádí na jižní pravý břeh Vltavy. Kniha historika pražské hromadné dopravy Pavla Fojtíka navazuje na předchozí tři úspěšné a zajímavé tituly.', 'http://neoluxor.cz/popularne-naucna/zmizela-praha-tramvaje-a-tramvajove-trate-4--173019/', '/content/thumbs/books/tramvaje.jpg', 0, ''),
(4, 3, 1, 'ellrohir', '2014-03-20 12:00:00', 'Přírodní léčba a domácí lékař', 'Jan Šimsa', '1941', 'Dílo, které jako redaktor vedl MUDr. Jan Šimsa. Vydáno někdy z kraje 20. let. Rozdělno na dva díly.<br />\r\nNabízí <em>"praktický populární popis všech metohod přírodoléčebných, fysikálních a dietických, dále popis nemocí, jich příčin, jak jim předcházeti a jak je osvědčenými domácími prostředky léčiti"</em>.', 'http://www.databazeknih.cz/knihy/prirodni-lecba-a-domaci-lekar-1-73314', '/content/thumbs/books/simsa_lekar.jpg', 0, ''),
(5, 3, 2, 'ellrohir', '2014-03-20 12:00:00', 'Základy životní moudrosti', 'Jan Šimsa', '1923', 'Filosofické a motivační dílo MUDr. Jana Šimsy z roku 1923 na téma "výchova charakteru pěstěním silné vůle, energie a mravní síly".', '', '/content/thumbs/books/simsa_zaklady.jpg', 0, 'http://weiss.blog.idnes.cz/c/374069/Umeni-propagandy-Zaklady-zivotni-moudrosti.html'),
(6, 2, 3, 'ellrohir', '2014-03-20 12:20:00', 'Praha 4 křížem krážem', 'Pavel Augusta', '2005', 'Bude doplněno...', '', '/content/thumbs/books/praha_krizem_krazem.jpg', 0, ''),
(7, 2, 4, 'ellrohir', '2014-03-20 12:20:00', 'Nusle-Michle-Krč v minulosti a přítomnosti', 'Bohumil Nepovím', '1948', 'Bude dopněno...', '', '/content/thumbs/books/nusle_michle_krc.jpg', 0, ''),
(8, 2, 5, 'ellrohir', '2014-03-20 21:30:00', '130 let železniční tratě Nusle-Modřany 1882-2012', 'Pavel Malkus', '2012', 'Útlá brožurka volně navazuje na vydání knihy k 120 výročí tratě. Krátkou textovou část doplňují zajímavé dobové snímky. ', 'http://www.databazeknih.cz/knihy/130-let-zeleznicni-trate-nusle-modrany-1882-2012-195556', '/content/thumbs/books/130_let.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_books_cat`
--

CREATE TABLE IF NOT EXISTS `elrh_books_cat` (
  `id` int(11) NOT NULL,
  `ord` smallint(6) NOT NULL,
  `name` varchar(25) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `elrh_books_cat`
--

INSERT INTO `elrh_books_cat` (`id`, `ord`, `name`) VALUES
(1, 1, 'Knihy o Krči'),
(2, 2, 'Knihy zmiňující Krč'),
(3, 3, 'Knihy krčských autorů');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_comments`
--

CREATE TABLE IF NOT EXISTS `elrh_comments` (
  `id` int(7) NOT NULL,
  `ip` varchar(25) COLLATE latin2_czech_cs NOT NULL DEFAULT '0.0.0.0',
  `posted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(50) COLLATE latin2_czech_cs NOT NULL,
  `mail` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `web` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `comment` text COLLATE latin2_czech_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Table structure for table `elrh_contacts`
--

CREATE TABLE IF NOT EXISTS `elrh_contacts` (
  `contact` enum('mail','fb','tw','post','other') COLLATE utf8_czech_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `elrh_contacts`
--

INSERT INTO `elrh_contacts` (`contact`, `name`, `link`) VALUES
('mail', 'Alois Sečkár', 'seckar@svobodni.cz'),
('mail', 'Anton Sečkár', 'rakcesa@seznam.cz'),
('fb', 'Stará Krč', 'http://www.facebook.com/StaraKrc'),
('post', 'Matek 338/5, 14000 Praha 4', '');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_gallery_galleries`
--

CREATE TABLE IF NOT EXISTS `elrh_gallery_galleries` (
  `id` int(5) NOT NULL,
  `parent` int(5) DEFAULT '0',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
  `dscr` text CHARACTER SET utf8 COLLATE utf8_czech_ci,
  `images` int(4) DEFAULT '0',
  `last` int(8) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs PACK_KEYS=0;

--
-- Dumping data for table `elrh_gallery_galleries`
--

INSERT INTO `elrh_gallery_galleries` (`id`, `parent`, `author`, `created`, `name`, `dscr`, `images`, `last`) VALUES
(1, 0, 'rakcesa', '2010-02-28 13:37:55', '1 - Stará Krč', 'Územní celek Krč (rozdělený na obec Horní a Dolní) byl roku 1922 připojen k tzv. Velké Praze, a od té doby je tak jednou z&nbsp;pražských čtvrtí, přičemž rozloha zastavěné plochy se od té doby výrazně zvětšila až do dnešní podoby. Čtvrť zůstala převážně rezidentní, s velkým množstvím vil a bytových domů. Jakousi pomyslnou osu tvoří údolí Kunratického potoka, který sleduje Jižní spojka, součást Pražského silničního okruhu, a železniční trať 210 do Čerčan, resp. Dobříše.<br />\r\n\r\nK dominantám dodnes patří areál tzv. Šimsova sanatoria a Fakultní Thomayerova nemocnice, dříve Masarykovy domovy - ohromný prvorepublikový projekt bydlení pro sociálně slabé. Tyto dva areály mezi sebe v podstatě ze západu a východu svírají jádro krčského území. Dalšími významným prvkem je malý zámek v místě dřívější Dolnokrčské tvrze.<br />\r\n\r\nNejstarší známky lidského osídlení, podpořené archeologickými průzkumy, sahají až někam do neolitické éry. Například Štorchova <i>Osada Havranů</i> ležela právě tam, kde se dnes nachází Krč. První historická zmínka o Krči jako takové pochází z roku 1222, kdy je vesnice "Krcz" uvedena jako majetek Vyšehradské kapituly. Od 14. století jsou zmínky o dvou tvrzích v okolí, základ budoucí Horní a Dolní Krče. Dolní prý stávala uprostřed rybíka blízko dnešního Nádraží Krč, Horní o kus proti proudu potoka, snad kdesi v jeho ohybu na kraji Michelského lesa.<br />\r\n\r\nHorní tvrz byla opuštěna někdy v 15. nebo 16. století a Horní Krč pak byla především krčma a dvůr pro povozy cestující po benešovské (dnešní Vídeňská) silnici. Roku 1678 byl obnoven místní mlýn. Začátkem 19. století ves tvořilo asi 11 chalup.<br />\r\n\r\nDolní Krč bývala větší. Zdejší tvrz se zachovala, ač zabavená po Bílé Hoře zpustla než ji v roce 1628 zakoupil klášter Sv. Havla. Někdejší šlechtické sídlo se postupně změnilo ve velkostatek s přilehlými budovami - např. hospoda a pivovar. V roce 1777 tu bylo zaznamenáno 21 domů. Po zániku kláštera během Josefinských reforem se vystřídalo několik vlastníků statku z řad soukromých osob. Nejznámějším a nejvýznamnějším se stal poslední majitel - Tomáš Welz.<br />\r\n\r\nK historické Krči se počítala ještě usedlost Ryšánka nahoře na kopci směrem ku Praze a malá obec Jalové Dvory, ležící víc na jihu. Ke konci 19. století měla Horní Krč 53 domů a 731 obyvatel, Dolní Krč 80 domů a 1061 obyvatel, celkem evidováno 1903 osob. Přitom počty usedlíků se od roku 1843 více než ztrojnásobily, stejně jako dramaticky vzrostl počet budov. Tento trend pokračoval - v roce 1910 to už bylo na 3200 obyvatel a 220 domů. Z Krče se však nestalo industriální předměstí jako třeba ze Smíchova či Holešovic, nýbrž zůstala rezidentní a oddechovou oblastí. Svůj podíl na tom měla blízkost Michelského/Kuntratického lesa, možná největšího souvislého lesního celku v blízkém okolí tehdejší Prahy a obecně množství zeleně.<br />', 45, 991),
(2, 0, 'ellrohir', '2012-11-09 22:00:00', '2 - Moderní Krč', 'Krč dnes. Najdete zde především celkové pohledy, snímky konkrétních dosud stojících staveb (viz galerie 3) jsou umístěny v&nbsp;podsložkách "Dnešní stav" u&nbsp;konkrétních objektů.', 5, 209),
(3, 0, 'ellrohir', '2012-11-09 22:00:00', '3 - Krčské stavby', 'Jednotlivé významné objekty historické Krče, které se zachovaly dodnes.<br />Obrázky jsou umístěny v galeriích k jednotlivým objektům.', 0, 0),
(4, 0, 'ellrohir', '2012-11-09 22:30:00', '5 - Ostatní', 'Co se nevešlo jinam. Obrázky jsou umístěny v jednotlivých galeriích.', 4, 1009),
(5, 32, 'rakcesa', '2010-03-07 12:08:13', '401 - Lesní divadlo', 'Historické Lesní divadlo v Krči. Z popudu dr. Šimsy a statkáře Tomáše Welze vzniklo úpravou přírodního amfiteátru v lese nad Sanatoriem. Nešlo o nijak malý projekt - hlediště mělo 2364 sedadel a celkem mohlo hry pod širým nebem sledovat 4-5 tisíc diváků.', 23, 453),
(6, 3, 'rakcesa', '2012-03-19 13:30:15', '302 - Masarykovy domovy', 'Rozsahem monumentální prvorepublikový projekt výstavby ubytování pro sociálně potřebné včetně zařízení pro nemocné navazuje na starší a nerealizované snahy o výstavbu řady ozdravných a léčebných ústavů, které by doplnily sanatorium dr. Šimsy (později kojenecký ústav). Důvodem pro podobné plány byl zdravý vzduch a množství zeleně v okolí.<br />\r\n9.2.1925 byl vybrán pozemek o rozloze 32 hektarů mezi tehdejší Benešovskou (dnes Vídeňská) silnicí a Michelským/Kunratickým lesem. Stavět se začalo 1926 a otevření se domovy dočkaly v roce 1928. Projekt vypracoval architekt Bohumír Kozák. Rozšiřování směrem na jih ke Kunraticím probíhalo pod vedením stejého architekta, díky kterému si tak budovy areálu dodnes zachovaly osobitý a víceméně jednotný ráz, probíhal postupně v letech 1934 a 1939. Z moderní doby pochází areál IKE-M, kterým dnes celá nemocnice, která zde vznikla po 2. světové válce, končí. Před válkou zde pracovalo téměř 600 zaměstnaců a ubytovaných z řad chudiny bylo několik tisíc.', 13, 636),
(7, 3, 'ellrohir', '2011-10-16 16:05:37', '304 - Restaurace U Labutě', 'Nachází se na severním konci areálu Thomayerovy nemocnice (mimo vlastní nemocnici). Někde v blízkém okolí se nacházela středověkká tvrz Horní Krč. Už z roku 1654 existuje záznam o krčmě při tehdejší benešovské cestě, kterou s oblibou využívali poutníci a formani. Blízko byl také hornokrčský statek.<br />\r\nDnes je zrekonstruovaná a stále v provozu.', 9, 798),
(8, 3, 'ellrohir', '2012-11-09 22:30:00', '301 - Sanatorium dr. Šimsy', 'Historie areálu v Sulické ulici, který dnes slouží jako kojenecký ústav při Thomayerově nemocnici se začala psát v roce 1893 postavením dvou objektů "Radost" a "Rozkoš" v jižní části, na kraji blízkého lesa. Tehdy zde vznikly lázně Emila Pavlikovského. Další budovy jsou jmenovány jako "Orient" a "Inka". Začátkem 20. století lázně spolu s dalšími pozemky odkoupil doktor Šimsa a zřídil zde své nervové sanatorium. V roce 1910 byla dokončena hlavní budova sanatoria, nesporná dominanta v severní části. Navrhoval ji architekt Bohumil Černý. Postavená je v barokem inspirované secesi.<br />\r\nSanatorium sloužilo pouze do roku 1916, kdy jej uzavřela a poškodila válka. V roce 1920 jej získal spolek "Čsl. Ochrany matek a dětí v Praze VII" a o rok později začal sloužit jako kojenecký ústav, kterým zůstal dodnes.', 30, 790),
(9, 3, 'rakcesa', '2011-02-20 16:38:18', '307 - Sokolovna', 'Areál Sokola v Krči', 6, 671),
(10, 3, 'ellrohir', '2011-10-16 13:57:42', '303 - Welzův zámek', 'Nejméně od 14. století se zhruba v místech dnešního tzv. krčského zámečku nacházela tvrz Dolní Krč, kolem které byly též zřízeny okolní tři rybníky. Kořeny samotného zámku sahají do 18. století, kdy zdejší velkostatkářský dvůr patřil klášteru sv. Havla.<br />\r\nUž tehdy byl určen základní dnes viditelný půdorys objektu, zhruba uprostřed budovy byla kaple sv. Havla, jehož jméno nese rekonstruovaná stavba dnes coby "Hotel Chateau St. Havel". Dnes známou podobu mu dal začátkem 19. století baron Schlosser. Po roce 1880 koupil zámek a přilehlý statek Tomáš Welz, významná to postava místní historie, a právě po něm se zámečku říká "Welzův".<br />\r\n\r\nWelzům panství zabavili v roce 1948 a nevyužitý areál začal chátrat. Dezolátní stav se stal osudným komplexu hospodářských budov, které byly strženy nebo se samy zřítily do roku 1977. Budova samotného zámku ale vydržela i čekání po roce 89, než se konečně dočkala opravy a byla přeměněna na luxusní hotel s přilehlým golfovým mini-resortem. Přitom se změnila původní růžová (vzpomínám, jak mu děda říkával "cukrový zámeček") barva zdiva na dnešní krémově hnědou. Zámek se nalézá v ulici Před Nádražím, nedaleko dnešní železniční stanice Praha-Krč.', 3, 532),
(11, 4, 'rakcesa', '2010-03-15 10:33:25', '501 - Mapy Krče', 'Mapy', 6, 730),
(12, 4, 'rakcesa', '2011-02-20 16:13:40', '502 - Obec Legionařská v Krči', 'Krčští legionáři', 10, 476),
(13, 4, 'rakcesa', '2010-03-05 09:52:29', '503 - Zbouraná Krč', 'Několik jinam nezařaditelných fotografií staré zástavby (Dolní) Krče pořízených Aloisem Papírníkem mezi léty 1977-79 v místech, kudy dnes vede Jižní spojka. Téměř všechny budovy odsud při stavbě dálnice zmizely, v bezprostřední blízkosti spojky zůstala vlastně jen Kaplička Sv. Anny, Sokolovna a budova bývalého Pivovaru Pragovar.<br /><br />\r\n\r\nDovolím si nyní krátkou citaci textu Aloise Papírníka, ve kterém historický vzhled obce stručně, avšak výstižně popisuje:<br /><br />\r\n\r\n<i>"Stával tu hotel a kino ´´Klimeš´´, cukrárna, řeznictví, krejčovství, dvě trafiky a věhlasná hospoda ´´U koule´´. To vše doplnila řadová domkářská zástavba. Nescházela ani nezbytná kaple sv. Anny jež se jediná zachovala po rozsáhlých demolicích v roce 1979 a tvoří tak poslední doklad někdejšího jádra obce. Na něj navazovala v pokračování její hlavní osy budova sokolovny,obecního domu, tak zvané kavárny, architektury se zajímaným figurálním a ornamentálním secesním detailem, a školy. I tyto objekty padly za obět výstavbě silnice v roce 1979. Celá kompozice sousedila se zámeckým parkem, rozvíjejícím se podél potoka. Kultivovanou parkovou úpravou přírody podmínila regulace močálovitého terénu."</i> \r\n<br /><br />\r\n\r\nPan Jiří Bořánek doplňuje, že z hospody "U Koule" se později stal sběrný dvůr a zmiňuje též zelinářský obchod pana Hrabáka, který patřil k významnějším stavbám okolí.', 89, 1028),
(14, 5, 'ellrohir', '2012-11-09 23:00:00', 'Dnešní stav', 'Dnešní stav objektu', 27, 681),
(15, 6, 'ellrohir', '2012-11-09 23:00:00', 'Dnešní stav', 'Dnešní stav objektu', 5, 688),
(16, 7, 'ellrohir', '2012-11-09 23:00:00', 'Dnešní stav', 'Dnešní stav objektu', 10, 807),
(17, 8, 'ellrohir', '2012-11-09 23:00:00', 'Dnešní stav', 'Dnešní stav objektu', 4, 680),
(18, 9, 'ellrohir', '2012-11-09 23:00:00', 'Dnešní stav', 'Dnešní stav objektu', 4, 679),
(19, 10, 'ellrohir', '2012-11-09 23:00:00', 'Dnešní stav', 'Dnešní stav objektu', 12, 1298),
(20, 3, 'ellrohir', '2012-11-10 16:12:50', '399 - Ostatní', 'Další zajímavé objekty v Krči', 2, 700),
(21, 32, 'ellrohir', '2012-12-15 11:43:56', '403 - Železniční trať Nusle-Krč-Modřany', 'Pozůstatky bývalé železnice. Trať <strong>Praha – Vršovice – Modřany – Vrané nad Vltavou – Červany – Dobříš</strong> byla otevřena dne 1.března 1882. Tři roky patřila společnosti Českých obchodních drah, 1885 – 1886 Rakouské společnosti místních drah, 1887 – 93 byla státní na účet téže společnosti a roku 1894 byla zestátněna. V roce 1882 byla dokončena též původní nádražní budova, která oproti dnešímu stavu stála o nějakých 300-400 metrů více na východ, zhruba naproti Společenské zahradě. Koleje byly původně vedeny jinudy - jižněji než je tomu dnes a Kačerovský kopec, kde je dnes autobusové depo, obtáčely zřejmě z druhé strany. Kdy, jak a proč došlo ke změně v položení železnice, není autorovi v tuto chvíli jasné...', 28, 837),
(22, 3, 'ellrohir', '2012-12-15 15:43:44', '305 - Nádraží', 'Nádraží v Krči', 2, 702),
(23, 3, 'ellrohir', '2012-12-15 15:44:14', '306 - Krčský pivovar', 'Bývalý pivovar v Horní Krči', 21, 1308),
(24, 32, 'ellrohir', '2012-12-15 15:45:00', '402 - Restaurace Hájovna', 'Bývalá restaurace Hájovna v lese', 5, 630),
(25, 3, 'ellrohir', '2012-12-15 15:45:45', '308 - Kaplička', 'Kaple sv. Anny vznikala v letech 1841-1859. Jde o prostou a malou stavbu, která bývala kdysi poněkud utopená v mnohem výraznější zástavbě, byť šlo možná o jedinou místní círvekvní stavbu (nepočítáme-li kapli sv. Havla v blízkém zámku; kostel Sv. Františka z Assisi nahoře na kopci byl postaven až v roce 1941). Ovšem možná právě proto jako jedna z mála a jediná v blízkém okolí dokázala přežít mohutnou vlnu bourání staré Krče v roce 1979, kdy zdejší domy musely ustoupit stavbě Jižní spojky.<br />\r\nDnes ji najdeme osamoceně stojící poblíž křižovatky ulic Branická a Sulická.\r\n<br /><br />\r\nDalší info: <a href="http://www.hrady.cz/?OID=6995">http://www.hrady.cz/?OID=6995</a>', 9, 784),
(26, 3, 'ellrohir', '2012-12-15 15:46:37', '309 - Společenská zahrada', 'Poměrně rozlehlý areál tzv. "Společenské zahrady" leží mezi Michelským lesem a vilovou zástavbou "jádra" Krče, nazápad od Vídeňské ulice. Na jihu ho ohraničuje business areál Zálesí, na severu ulice U Krčského Nádraží vedená souběžně s železniční tratí 210. Počátky sahají do poloviny 19. století:<br /><br />\r\n\r\n"Při cestě od nádraží k silnici v č. 86 jest veliká zahrada České společnosti pro zvelebování zahradnictví sem přenesená po zrušení zahrady v Slupích – II. V čele společnosti,r. 1845 založené, byl postaven znamenitý zahradník  Josef Fiala (1817 – 1884), jenž odchoval mnoho dobrých zahradníkův." [1] <br /><br /> \r\n\r\nDalší výstavba v tomto koutu Krče byla zřejmě podmíněna otevřením železnice v 80. letech 19. století. Z roku 1886 je dominanta areálu, budova někdejší Dívčí zahradnické školy z roku 1886. Sídlila zde také "České společnost pro zvelebování zahradnictví", která se sem přesunula z původního sídla na Praze 2, a měla zde svou velkou zahradu.<br />\r\n\r\nZahradnictví se zde pěstuje dodneška. Na nějaký čas se v původní budově zahradnické školy usadila oční klinika Lexum, ale od ledna 2013 čeká na nového nájemce. Uvnitř areálu se nachází též významné a jedinečné archeologické naleziště, jak uvádí <a href="http://usedlosti.ctrnactka.net/pos08.htm">Zuzana Vlachová</a>.<br /><br />\r\n\r\n[1] Kronika královské prahy a obcí sousedních díl I. ( díl MCMIII )', 3, 1007),
(27, 22, 'ellrohir', '2012-12-15 16:00:00', 'Dnešní stav', 'Dnešní stav objektu', 0, 0),
(28, 26, 'ellrohir', '2012-12-15 16:00:00', 'Dnešní stav', 'Dnešní stav objektu', 7, 779),
(30, 24, 'ellrohir', '2012-12-15 16:00:00', 'Dnešní stav', 'Dnešní stav objektu', 30, 874),
(31, 25, 'ellrohir', '2012-12-15 16:00:00', 'Dnešní stav', 'Dnešní stav objektu', 15, 1266),
(32, 0, 'ellrohir', '2012-12-23 14:00:00', '4 - Historické krčské stavby', 'Jednotlivé významné objekty historické Krče, které zanikly v proudu času.<br />Obrázky jsou umístěny v galeriích k jednotlivým objektům.', 0, 0),
(36, 32, 'ellrohir', '2012-12-27 15:48:05', '404 - Hotel Klimeš', 'Bývalý hotel Klimeš', 3, 504),
(37, 32, 'ellrohir', '2012-12-27 16:02:25', '405 - Škola', 'Někdejší první škola v Krči (resp. první přímo k tomuto účelu postavená) otevřená v roce 1886.', 5, 141),
(38, 3, 'ellrohir', '2013-03-16 12:25:00', '310 - Hotel Slunce', 'V secesním stylu postavený hotel, který vznikl koncem 19. století. Nachází se v severozápadním rohu Společenské zahrady, od které je ale stavebně oddělený. Jmenoval se napřed "U Nádraží" podle budovy starého nádraží, které bylo přímo naproti přes koleje. Později byl znám jako Hotel Welz a nakonec hotel a restaurace "U Slunce". Dnes stále v ulici U Krčského Nádraží stojí, avšak dývno už neslouží veřejnosti.', 2, 675),
(39, 38, 'ellrohir', '2013-03-16 12:26:00', 'Dnešní stav', 'Dnešní stav objektu', 1, 484),
(40, 26, 'ellrohir', '2013-03-16 12:28:00', 'Informační brožura - Zahradnická škola', 'Reklamní brožura Dívčí zahradnické školy', 5, 625),
(41, 5, 'ellrohir', '2013-03-16 12:35:00', 'Vzpomínková publikace k 10. výročí', 'Brožura k 10. výročí založení Lesního divadla vydaná krčským Sokolem v roce 1922', 12, 746),
(42, 5, 'ellrohir', '2013-03-16 12:35:00', 'Plakáty', 'Ukázky dobových plakátů lákajících do Lesního divadla na představení', 6, 449),
(43, 8, 'ellrohir', '2013-11-08 16:00:00', 'Informační brožura - Šimsovo sanatorium', 'Informace o Šimsově sanatoriu', 23, 1097),
(44, 4, 'ellrohir', '2013-12-01 17:05:35', '504 - Oběžník náboženské obce církve českomoravské', 'Naskenované dva listy církevního oběžníku z roku 1942', 2, 772),
(45, 9, 'ellrohir', '2013-12-04 21:39:28', 'Sokol - Dokumenty', 'Zajímavé autentické listinné materiály související se Sokolským spolkem', 3, 480),
(46, 8, 'ellrohir', '2013-12-05 20:18:06', 'Sanatorium - Dokumenty', 'Zajímavé autentické listinné materiály související se Sanatoriem dr. Šimsy', 2, 793),
(47, 6, 'ellrohir', '2013-12-05 20:27:19', 'Masarykovy domovy - Dokumenty', 'Zajímavé dobové listinné materiály', 3, 578),
(48, 2, 'ellrohir', '2014-02-24 10:00:00', '201 - "Na úlehli"', 'Oblast zástavby bytových a rodinných domů u Kačerova, mezi Michelskou a obloukem železniční tratě z Krče do Vršovic. Z hlediska administrativního členění Prahy je to sice už Michle, ale ke Krči nemá daleko, proto jsme se rozhodli ji také zařadit na naše stránky.', 3, 843),
(49, 4, 'rakcesa', '2014-03-18 13:47:26', '505 - Sokol Pankrác', 'Sokolská jednota na Pankráci, jejímž členem byl počátkem minulého století František Papírník.', 4, 883),
(55, 0, 'rakcesa', '2014-05-12 20:18:02', '6 - Firmy na území Krče', 'Firmy', 16, 1257),
(57, 0, 'rakcesa', '2014-05-12 20:24:26', '7 - Okolní čtvrtě', 'Obrázky z městských čtvrtí okolo Krče', 0, 0),
(59, 57, 'rakcesa', '2014-05-12 20:26:13', '702 - Nusle', '....', 6, 1027),
(60, 57, 'rakcesa', '2014-05-12 20:26:43', '703 - Pankrác', '...', 4, 982),
(62, 57, 'rakcesa', '2014-05-12 20:31:51', '701 - Michle', '...', 5, 1000),
(63, 8, 'ellrohir', '2014-06-10 11:53:24', 'Jan Šimsa v tisku', 'Skeny článků o dr. Šimsovi a jeho sanatoriu v Krči', 4, 979),
(67, 32, 'rakcesa', '2014-10-07 12:23:09', '406 - Restavrace ,,Za Větrem´´', 'Za větrem', 2, 987),
(68, 32, 'rakcesa', '2014-10-07 12:47:23', '407 - Restavrace ,,V Zámečku´´', 'Restavrace v Zámečku', 1, 988),
(69, 59, 'rakcesa', '2014-11-28 14:30:47', 'Sokol Nusle', 'Sokol Nusle', 2, 1011),
(70, 60, 'rakcesa', '2014-11-28 14:36:30', 'Sokol Pankrac', 'Sokol', 4, 1015),
(71, 4, 'ellrohir', '2014-12-06 10:55:03', '506 - Hasiči', 'Hasičský sbor v Krči', 6, 1021),
(72, 3, 'ellrohir', '2015-02-09 14:30:20', '311 - Dům Školských sester de Notre Dame', 'Dům se nachází na rohu ulice Hornokrčská a V Podzámčí. Od roku 1893 začal sloužit jako útulek pro hluchoněmé ženy. Od roku 1915 jej spravuje řád Školských sester de N.D. V padesátých letech byl ústav přesunut na Moravu a původní objekt přestavěn a rozšířen a stala se z něj polepšovna. Po revoluci se dům vrátil Školským sestrám, polepšovna se roku 1992 přesunula do Vinohrad. Podrobnou historii naleznete <a href="http://www.notredame.cz/rdomy.aspx?page=rehdomy&act=praha">ZDE</a>. Dnes zde také sídlí církevní MŠ a ZŠ Sv. Augustina - <a href="http://www.skolasvatehoaugustina.cz">http://www.skolasvatehoaugustina.cz</a>', 4, 1163),
(73, 72, 'ellrohir', '2015-02-09 14:32:00', 'Dnešní stav', 'Dnešní stav objektu', 4, 1034),
(74, 57, 'ellrohir', '2015-02-09 14:34:03', '704 - Lhotka', '<p>Lhotka je nejmenší součástí Prahy 4. Křižovatkou ulic "Mariánská", "Novodvorská" a "Zálesí" je rozdělena na dvě části. Součást Prahy tvoří spolu s Hodkovičkami od roku 1922.</p>\r\n<p>Dochovalo se jen málo původních staveb, většinu zástavby tvoří nové vily a panelové domy.</p>\r\n<p>Nejzajímavější dominantou je momentálně uzavřené koupaliště, k architektonickým památkám lze počítat kapličku sv. Petra a Pavla z roku 1830, kostel Panny Marie z roku 1935 a secesní vilu Voyta.</p>\r\n<p><i>Čerpáno z Wikipedie</i></p>', 4, 1107),
(76, 57, 'rakcesa', '2015-02-23 15:21:32', '705 - Kunratice', '<p>První zmínky o obci Kunratice se objevují koncem 13. století. Centrem byla tvrz, která stála v místech dnešního zámku naproti radnici v ulici K Libuši. Roku 1407 Kunratice odkoupil král Václav IV. a v nedalekém lese nechal postavit svůj lovecký hrádek pojmenovaný nepříliš nápaditě "Nový Hrad". Zde pobýval, když ho roku 1419 ranila mrtvice, o dva roky později hrad dobyli a vypálili Husité. Přestože už od té doby neby nikdy obýván, jsou pozůstatky jeho sklepení dodnes dobře patrné a v roce 2013 prošlo místo rekonstrukcí.</p>\r\n\r\n<p>Kunratice v příštích staletích několikrát změnily šlechtického majitele. Velký úpadek přišel za svobodného pána Petra z Liebentahlu, který coby účastník poraženého stavovského povstání musel po Bílé Hoře uprchnout a ves zpustla. Zůstaly zde prý pouze dva statky (grunty). Jakás takás obnova přišla až na konci 17. století.</p>\r\n\r\n<p>Barokní rozkvět pak přišel po roce 1721 díky rodu Golčů. Z té doby pochází například přestavba kostela sv. Jakuba. Kuntratice šlo v polovině 18. století považovat za "přímo ukázkový příklad pozdně feudálního hospodářství". Dnešní podoba zámku je z 19. století z doby vlády Korbů z Wiedenheimu.</p>\r\n\r\n<p>Konec 19. a počátek 20. století znamenal rozvoj spolků a institucí, které postupně předznamenávaly rozvoj z bezvýznamné vesnice na menší město - četnická stanice, dobrovolní hasiči, spolek Sokola, pošta a nakonec v roce 1935 též škola. Od roku 1925 sem jezdil autobus z Prahy. Součástí hlavního města se staly Kunratice na Nový rok 1968, od roku 1990 jsou samostatnou MČ Praha-Kunratice.</p>\r\n\r\n<p><i>- čerpáno z textu "Historie Kunratic" od Ing. Mydlarčíka</i></p>', 18, 1052),
(77, 76, 'rakcesa', '2015-02-23 16:34:03', 'Nový Hrad u Kunratic (dnešní stav)', 'Fotodokumentace místa po rekonstrukci dokončené v září 2013.', 25, 1090),
(78, 76, 'ellrohir', '2015-02-23 17:00:00', 'Nový Hrad u Kunratic (brožura)', 'Dílo A. Bartoníčka o hradu krále Václava IV. u Kunratic z roku 1940.', 11, 1065),
(79, 74, 'rakcesa', '2015-02-25 15:03:40', 'Dnešní stav - Koupaliště', 'Koupaliště Lhotka dnes', 16, 1124),
(80, 62, 'rakcesa', '2015-02-26 15:23:34', 'Jezerka', 'Jezerka Michle', 14, 1138),
(81, 74, 'ellrohir', '2015-03-08 11:00:00', 'Dnešní stav', 'Fotografie dnešní Lhotky', 6, 1105),
(82, 74, 'ellrohir', '2015-03-08 11:30:00', 'Lhotka - Dříve a dnes', 'Galerie srovnávacích fotografií historického a moderního stavu.', 4, 1142),
(83, 3, 'ellrohir', '2015-03-29 16:13:11', '312 - Klárův ústav', '<p>Kořeny tohoto zařízení sahají již do první dekády 19. století, kdy profesor Karlovy univerzity Aloys Klar založil svůj "Ústav pro slepé děti". Z jeho popudu vznikla též dobročinná nadace a v roce 1832, krátce před svou smrtí, "Ústav pro zaopatřování a zaměstnání dospělých slepců", pozdější "Klárův ústav".</p>\r\n\r\n<p>Původně sídlil na Malé Straně v místě, kterému se dnes nikoliv náhodou říká Klárov. Po 2. sv. válce otevřela své brány "Střední škola Aloyse Klara", která se nachází v Krči naproti Thomayerově nemocnici (Masarykovým domovům). Budova školy byla postavena v roce 1932. Více o ní si můžete přečíst <a href="http://www.spsaklara.cz/historie/36-struny-popis-stavby.html">ZDE</a>.</p>\r\n\r\n<p>Dnes jde o jediné středoškolské odborné učiliště v ČR, které se věnuje zrakově postiženým.</p>', 4, 1147),
(85, 4, 'rakcesa', '2015-03-31 09:37:48', '507 - Doprava v Krči a okolí', 'Historické fotografie místní hromadné dopravy', 30, 1157),
(86, 57, 'rakcesa', '2015-06-14 12:02:49', '706 - Braník', '<a href="http://cs.wikipedia.org/wiki/Bran%C3%ADk">Informace o čtvrti</a>', 5, 1195),
(88, 86, 'rakcesa', '2015-06-14 12:42:01', 'Dominikánský dvůr', '<p>Barokní stavba patřící řádu Dominikánů, která sloužila také jako pivovar.<br />Více na odkazu: <a href="http://cs.wikipedia.org/wiki/Dominik%C3%A1nsk%C3%BD_dv%C5%AFr">http://cs.wikipedia.org/wiki/Dominikánský_dvůr</a></p>\r\n\r\n<p>Zde na fotkách aktuální stav v roce 2015, v blízké budoucnosti by se snad stavba měla dočkat rekonstrukce a obnovení provozu.</p>', 17, 1212),
(90, 86, 'rakcesa', '2015-06-14 13:08:54', 'Pivovar', '<p>Výrazná dominanta čtvrti Braníka a původní "domov" piva stejnojmenné značky. Od roku 2007 se už však pivo nevaří a&nbsp;další osud areálu je nejasný.\r\n<br />Více na odkazu: <a href="http://cs.wikipedia.org/wiki/Pivovar_Bran%C3%ADk">http://cs.wikipedia.org/wiki/Pivovar_Braník</a>\r\n</p>\r\n\r\n<p>Zde na fotkách aktuální stav v roce 2015.</p>', 13, 1223),
(91, 86, 'ellrohir', '2015-06-14 15:21:25', 'Ledárny', '<p>Chátrající areál budov na břehu Vltavy v Braníku. V první polovině 20. století zde bylo zázemí pro průmyslovou těžbu a skladování Vltavského ledu.\r\n<br />Více na odkazu: <a href="http://cs.wikipedia.org/wiki/Branick%C3%A9_led%C3%A1rny">http://cs.wikipedia.org/wiki/Branické_ledárny</a>\r\n</p>\r\n\r\n<p>Zde na fotkách aktuální stav v roce 2015.</p>', 7, 1233),
(92, 2, 'ellrohir', '2015-07-06 11:18:35', 'Srovnávací fotografie', 'Galerie srovnávacích snímků "dříve a dnes".', 9, 1289),
(94, 32, 'rakcesa', '2015-07-09 15:01:19', '408 - Krčská vodárna', '<p><b>Članek z novin, Jaroslav Jásek</b><br />Na hráně krčské stráně, v trojúhelníku, který tvoří ulice ševce Matouše, Zachova a U krčské vodárny, stála ještě ve třicátých letech tohoto století vodárenská věž. Mnoho informaci se o tomto věžovém vodojemu nedochovalo. Čtrnáct metrů vysoká železobetonová stavba v sobě ukrývala nádrž (průměr 4,6 m, výška vody 5 m) o kubatuře 83 m3. Byla postavena údajně obcí Krč v roce 1912 a ve dvacátých letech byla opravována, je známo, že fungovala v roce 1926, pak zprávy mizí. Tato vodárna zpočátku zásobovala oblast Horní a Dolní Krče pitnou vodou z nedaleké studny. Později byl celý systém přepojen na vodárnu na Zelené lišce. Jediné, co po vodárně zbylo, je název ulice a fotografie. Archív mlčí...</p>\r\n\r\n<p>\r\nADRESA: Praha 4 - Krč, č. kat. 1528/1, ul. U Krčské vodárny.<br />\r\nPŮVODNÍ STAV: <br />Funkce: Věžový vodojem pro pitnou vodu.<br />\r\nMajitel: Krčská obec.<br />\r\nAutor a rok výstavby: Projekční kancelář Společné vodárny, 1912.<br />\r\nSOUČASNÝ STAV: Zbořeno asi ve 30. letech 20. století.\r\n</p>', 2, 1236),
(95, 4, 'rakcesa', '2015-08-17 13:33:55', '599 - Krč v okrese Písek', 'Vesnice u Protivína význačná tím, že se jmenuje stejně jako ta naše Krč Pražská :)', 6, 1299);

-- --------------------------------------------------------

--
-- Table structure for table `elrh_gallery_images`
--

CREATE TABLE IF NOT EXISTS `elrh_gallery_images` (
  `id` int(8) NOT NULL,
  `author` varchar(50) COLLATE latin2_czech_cs NOT NULL,
  `created` datetime NOT NULL,
  `gallery` int(4) NOT NULL,
  `ord` int(7) DEFAULT '0',
  `name` varchar(100) COLLATE latin2_czech_cs NOT NULL,
  `dscr` text COLLATE latin2_czech_cs,
  `image` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `prev` int(8) DEFAULT '0',
  `next` int(8) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=1310 DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs;

--
-- Dumping data for table `elrh_gallery_images`
--

INSERT INTO `elrh_gallery_images` (`id`, `author`, `created`, `gallery`, `ord`, `name`, `dscr`, `image`, `prev`, `next`) VALUES
(10, 'rakcesa', '2010-03-02 08:33:11', 1, 9, 'Krč 09', 'Horní a Dolní Krč', '1267515191.jpg', 491, 704),
(11, 'rakcesa', '2010-03-02 08:34:32', 1, 12, 'Krč ', 'Krč', '1267515271.jpg', 15, 549),
(12, 'rakcesa', '2010-03-02 08:35:38', 1, 5, 'Krč ', 'Dolní Krč', '1267515338.jpg', 14, 284),
(13, 'rakcesa', '2010-03-02 08:37:29', 1, 3, 'Krč 12', 'KRČ - PRAHA', '1267515449.jpg', 548, 14),
(14, 'rakcesa', '2010-03-02 08:39:02', 1, 4, 'Krč ', 'Pozdrav z Krče', '1267515542.jpg', 13, 12),
(15, 'rakcesa', '2010-03-02 08:40:05', 1, 11, 'Krč ', 'Krč - různá místa', '1267515605.jpg', 704, 11),
(16, 'rakcesa', '2010-03-02 08:41:32', 1, 32, 'Krč ', 'Foceno ze stráně, dnes ulici Rozárčina.', '1267515692.jpg', 699, 485),
(17, 'rakcesa', '2010-03-02 08:42:56', 1, 19, 'Krč ', 'Dolní Krč', '1267515776.jpg', 217, 29),
(25, 'rakcesa', '2010-03-02 09:02:49', 1, 22, 'Krč', 'Krč - Villy', '1267516969.jpg', 30, 990),
(27, 'rakcesa', '2010-03-02 09:05:00', 1, 17, 'Krč ', 'Krčské dominanty, rok 1913', '1267517100.jpg', 28, 217),
(28, 'rakcesa', '2010-03-02 09:06:17', 1, 16, 'Krč ', 'Pozdrav z Horní Krče', '1267517177.jpg', 551, 27),
(29, 'rakcesa', '2010-03-02 09:07:59', 1, 20, 'Krč ', 'Dolní Krč - Celkový pohled', '1267517279.jpg', 17, 30),
(30, 'rakcesa', '2010-03-02 09:09:26', 1, 21, 'Krč ', 'Horní Krč - Dolní Krč', '1267517366.jpg', 29, 25),
(31, 'rakcesa', '2010-03-02 09:10:59', 1, 1, 'Krč', 'Praha XIV - Dolní Krč a její dominanty', '1267517459.jpg', 0, 548),
(132, 'rakcesa', '2010-03-05 11:33:11', 25, 3, 'Kaplička', 'Tentýž pohled, ovšem v poněkud kvalitnějším provedení.(autorem snímku je pan Papírník - 1978)', '1267785191.jpg', 641, 782),
(133, 'rakcesa', '2010-03-05 11:34:05', 37, 1, 'Škola', 'A pohled z větší dálky, od západu.', '1267785244.jpg', 0, 134),
(134, 'rakcesa', '2010-03-05 11:34:48', 37, 2, 'Škola', 'V době, kdy ještě sloužila svému účelu.', '1267785288.jpg', 133, 137),
(136, 'rakcesa', '2010-03-05 11:38:13', 13, 7, 'Zbouraná Krč', 'Od kapličky nahoru', '1267785493.jpg', 717, 676),
(137, 'rakcesa', '2010-03-05 11:39:43', 37, 3, 'Škola', 'Vidšět je jak budova školy, tak přilehlá kavárna, která zde kdysi byla.', '1267785583.jpg', 134, 139),
(138, 'rakcesa', '2010-03-05 11:45:22', 13, 1, 'Zbouraná Krč', 'Od Burešů ke škole', '1267785922.jpg', 0, 914),
(139, 'rakcesa', '2010-03-05 11:46:48', 37, 4, 'Škola', 'Budova školy v době, kdy už se stejně jako okolí bourala.', '1267786008.jpg', 137, 141),
(141, 'rakcesa', '2010-03-05 11:47:32', 37, 5, 'Škola', 'Během demolice.', '1267786052.jpg', 139, 0),
(142, 'rakcesa', '2010-03-05 11:49:07', 25, 7, 'Kaplička', 'Za Hotelem Klimš. Je vidět kaplička a nahoře na kopci dnes už též neexistující budova Armabetonu.(autorem snímku je pan Papírník - 1978)', '1267786146.jpg', 783, 1263),
(146, 'rakcesa', '2010-03-07 12:12:58', 42, 2, 'Lesní divadlo v Krči', 'Plakát', '1267960378.jpg', 148, 147),
(147, 'rakcesa', '2010-03-07 12:13:48', 42, 3, 'Lesní divadlo v Krči', 'Plakát', '1267960428.jpg', 146, 230),
(148, 'rakcesa', '2010-03-07 12:15:50', 42, 1, 'Lesní divadlo v Krči', 'Plakát', '1267960550.jpg', 0, 146),
(188, 'rakcesa', '2010-03-11 12:05:33', 36, 2, 'Hotel Klimš', 'Hotel Klimš se nacházel zhruba v místech, kde dnes Jižní spojka přetíná ulici Sulickou. Většina dřívější zástavby v údolí, kudy Jižní spojka vede zmizela při stavbě této dopravní tepny.', '1268305533.jpg', 677, 504),
(190, 'rakcesa', '2010-03-11 12:13:13', 13, 9, 'Zbouraná Krč', 'Klimeš (zřejmě roh budovy vlevo?)', '1268305993.jpg', 676, 191),
(191, 'rakcesa', '2010-03-11 12:14:53', 13, 10, 'Zbouraná Krč', 'Klimeš - demolice (srov. s předchozím)', '1268306093.jpg', 190, 344),
(194, 'rakcesa', '2010-03-13 09:49:41', 5, 5, 'Lesní divadlo v Krči', 'Dramatický soubor "VLAST" v Krčí', '1268470181.jpg', 229, 197),
(197, 'rakcesa', '2010-03-13 09:51:16', 5, 6, 'Lesní divadlo', 'Dramatický soubor "VLAST" v Krčí\r\n          ', '1268470276.jpg', 194, 450),
(198, 'rakcesa', '2010-03-13 09:52:08', 5, 11, 'Lesní divadlo', 'Asi hra Vojnarka', '1268470326.jpg', 317, 314),
(209, 'rakcesa', '2010-03-15 10:43:53', 2, 5, 'Mapa', 'Letecký pohled - dnešní stav', '1268646233.jpg', 391, 0),
(211, 'rakcesa', '2010-03-15 10:57:00', 11, 3, 'Mapa', 'S vyznačemím Lesního divadla v Krči', '1268647020.jpg', 515, 668),
(217, 'rakcesa', '2010-04-03 15:28:14', 1, 18, 'Krč 36', 'Krč', '1270301294.jpg', 27, 17),
(229, 'rakcesa', '2010-04-25 08:36:45', 5, 4, 'Lesní divadlo', 'Asi v roce 1932', '1272177404.jpg', 710, 194),
(230, 'rakcesa', '2010-04-25 08:42:24', 42, 4, 'Lesní divadlo', 'Beseda o divadle dne 20. března 1985', '1272177744.jpg', 147, 993),
(278, 'rakcesa', '2010-06-03 22:19:29', 1, 26, 'Krč', 'A černobíle...', '1275596369.jpg', 538, 511),
(284, 'rakcesa', '2010-08-03 13:04:02', 1, 6, 'Krč', '', '1280833441.jpg', 12, 288),
(286, 'rakcesa', '2010-10-19 14:06:45', 72, 1, 'Dům Školských sester de N.D.', 'Rok 1919-1920. Na fotografiích domu je vidět tehdejší stav. Kaple vpravo byla zbořena, na jejím místě byla přistavěna tělocvična a hlavní objekt je dnes výrazně větší.', '1287490004.jpg', 0, 1032),
(287, 'rakcesa', '2010-10-25 15:52:44', 1, 28, 'Krč', 'Panorama staré Krče s pohledem na Šimsovo sanatorium', '1288014764.jpg', 511, 482),
(288, 'rakcesa', '2010-10-25 16:31:58', 1, 7, 'Krč', '', '1288017117.jpg', 284, 491),
(300, 'rakcesa', '2010-10-26 16:19:46', 41, 1, 'Lesní divadlo', '01_Založení', '1288102783.jpg', 0, 301),
(301, 'rakcesa', '2010-10-26 16:20:15', 41, 2, 'Lesní divadlo', '02_Založení', '1288102814.jpg', 300, 737),
(313, 'rakcesa', '2010-10-28 08:58:35', 5, 9, 'Lesní divadlo', '', '1288249115.jpg', 316, 317),
(314, 'rakcesa', '2010-10-28 08:59:29', 5, 12, 'Lesní divadlo', 'Asi hra Vojnarka', '1288249169.jpg', 198, 315),
(315, 'rakcesa', '2010-10-28 08:59:50', 5, 13, 'Lesní divadlo', 'Asi hra Vojnarka', '1288249190.jpg', 314, 452),
(316, 'rakcesa', '2010-10-29 14:53:12', 5, 8, 'Lesní divadlo', 'Asi hra Vojnarka', '1288356792.jpg', 450, 313),
(317, 'rakcesa', '2010-10-29 14:56:00', 5, 10, 'Lesní divadlo', 'Asi hra Vojnarka', '1288356960.jpg', 313, 198),
(338, 'rakcesa', '2010-11-06 12:05:18', 23, 4, 'Fruta', 'Pohled od Sokolovny v době, kdy údolím ještě nevedla Jižní spojka.', '1289041518.jpg', 660, 339),
(339, 'rakcesa', '2010-11-06 12:06:47', 23, 5, 'Fruta', 'Z Videňské', '1289041605.jpg', 338, 341),
(340, 'rakcesa', '2010-11-06 12:07:21', 23, 7, 'Fruta', 'Pohled severním směrem, zpoza malého rybníka u dnešní zastávky MHD Michelský les.', '1289041641.jpg', 341, 342),
(341, 'rakcesa', '2010-11-06 12:08:49', 23, 6, 'Fruta', 'Z Videňské', '1289041729.jpg', 339, 340),
(342, 'rakcesa', '2010-11-06 12:09:46', 23, 8, 'Fruta(Pivovar)', 'Z Videňské', '1289041786.jpg', 340, 980),
(344, 'rakcesa', '2010-11-06 12:15:51', 13, 11, 'Zbouraná Krč', 'Od nového nádraží pohled směrem na západ. V pozadí kopec Barrandova, vpravo na obzoru Zelený pruh.', '1289042151.jpg', 191, 345),
(345, 'rakcesa', '2010-11-06 12:16:55', 13, 12, 'Zbouraná Krč', 'Od nového nádraží pohled na severozápad. Objekt uprostřed by měl být hotel Klimeš, vpravo od něj Kaplička, která jediná z budov v popředí přežila stavbu Jižní spojky.', '1289042207.jpg', 344, 346),
(346, 'rakcesa', '2010-11-06 12:18:01', 13, 13, 'Zbouraná Krč', 'Pohled na sever k Ryšánce. Budovy v popředí zmizely během stavby Jižní spojky.', '1289042281.jpg', 345, 347),
(347, 'rakcesa', '2010-11-06 12:18:45', 13, 14, 'Zbouraná Krč', 'A konečně pohled směrem severovýchodním, zhruba tam, kde se dnes nachází vysoká zástavba kolem Budějovické. Zchátralých objektů bývalých ledáren v popředí jako jedněch z mála škoda nebyla, za stromy je skrytá budova staré školy. Také tyto stavby zmizely při stavbě Jižní spojky. ', '1289042325.jpg', 346, 695),
(349, 'rakcesa', '2010-11-06 12:39:08', 8, 24, 'Šimsovo sanatorium', 'Pohled do lázeňského bazénu', '1289043548.jpg', 788, 789),
(350, 'rakcesa', '2010-11-06 12:39:39', 1, 39, 'Krč', 'Fotbalové utkání v areálu "Za nádražím" v pravo Višňovka vzadu Kunratický les', '1289043579.jpg', 547, 353),
(351, 'rakcesa', '2010-11-06 12:40:35', 1, 41, 'Krč', 'Vilová zástavba při pohledu z Višňovky', '1289043634.jpg', 353, 796),
(352, 'rakcesa', '2010-11-06 12:41:11', 8, 26, 'Sanatorium', 'Od pomníku padlých v 1. sv. válce', '1289043671.jpg', 789, 1300),
(353, 'rakcesa', '2010-11-06 12:42:26', 1, 40, 'Krč', 'U dnešního Domova duchodců v ulici Sulická. Pohled zřejmě směrem do vilek dnešní Lhotky.', '1289043746.jpg', 350, 351),
(354, 'rakcesa', '2010-11-06 12:44:40', 8, 29, 'Sanatorium', 'Z Višňovky', '1289043880.jpg', 791, 790),
(355, 'rakcesa', '2010-11-06 12:45:21', 1, 44, 'Krč', 'Zhruba na úrovni dnešní křižovatky Sulická/Matek/Pod Višňovkou, pohled směrem na jih - vpravo je vidět plot a dnešní vrátnice areálu Šimsova sanatoria. Levou část obrázku by dnes zakrýval rozsáhlý blok bytových domů.', '1289043921.jpg', 1239, 493),
(388, 'rakcesa', '2010-11-12 11:41:22', 2, 2, 'Krč', 'Pohled z Budějovické stráně směrem k jihu. V popředí Jižní spojka, za ní vlevo je opravený Welzův zámek a budova Nádraží Praha-Krč. Za železniční tratí vilová zástavba. Uprostřed žlutá budova Šimsova santoria. Vzadu za lesem, který ukrývá zbytky Lesního divadla Sídliště Krč a vpravo nahoře Novodvorská.', '1289558481.jpg', 389, 390),
(389, 'rakcesa', '2010-11-12 11:42:48', 2, 1, 'Krč', 'Pohled z Budějovické stráně směrem na jihozápad. Vlevo Kunratický les a areál Thomayerovy nemocnice, v popředí skrytá Jižní Spojka, za ní areál bývalé Fruty, pásem zeleně oddělený od železniční trasy 210. Volné prostranství uprostřed patří Zahradnické škole, vzadu a vpravo nahoře jsou vidět panelové domy Sídliště Krč. Vpravo uprostřed začíná vilová zástavba.', '1289558566.jpg', 0, 388),
(390, 'rakcesa', '2010-11-12 11:54:02', 2, 3, 'Krč', 'Pohled ze stráně nad Kunratickým potokem západním směrem do otevřeného údolí Kunratického potoka. V popředí areál autobazaru při ulici Vídeňská, doleva směr Thomayerova nemocnice, doprava směr Kačerov. Vlevo je vidět budova Šimsova sanatoria. Uprostřed Jižní spojka a sklady stabebnin v ulici U Krčského Nádraží. V pozadí Branická zástavba a úplně vzadu Barrandov na druhém břehu Vltavy.', '1289559242.jpg', 388, 391),
(391, 'rakcesa', '2010-11-12 11:54:33', 2, 4, 'Krč', 'Pohled ze stráně nad Kunratickým potokem na severozápad. Vpravo je vidět část obytné zástavby v okolí Zeleného pruhu, která přechází ve čtvrť Braník. Na horizontu budovy na levém břehu Vltavy. V zeleni ve spodní části obrázku se ukrývají Krčské vilky.', '1289559273.jpg', 390, 209),
(449, 'rakcesa', '2011-02-18 11:25:13', 42, 6, 'Lesní divadlo', 'Plakát', '1298024713.jpg', 993, 0),
(450, 'rakcesa', '2011-02-18 14:23:54', 5, 7, 'Lesní divadlo', '', '1298035433.jpg', 197, 316),
(451, 'rakcesa', '2011-02-18 21:45:06', 5, 15, 'Lesní divadlo', '', '1298061906.jpg', 452, 455),
(452, 'rakcesa', '2011-02-18 21:45:48', 5, 14, 'Lesní divadlo', '', '1298061948.jpg', 315, 451),
(453, 'rakcesa', '2011-02-18 21:46:27', 5, 18, 'Lesní divadlo', '', '1298061987.jpg', 454, 0),
(454, 'rakcesa', '2011-02-18 21:47:04', 5, 17, 'Lesní divadlo', '', '1298062024.jpg', 455, 453),
(455, 'rakcesa', '2011-02-18 21:47:52', 5, 16, 'Lesní divadlo', '', '1298062072.jpg', 451, 454),
(456, 'rakcesa', '2011-02-18 21:54:59', 5, 9, 'Lesní divadlo', '33_Dramatický soubor v Krči    VLAST_Asi hra Prach a Broky', '1298062499.jpg', 315, 457),
(457, 'rakcesa', '2011-02-18 21:55:34', 5, 10, 'Lesní divadlo', '34_Dramatický soubor v Krči    VLAST_Asi hra Prach a Broky', '1298062533.jpg', 456, 458),
(458, 'rakcesa', '2011-02-18 21:56:07', 5, 11, 'Lesní divadlo', '35_Dramatický soubor v Krči    VLAST_Asi hra Prach a Broky', '1298062567.jpg', 457, 459),
(459, 'rakcesa', '2011-02-18 21:57:31', 5, 12, 'Lesní divadlo', '36_Dramatický soubor v Krči    VLAST_Asi hra Prach a Broky', '1298062650.jpg', 458, 460),
(460, 'rakcesa', '2011-02-18 21:59:35', 5, 13, 'Lesní divadlo', '37_Dramatický soubor v Krči    VLAST_Asi hra Prach a Broky', '1298062774.jpg', 459, 0),
(461, 'rakcesa', '2011-02-18 22:06:37', 14, 44, 'Lesní divadlo', 'Jak je vidět ze základního kamene, pokus o oživení Lesního divadla proběhl koncem 90. let.', '1298063197.jpg', 1173, 1176),
(462, 'rakcesa', '2011-02-18 22:08:32', 14, 35, 'Lesní divadlo', 'Rok 2010 - Zhruba uprostřed jsou betonové zbytky orchestřiště, jeviště bylo vlevo, na pravém (východním) svahu jsou ještě patrné dřevěné lavice z relativně nedávného pokusu Lesní divadlo oživit, který ale ztroskotal a areál tak opět chátrá a mizí v lese...', '1298063312.jpg', 0, 463),
(463, 'rakcesa', '2011-02-18 22:12:19', 14, 36, 'Lesní divadlo', 'Rok 2011 - pohled zpoza někdejšího jeviště směrem ke svahu, kde dříve seděli diváci. Opravené lavice postupně mizí...', '1298063539.jpg', 462, 1182),
(466, 'rakcesa', '2011-02-20 16:16:50', 12, 3, 'Legionaři', '', '1298215010.jpg', 0, 467),
(467, 'rakcesa', '2011-02-20 16:19:49', 12, 4, 'Legionaři', '', '1298215189.jpg', 466, 469),
(469, 'rakcesa', '2011-02-20 16:23:11', 12, 5, 'Legionaři', '', '1298215391.jpg', 467, 470),
(470, 'rakcesa', '2011-02-20 16:24:15', 12, 6, 'Legionaři', '', '1298215454.jpg', 469, 471),
(471, 'rakcesa', '2011-02-20 16:25:30', 12, 7, 'Legionaři', '', '1298215530.jpg', 470, 472),
(472, 'rakcesa', '2011-02-20 16:26:29', 12, 8, 'Legionaři', '', '1298215589.jpg', 471, 473),
(473, 'rakcesa', '2011-02-20 16:27:27', 12, 9, 'Legionaři', '', '1298215647.jpg', 472, 474),
(474, 'rakcesa', '2011-02-20 16:28:07', 12, 10, 'Legionaři', '', '1298215687.jpg', 473, 475),
(475, 'rakcesa', '2011-02-20 16:29:39', 12, 11, 'Legionaři', '', '1298215779.jpg', 474, 476),
(476, 'rakcesa', '2011-02-20 16:30:01', 12, 12, 'Legionaři', '', '1298215801.jpg', 475, 0),
(480, 'rakcesa', '2011-02-20 16:42:55', 45, 3, 'Sokol', 'Přijetí do sokola', '1298216575.jpg', 706, 0),
(481, 'rakcesa', '2011-02-20 16:43:15', 9, 3, 'Sokol', 'Sokolovna, která stojí dodnes', '1298216594.jpg', 497, 698),
(482, 'rakcesa', '2011-02-25 21:51:41', 1, 29, 'Krč', 'A totéž panorama jen v jiných barvách...', '1298667099.jpg', 287, 663),
(484, 'rakcesa', '2011-02-26 09:41:49', 39, 1, 'Krč', 'Bývalá restaurace "U Slunce". Ulice U Krčského nádraží vede doleva k   \r\n Vídeňské a doprava do Krčské vilové čtvrti. Vlevo a za pozicí fotografa vede železniční trať 210. Staré krčské nádraží se nacházelo naproti této stavbě, dnes je o pár set metrů dál na západ.', '1298709709.jpg', 0, 0),
(485, 'rakcesa', '2011-03-27 16:06:51', 1, 33, 'Krč', 'Zde se jedná o nynější ulici Dolnokrčskou. Pohled je focen z křižovatky ulic Dolnokrčská a Nad obcí I., na obrázku je vidět cesta odbočující doprava - nynější ulice Na staré cestě. Dům s dvorem a vzrostlými stromy, stojící hned na začátku této ulice, je někdejší zahradní restaurace U Vavrušků, v době mého dětství v něm bylo umístěno agitační středisko. V pozadí je vidět Welzův zámeček.<br /><br />(Autorkou popisku je paní Jana Vencková, děkujeme)', '1301234806.jpg', 16, 1162),
(487, 'rakcesa', '2011-04-25 15:41:53', 21, 20, 'Bývalá trať Nusle-Krč-Modřany', 'Pohled na dosud stojící viadukt, který se objevil na předchozích třech fotografiích. Nachází se v Severním konci Kunratického lesa v bezprostřední blízkosti Jižní spojky. Asfaltová silnice vede do areálu ulice Na Ovčinách v blízkosti metra Roztyly. Tento pohled je od západu.', '1303738913.jpg', 619, 489),
(488, 'rakcesa', '2011-04-25 15:49:10', 21, 12, 'Bývalá trať Nusle-Krč-Modřany', 'Toto malé přemostění úzkého potoka se nachází malý kus západně od viaduktu z předchozích snímků. Ze samotné železnice zbyly dnes už jen stále jasně patrné obrysy náspu. Koleje jsou dávno pryč.', '1303739348.jpg', 616, 830),
(489, 'rakcesa', '2011-04-25 15:54:27', 21, 21, 'Bývalá trať Nusle-Krč-Modřany', 'Tentýž kamenný most z druhé strany. Pohled severním směrem k Jižní spojce ukryté kdesi za budovou v pozadí.', '1303739665.jpg', 487, 835),
(491, 'rakcesa', '2011-05-14 17:43:03', 1, 8, 'Krč', '', '1305387774.jpg', 288, 10),
(493, 'rakcesa', '2011-06-03 18:51:58', 1, 45, 'Krč', 'Bloky moderních bytových domů, křížení současných ulic Za zelenou liškou a Senožatská (děkujeme za upřesnění panu Vladimíru Čermákovi)', '1307119918.jpg', 355, 991),
(497, 'rakcesa', '2011-07-03 14:04:18', 9, 2, 'Sokol', 'Odznak sokola Krč', '1309694658.jpg', 950, 481),
(504, 'rakcesa', '2011-08-06 21:39:08', 36, 3, 'Hotel Klimš', 'Okolí Klimšů', '1312659548.jpg', 188, 0),
(509, 'rakcesa', '2011-09-30 20:01:50', 5, 1, 'Lesní divadlo', 'Stavba', '1317405708.jpg', 0, 709),
(511, 'rakcesa', '2011-10-18 09:36:03', 1, 27, 'Krč', '...a ještě jednou v barvách', '1318923361.jpg', 278, 287),
(512, 'rakcesa', '2011-10-28 12:06:00', 1, 14, 'Krč', '', '1319796360.jpg', 549, 551),
(515, 'rakcesa', '2011-11-19 12:27:40', 11, 2, 'Mapa ', 'Braník,Krč,Pankrác - srov. s předchozím', '1321702060.jpg', 516, 211),
(516, 'rakcesa', '2011-11-19 12:28:21', 11, 1, 'Letecký pohled', 'Vlevo Braník, vpravo Krč, rovně  Pankrác', '1321702100.jpg', 0, 515),
(521, 'rakcesa', '2011-12-10 10:23:06', 7, 5, 'Restaurace U Labutě', 'Partie u rybníka (kresba od restaurace Labuť). Je vidět most staré železniční trati z Krče do Vršovic, ze kterého dnes zbylo už jen torzo kamenného pilíře vpravo.', '1323508985.jpg', 799, 527),
(522, 'rakcesa', '2011-12-10 10:36:02', 7, 1, 'Restaurace U Labutě', 'Nahoře dva pohledy na restauraci - z ulice od severu a detail na zahrádku. Dole "celkový pohled na Krč, ačkoliv se mohu mýlit, tak odhaduji že v "záběru" je Welzův zámek při od jihu.', '1323509760.jpg', 0, 524),
(523, 'rakcesa', '2011-12-10 10:50:31', 7, 3, 'Restaurace U Labutě', '', '1323510630.jpg', 524, 799),
(524, 'rakcesa', '2011-12-10 10:51:23', 7, 2, 'Restaurace U Labutě', '', '1323510680.jpg', 522, 523),
(527, 'rakcesa', '2011-12-10 10:57:16', 7, 6, 'Restaurace U Labutě', 'Foto cca ze 70. let. Restaurace od jihu.', '1323511034.jpg', 521, 528),
(528, 'rakcesa', '2011-12-10 11:04:57', 7, 7, 'Restaurace U Labutě', 'Fotografie cca ze 70. let. Objekt restaurace je na tomto snímku vidět vpravo uprostřed, vzadu železniční most na trati 210 a v pozadí zástavba okolo Kačerova.', '1323511494.jpg', 527, 797),
(529, 'rakcesa', '2011-12-13 10:57:23', 10, 1, 'Welzův zámek', 'Rok 1940', '1323770242.jpg', 0, 530),
(530, 'rakcesa', '2011-12-13 11:03:50', 10, 2, 'Welzův zámek', 'Rok asi 1977', '1323770630.jpg', 529, 532),
(532, 'rakcesa', '2011-12-13 11:16:13', 10, 3, 'Welzův zámek', 'Rok 1978', '1323771362.jpg', 530, 0),
(538, 'rakcesa', '2012-02-10 10:46:36', 1, 25, 'Krč', 'Pohled na Krčskou stráň', '1328867193.jpg', 990, 278),
(539, 'rakcesa', '2012-02-10 11:42:30', 19, 4, 'Hotel Chateau St. Havel', 'Podobné místo, na podzim (rok 2011)', '1328870546.jpg', 540, 773),
(540, 'rakcesa', '2012-02-10 11:50:30', 19, 3, 'Hotel Chateau St. Havel', 'Od západu (rok 2006)', '1328871022.jpg', 610, 539),
(547, 'rakcesa', '2012-03-03 20:46:35', 1, 38, 'Krč', 'Jezero v parku\r\nRestaurace "Anglický park" v Krči', '1330803994.jpg', 580, 350),
(548, 'rakcesa', '2012-03-03 21:03:29', 1, 2, 'Krč', 'Motivy z Krče', '1330805008.jpg', 31, 13),
(549, 'rakcesa', '2012-03-03 21:04:41', 1, 13, 'Krč', '', '1330805081.jpg', 11, 512),
(551, 'rakcesa', '2012-03-03 21:06:10', 1, 15, 'Krč', '', '1330805170.jpg', 512, 28),
(576, 'rakcesa', '2012-03-19 13:32:08', 47, 2, 'Pozvánka', 'Pozvánka na maškarní ples v zimě 1950', '1332160323.jpg', 577, 578),
(577, 'rakcesa', '2012-03-19 13:33:50', 47, 1, 'Pozvánka', 'Pozvánka na maškarní ples v zimě 1949', '1332160425.jpg', 0, 576),
(578, 'rakcesa', '2012-03-19 13:38:49', 47, 3, 'Članek: Jan Škoda', 'Historické ohlédnutí za Masarykovými domovy v tisku', '1332160726.jpg', 576, 0),
(580, 'rakcesa', '2012-03-29 16:04:52', 1, 37, 'Krč', '', '1333029890.jpg', 984, 547),
(585, 'rakcesa', '2012-12-08 12:55:40', 6, 1, 'Masarykovy domovy', 'Pohled na celý areál ze svahu nad Kunratickým potokem. Hlavní budova s věžními hodinami je vpravo od komína, který dominuje tomuto snímku.', '1354967740.jpg', 0, 586),
(586, 'rakcesa', '2012-12-08 12:56:37', 6, 2, 'Masarykovy domovy', 'Pohled z "věže" centrálního pavilonu D východním směrem ke Kunratickému lesu', '1354967796.jpg', 585, 587),
(587, 'rakcesa', '2012-12-08 12:57:38', 6, 3, 'Masarykovy domovy', 'Pohled na severovýchod odkudsi z dnešního Tempa či Nových Dvorů. Za Kunratickým/Michelským lesem jsou v pozadí vidět vily starého Spořilova.', '1354967858.jpg', 586, 588),
(588, 'rakcesa', '2012-12-08 12:58:05', 6, 4, 'Masarykovy domovy', 'Letecký pohled Masarykových domovů od jihovýchodu.', '1354967885.jpg', 587, 612),
(593, 'rakcesa', '2012-12-08 13:04:19', 8, 1, 'Sanatorium', 'Pohled na Sanatorium dr. Šimsy od severu. Dnes už by byl tento výhled omezen později postavenými domy a také vzrostlými stromy ve svahu před budovou.', '1354968259.jpg', 0, 594),
(594, 'rakcesa', '2012-12-08 13:04:39', 8, 2, 'Sanatorium', 'Pohled směrem na severovýchod. Vpravo je malá budova vrátnice, horizont tvoří Budějovická stráň.', '1354968279.jpg', 593, 595),
(595, 'rakcesa', '2012-12-08 13:05:31', 8, 3, 'Sanatorium', 'Obrazové zpodobnění celého areálu Sanatoria při pohledu jihozápadním směrem. Řada budov dodnes stojí, avšak jsou už mnohem méně vidět přes vzrostlé stromy.', '1354968331.jpg', 594, 786),
(596, 'rakcesa', '2012-12-08 13:05:52', 8, 5, 'Sanatorium', 'Pohled od jihu na průčelí majestátní budovy. Dnes už budova vypadá jinak, došlo na ni k různým přístavbám.', '1354968352.jpg', 786, 599),
(597, 'rakcesa', '2012-12-08 13:08:08', 8, 7, 'Sanatorium', 'Pohled od východu, vlevo je vidět vrátnice. V místě fotografova stanoviště dnes stojí dlouhý bytový dům.', '1354968488.jpg', 599, 598),
(598, 'rakcesa', '2012-12-08 13:08:59', 8, 8, 'Sanatorium', 'Pohled přes vrátnici v severozápadním směru.', '1354968539.jpg', 597, 785),
(599, 'rakcesa', '2012-12-08 13:09:57', 8, 6, 'Sanatorium', 'Tato fotografie se už dnešní podobě blíží mnohem více. Všimněte si zejména přistavěného ochozu v prvním patře.', '1354968598.jpg', 596, 597),
(600, 'rakcesa', '2012-12-08 13:10:41', 8, 10, 'Sanatorium', '', '1354968641.jpg', 785, 696),
(601, 'rakcesa', '2012-12-08 13:11:10', 8, 12, 'Sanatorium', 'V místě někdejších polí dnes stojí vily a bytové domy, okolo Sanatoria zase vyrostly vysoké stromy. Ulice vedoucí vlevo zhruba odpovídá dnešní Višňové, nahoru podél areálu Sanatoria ubíhá dnešní Sulická.', '1354968670.jpg', 696, 603),
(603, 'rakcesa', '2012-12-08 13:13:07', 8, 13, 'Sanatorium', 'Stráň osázenou nízkými ovocnými stromy nahradil v dnešní době porost vysokých lesních stromů. A po silnici Sulická projíždí denně stovky aut.', '1354968787.jpg', 601, 604),
(604, 'rakcesa', '2012-12-08 13:13:29', 8, 14, 'Sanatorium', '', '1354968809.jpg', 603, 605),
(605, 'rakcesa', '2012-12-08 13:15:14', 8, 15, 'Sanatorium', 'Pohled od jihu. Vpravo jsou vidět dodnes existující vily v ulici U Krčského nádraží. Je však vidět, že v té době ještě nebyly postaveny budovy v trojúhelníku Sulická-Matek-U Krčského nádraží. Budějovická stráň v pozadí je dosud holá a pokrytá poli, dnes se tam tísní zbytky zeleně mezi hustým kobercem domů.', '1354968914.jpg', 604, 606),
(606, 'rakcesa', '2012-12-08 13:15:35', 8, 16, 'Sanatorium', 'Pohled na budovy v kopci v jižní části areálu (samotná hlavní budova je kdesi vlevo), které tam jsou dodnes.', '1354968935.jpg', 605, 607),
(607, 'rakcesa', '2012-12-08 13:15:52', 8, 17, 'Sanatorium', 'Celkový pohled na jižní část areálu.', '1354968952.jpg', 606, 975),
(608, 'rakcesa', '2012-12-08 13:16:27', 8, 21, 'Sanatorium', 'Detail na vrátnici', '1354968987.jpg', 846, 665),
(609, 'rakcesa', '2012-12-08 13:26:32', 4, 2, 'Pojízdne Kino v Krči', 'Asi 1925', '1354969592.jpg', 992, 887),
(610, 'rakcesa', '2012-12-08 13:32:07', 19, 2, 'Hotel Chateau St. Havel', 'Podobné místo, v zimě (rok 2006)', '1354969927.jpg', 611, 540),
(611, 'rakcesa', '2012-12-08 13:35:45', 19, 1, 'Hotel Chateau St. Havel', 'Od severu (rok 2004)', '1354970145.jpg', 0, 610),
(612, 'rakcesa', '2012-12-08 13:42:02', 6, 5, 'Masarykovy domovy', 'Pohled ze stráně nad Kunratickým potokem směrem na severozápad. Na poli v pozadí vyrostla později zástavba areálu Zálesí.', '1354970522.jpg', 588, 613),
(613, 'rakcesa', '2012-12-08 13:42:22', 6, 6, 'Masarykovy domovy', 'O kus dál na svahu...', '1354970542.jpg', 612, 794),
(614, 'rakcesa', '2012-12-08 13:42:59', 6, 9, 'Masarykovy domovy', 'Dvojsnímek - objektivy fotoaparátů upřeny proti sobě na centrální prvek v podobě věže s hodinami.', '1354970579.jpg', 795, 635),
(616, 'ellrohir', '2012-12-15 12:04:32', 21, 11, 'Bývalá trať Nusle-Krč-Modřany', 'A pohled na druhou stranu západním směrem, kde zbytky tratě zakryl areál skladů v ulici U Michelského lesa.', '1355569472.jpg', 617, 488),
(617, 'ellrohir', '2012-12-15 12:05:42', 21, 10, 'Bývalá trať Nusle-Krč-Modřany', 'Tudy kdysi jezdily vlaky - směrem na východ k Nuslím', '1355569542.jpg', 828, 616),
(618, 'ellrohir', '2012-12-15 12:07:05', 21, 14, 'Bývalá trať Nusle-Krč-Modřany', 'Pohled na násep trati z jihu. Je vidět opět most z předchozích dvou obrázků.', '1355569625.jpg', 830, 820),
(619, 'ellrohir', '2012-12-15 12:07:57', 21, 19, 'Bývalá trať Nusle-Krč-Modřany', 'Další z pohledů na zbytky trati zarostlé lesem. Zde jsme na lesní cestě vedoucí jihovýchodně od bývalé trati a díváme se k severu.', '1355569677.jpg', 829, 487),
(620, 'rakcesa', '2012-12-16 10:29:05', 26, 1, 'Pohlednice', 'Pohled na budovu bývalé Dívčí zahradnické školy (č.p. 389 ) v jižní části areálu. Do konce roku 2012 sloužila jako jedna z budov oční klinky Lexum. Foceno od severovýchodu.', '1355650145.jpg', 0, 776),
(621, 'rakcesa', '2012-12-16 10:29:34', 40, 1, 'Brožura', '', '1355650174.jpg', 0, 622),
(622, 'rakcesa', '2012-12-16 10:30:02', 40, 2, 'Brožura', '', '1355650202.jpg', 621, 623),
(623, 'rakcesa', '2012-12-16 10:30:48', 40, 3, 'Brožura', '', '1355650248.jpg', 622, 624),
(624, 'rakcesa', '2012-12-16 10:31:30', 40, 4, 'Brožura', '', '1355650290.jpg', 623, 625),
(625, 'rakcesa', '2012-12-16 10:31:45', 40, 5, 'Brožura', '', '1355650305.jpg', 624, 0),
(627, 'rakcesa', '2012-12-23 10:20:46', 24, 1, 'Restaurace Hájovna', 'Pohled na areál bývalé lesní restaurace', '1356254446.jpg', 0, 628),
(628, 'rakcesa', '2012-12-23 10:21:02', 24, 2, 'Restaurace Hájovna', 'Pohlednice s tématem restaurace Hájovna\r\n', '1356254462.jpg', 627, 632),
(629, 'rakcesa', '2012-12-23 10:21:21', 24, 4, 'Restaurace Hájovna', '', '1356254481.jpg', 632, 630),
(630, 'rakcesa', '2012-12-23 10:21:41', 24, 5, 'Restaurace Hájovna', '', '1356254501.jpg', 629, 0),
(632, 'rakcesa', '2012-12-23 10:32:13', 24, 3, 'Restaurace Hájovna', 'Podepsaná pohlednice s tématem restaurace Hájovna', '1356255133.jpg', 628, 629),
(633, 'rakcesa', '2012-12-23 15:20:55', 30, 2, 'Restaurace Hájovna', 'Pohled z cesty směrem proti jižnímu svahu nad bývalou restaurací. Zarostlé mladým porostem jsou vidět některé pozůstatky. (Rok 2006)', '1356272455.jpg', 634, 847),
(634, 'rakcesa', '2012-12-23 15:27:50', 30, 1, 'Restaurace Hájovna', 'Pohled od severu. Okolo bývalého areálu nyní vede cyklostezka a turistická trasa mezi Krčí a Roztyly. V lese lze rozpoznat už jen zbytky základů a sklepů. Jeden z betonových základů je vidět na snímku, vpravo od běžce. (Rok 2006)', '1356272870.jpg', 0, 633),
(635, 'rakcesa', '2012-12-23 15:30:01', 6, 10, 'Masarykovy domovy', 'Pohled na hlavní budovu, jižně od vjezdu do areálu.', '1356273001.jpg', 614, 1237),
(636, 'rakcesa', '2012-12-23 15:34:40', 6, 13, 'Masarykovy domovy', '"Kolonáda" :)', '1356273280.jpg', 1238, 0),
(638, 'rakcesa', '2012-12-23 15:40:08', 31, 5, 'Kaple sv. Anny', 'Autor - I, Krokodyl', '1356273608.jpg', 642, 1268),
(639, 'rakcesa', '2012-12-23 15:42:38', 31, 2, 'Kaple sv. Anny', 'Krčská kaplička focená z jihu. Pohled směřuje do kopce k Ryšánce. Nahoře je vidět budova bývalého Armabetonu, která už dnes nestojí, nahrazena novou výškovou budovou.\r\n', '1356273758.jpg', 0, 640),
(640, 'rakcesa', '2012-12-23 15:43:32', 31, 3, 'Kaple sv. Anny', 'Pohled od východu. V pozadí domy v ulici Branická.(Autor - Sečkár - 2013)', '1356273812.jpg', 639, 642),
(641, 'rakcesa', '2012-12-23 15:43:57', 25, 2, 'Kaplička', 'Krčská kaplička v době, kdy ještě existovala okolní zástavba. Ta později ustoupila stavbě Jižní spojky.(autorem snímku je pan Papírník - 1978)', '1356273837.jpg', 1261, 132),
(642, 'rakcesa', '2012-12-23 15:50:04', 31, 4, 'Kaple sv. Anny', '', '1356274204.jpg', 640, 638),
(654, 'rakcesa', '2012-12-27 13:07:08', 23, 1, 'Pivovár', '', '1356610028.jpg', 0, 659),
(659, 'rakcesa', '2012-12-27 13:10:51', 23, 2, 'Pivovar', '', '1356610251.jpg', 654, 660),
(660, 'rakcesa', '2012-12-27 13:13:26', 23, 3, 'Pivovar', '', '1356610406.jpg', 659, 338),
(663, 'rakcesa', '2012-12-28 15:56:07', 1, 30, 'Pozdrav z Krče', 'Pohled od Šimsova sanatoria', '1356706567.jpg', 482, 699),
(664, 'rakcesa', '2012-12-28 16:19:28', 38, 1, 'Restaurace a hotel Slunce', 'Pohled na budovu "U Slunce" v době, kdy ještě fungovala pro veřejnost. Ulice U Krčského nádraží vede doleva k   \r\n Vídeňské a doprava do Krčské vilové čtvrti. Vlevo a za pozicí fotografa vede železniční trať 210. Staré krčské nádraží se nacházelo naproti této stavbě, dnes je o pár set metrů dál na západ.', '1356707968.jpg', 0, 675),
(665, 'rakcesa', '2012-12-28 20:50:46', 8, 22, 'Sanatorium', 'Budova "Orient"', '1356724246.jpg', 608, 788),
(666, 'rakcesa', '2012-12-28 20:51:31', 17, 1, 'Kojenecký ústav', 'Budova čislo III. v jižní části Sanatoria', '1356724291.jpg', 0, 1309),
(667, 'rakcesa', '2012-12-28 20:53:05', 17, 3, 'Kojenecký ústav', 'Pohled na hlavní budou někdejšího Sanatoria od jihu', '1356724385.jpg', 1309, 680),
(668, 'rakcesa', '2012-12-28 20:55:55', 11, 4, 'Mapa', '', '1356724555.jpg', 211, 669),
(669, 'rakcesa', '2012-12-28 20:56:37', 11, 5, 'Mapa', '', '1356724597.jpg', 668, 730),
(670, 'rakcesa', '2012-12-29 10:31:12', 18, 1, 'Sokolovna', '', '1356773472.jpg', 0, 672),
(671, 'rakcesa', '2012-12-29 10:34:41', 9, 5, 'Sokolovna', 'Foceno z parku (dnes podchod pod Jižní spojkou)r.1976', '1356773681.jpg', 707, 0),
(672, 'rakcesa', '2012-12-29 10:37:50', 18, 2, 'Sokolovna', 'Pohled od jihu směrem k budově Sokolovny skrz podchod pod Jižní Spojkou', '1356773870.jpg', 670, 678),
(673, 'rakcesa', '2013-01-03 13:36:34', 13, 4, 'Zbouraná Krč', 'Poněkud žalostný pohled na rodný dům mého dědy, Aloise Papírníka', '1357216594.jpg', 945, 718),
(675, 'rakcesa', '2013-01-03 13:40:36', 38, 2, 'Restaurace a hotel Slunce', 'A ze stejného místa pohled na druhou stranu, ulicí U Krčského Nádraží. Hotel Slunce nevidíte vlevo... :)', '1357216836.jpg', 664, 0),
(676, 'rakcesa', '2013-01-03 13:43:41', 13, 8, 'Zbouraná Krč', '', '1357217021.jpg', 136, 190),
(677, 'rakcesa', '2013-01-03 14:09:50', 36, 1, 'Hotel Klimš', '', '1357218590.jpg', 0, 188),
(678, 'ellrohir', '2013-03-07 21:58:49', 18, 3, 'Mozaiky', 'Část kamenné mozaiky na zdi před Sokolovnou. Foceno na podzim 2011, od té doby stihli dílo poničit sprejeři.', '1362689929.jpg', 672, 679),
(679, 'ellrohir', '2013-03-07 21:59:19', 18, 4, 'Mozaiky', 'Část kamenné mozaiky na zdi před Sokolovnou. Foceno na podzim 2011, od té doby stihli dílo poničit sprejeři.', '1362689959.jpg', 678, 0),
(680, 'ellrohir', '2013-03-07 22:07:22', 17, 4, 'Kojenecký ústav', 'Hlavní budova skrytá mezi stromy při vzdáleném pohledu ze stráně pod Budějovickou', '1362690442.jpg', 667, 0),
(681, 'ellrohir', '2013-03-07 22:12:47', 14, 61, 'Lesní divadlo', 'Ještě v říjnu 2012 na severním konci bývalého areálu pevně stál fragment zdi, která zde kdysi tvořila součást větší kamenné a betonové struktury. Během zimy se však tento poslední kus poroučel do vodou vymleté strže...', '1362690767.jpg', 1188, 0),
(684, 'rakcesa', '2013-03-14 09:26:07', 15, 1, 'Thomajerova nemocnice', 'Thomajerova nemocnice', '1363249567.jpg', 0, 685),
(685, 'rakcesa', '2013-03-14 09:26:24', 15, 2, 'Thomajerova nemocnice', 'Thomajerova nemocnice', '1363249584.jpg', 684, 686),
(686, 'rakcesa', '2013-03-14 09:26:38', 15, 3, 'Thomajerova nemocnice', 'Thomajerova nemocnice', '1363249598.jpg', 685, 687),
(687, 'rakcesa', '2013-03-14 09:26:52', 15, 4, 'Thomajerova nemocnice', 'Thomajerova nemocnice', '1363249612.jpg', 686, 688),
(688, 'rakcesa', '2013-03-14 09:27:54', 15, 5, 'Thomajerova nemocnice', 'Thomajerova nemocnice', '1363249674.jpg', 687, 0),
(689, 'rakcesa', '2013-03-14 20:18:36', 13, 16, 'Zbouraná Krč', 'Totéž místo, jen rybník je vypuštěný...', '1363288715.jpg', 695, 747),
(690, 'rakcesa', '2013-03-14 20:20:18', 13, 22, 'Zbouraná Krč', 'Ledárny, rok 1977, vpravo cesta k Welzovu zámku, železniční trať za fotografem', '1363288818.jpg', 724, 691),
(691, 'rakcesa', '2013-03-14 20:22:07', 13, 23, 'Zbouraná Krč', 'Ledárny, rok 1977, vlevo Welzův zámek, vzadu vykukuje budova Nádraží Krč', '1363288927.jpg', 690, 692),
(692, 'rakcesa', '2013-03-14 20:23:06', 13, 24, 'Zbouraná Krč', 'Ledárny, rok 1977, vpravo Welzův zámek', '1363288986.jpg', 691, 693),
(693, 'rakcesa', '2013-03-14 20:25:29', 13, 25, 'Zbouraná Krč', 'Ledárny, rok 1977', '1363289129.jpg', 692, 715),
(695, 'rakcesa', '2013-03-15 12:06:17', 13, 15, 'Zbouraná Krč', 'Ledárny,asi rok 1977, vlevo Welzův zámek', '1363345577.jpg', 347, 689),
(696, 'rakcesa', '2013-03-15 18:49:03', 8, 11, 'Sanatorium', '', '1363369743.jpg', 600, 601),
(698, 'rakcesa', '2013-04-12 19:49:10', 9, 4, 'Sokol Krč', 'Odznak sokola Krč', '1365788950.jpg', 481, 707),
(699, 'rakcesa', '2013-06-27 16:45:57', 1, 31, 'Krč', 'Pohled na Dolní Krč. Nejvyšší budova na obzoru je Endrštův hudební ústav', '1372344357.jpg', 663, 16),
(700, 'rakcesa', '2013-07-31 08:52:03', 20, 2, 'Dětský útulek sv. Terezičky', 'Adresa (zřejmě): Dolní Krč 300', '1375253523.jpg', 701, 0),
(701, 'rakcesa', '2013-07-31 08:53:32', 20, 1, 'Pensionát', 'Cornelia', '1375253612.jpg', 0, 700),
(702, 'rakcesa', '2013-07-31 09:50:12', 22, 2, 'Nádraží', 'Staré nádraží v Krči', '1375257012.jpg', 1161, 0),
(703, 'rakcesa', '2013-09-07 13:31:44', 74, 1, 'Daliborka', 'Restaurace Daliborka, dnes Vila Voyta na adrese K Novému dvoru 124/54.', '1378553504.jpg', 0, 1098),
(704, 'rakcesa', '2013-09-13 16:53:44', 1, 10, 'Krč', '', '1379084024.jpg', 10, 15),
(705, 'rakcesa', '2013-09-14 10:03:23', 45, 1, 'Obalka', '', '1379145803.jpg', 0, 706),
(706, 'rakcesa', '2013-09-14 10:04:20', 45, 2, 'Razitko', '', '1379145860.jpg', 705, 480),
(707, 'rakcesa', '2013-09-24 15:53:32', 9, 4, 'Narukávník', '', '1380030812.jpg', 698, 671),
(709, 'rakcesa', '2013-10-02 15:28:27', 5, 2, 'Lesní divadlo', '', '1380720507.jpg', 509, 710),
(710, 'rakcesa', '2013-10-02 15:30:33', 5, 3, 'Lesní divadlo', '', '1380720633.jpg', 709, 229),
(711, 'rakcesa', '2013-10-21 20:39:29', 13, 27, 'Zbouraná Krč', '', '1382380769.jpg', 715, 713),
(712, 'rakcesa', '2013-10-21 20:40:23', 13, 20, 'Zbouraná Krč', '', '1382380823.jpg', 898, 724),
(713, 'rakcesa', '2013-10-21 20:42:35', 13, 28, 'Zbouraná Krč', '', '1382380955.jpg', 711, 714),
(714, 'rakcesa', '2013-10-21 20:43:31', 13, 29, 'Zbouraná Krč', '', '1382381011.jpg', 713, 719),
(715, 'rakcesa', '2013-10-21 20:45:13', 13, 26, 'Zbouraná Krč', '', '1382381113.jpg', 693, 711),
(717, 'rakcesa', '2013-10-21 21:00:09', 13, 6, 'Zbouraná Krč', '', '1382382009.jpg', 718, 136),
(718, 'rakcesa', '2013-10-21 21:01:24', 13, 5, 'Zbouraná Krč', '', '1382382084.jpg', 673, 717),
(719, 'rakcesa', '2013-10-21 21:04:30', 13, 30, 'Zbouraná Krč', '', '1382382270.jpg', 714, 723),
(720, 'rakcesa', '2013-10-21 21:05:57', 13, 32, 'Zbouraná Krč', '', '1382382357.jpg', 723, 721),
(721, 'rakcesa', '2013-10-21 21:08:06', 13, 33, 'Zbouraná Krč', '', '1382382486.jpg', 720, 722),
(722, 'rakcesa', '2013-10-21 21:08:39', 13, 34, 'Zbouraná Krč', '', '1382382519.jpg', 721, 725),
(723, 'rakcesa', '2013-10-21 21:09:11', 13, 31, 'Zbouraná Krč', '', '1382382551.jpg', 719, 720),
(724, 'rakcesa', '2013-10-21 21:09:37', 13, 21, 'Zbouraná Krč', '', '1382382577.jpg', 712, 690),
(725, 'rakcesa', '2013-10-21 21:10:06', 13, 35, 'Zbouraná Krč', '', '1382382606.jpg', 722, 726),
(726, 'rakcesa', '2013-10-21 21:10:38', 13, 36, 'Zbouraná Krč', '', '1382382638.jpg', 725, 727),
(727, 'rakcesa', '2013-10-21 21:11:02', 13, 37, 'Zbouraná Krč', '', '1382382662.jpg', 726, 937),
(728, 'rakcesa', '2013-10-21 21:12:29', 13, 80, 'Zbouraná Krč', '', '1382382749.jpg', 935, 816),
(730, 'rakcesa', '2013-10-21 22:18:38', 11, 6, 'Mapa', '', '1382386718.jpg', 669, 0),
(737, 'rakcesa', '2013-10-24 15:18:01', 41, 3, 'Lesní divadlo', '', '1382620681.jpg', 301, 738),
(738, 'rakcesa', '2013-10-24 15:21:00', 41, 4, 'Lesní divadlo', '', '1382620860.jpg', 737, 739),
(739, 'rakcesa', '2013-10-24 15:23:04', 41, 5, 'Lesní divadlo', '', '1382620984.jpg', 738, 740),
(740, 'rakcesa', '2013-10-24 15:25:14', 41, 6, 'Lesní divadlo', '', '1382621114.jpg', 739, 741),
(741, 'rakcesa', '2013-10-24 15:27:15', 41, 7, 'Lesní divadlo', '', '1382621235.jpg', 740, 742),
(742, 'rakcesa', '2013-10-24 15:29:19', 41, 8, 'Lesní divadlo', '', '1382621359.jpg', 741, 743),
(743, 'rakcesa', '2013-10-24 15:31:15', 41, 9, 'Lesní divadlo', '', '1382621475.jpg', 742, 744),
(744, 'rakcesa', '2013-10-24 15:33:05', 41, 10, 'Lesní divadlo', '', '1382621585.jpg', 743, 745),
(745, 'rakcesa', '2013-10-24 15:35:06', 41, 11, 'Lesní divadlo', '', '1382621706.jpg', 744, 746),
(746, 'rakcesa', '2013-10-24 15:36:40', 41, 12, 'Lesní divadlo', '', '1382621800.jpg', 745, 0),
(747, 'rakcesa', '2013-10-29 12:25:24', 13, 17, 'Zbouraná Krč', 'Bez Ledáren, asi rok 1978, vlevo Welzův zámek a budová Nádraží Krč', '1383045924.jpg', 689, 893),
(750, 'rakcesa', '2013-11-08 19:39:47', 43, 1, 'Brožura', '', '1383935987.jpg', 0, 751),
(751, 'rakcesa', '2013-11-08 19:40:22', 43, 2, 'Brožura', '', '1383936022.jpg', 750, 752),
(752, 'rakcesa', '2013-11-08 19:40:50', 43, 3, 'Brožura', '', '1383936050.jpg', 751, 753),
(753, 'rakcesa', '2013-11-08 19:41:19', 43, 4, 'Brožura', '', '1383936079.jpg', 752, 754),
(754, 'rakcesa', '2013-11-08 19:42:48', 43, 5, 'Brožura', '', '1383936168.jpg', 753, 755),
(755, 'rakcesa', '2013-11-08 19:43:15', 43, 6, 'Brožura', '', '1383936195.jpg', 754, 756),
(756, 'rakcesa', '2013-11-08 19:43:44', 43, 7, 'Brožura', '', '1383936224.jpg', 755, 757),
(757, 'rakcesa', '2013-11-08 19:44:06', 43, 8, 'Brožura', '', '1383936246.jpg', 756, 759),
(759, 'rakcesa', '2013-11-08 19:45:31', 43, 9, 'Brožura', '', '1383936331.jpg', 757, 760),
(760, 'rakcesa', '2013-11-08 19:46:41', 43, 10, 'Brožura', '', '1383936401.jpg', 759, 761),
(761, 'rakcesa', '2013-11-08 19:47:10', 43, 11, 'Brožura', '', '1383936430.jpg', 760, 762),
(762, 'rakcesa', '2013-11-08 19:47:36', 43, 12, 'Brožura', '', '1383936456.jpg', 761, 763),
(763, 'rakcesa', '2013-11-08 19:48:05', 43, 13, 'Brožura', '', '1383936485.jpg', 762, 764),
(764, 'rakcesa', '2013-11-08 19:48:53', 43, 14, 'Brožura', '', '1383936533.jpg', 763, 765),
(765, 'rakcesa', '2013-11-08 19:49:17', 43, 15, 'Brožura', '', '1383936557.jpg', 764, 766),
(766, 'rakcesa', '2013-11-08 19:49:52', 43, 16, 'Brožura', '', '1383936592.jpg', 765, 767),
(767, 'rakcesa', '2013-11-08 19:50:18', 43, 17, 'Brožura', '', '1383936618.jpg', 766, 768),
(768, 'rakcesa', '2013-11-08 19:50:48', 43, 18, 'Brožura', '', '1383936648.jpg', 767, 1093),
(769, 'rakcesa', '2013-11-08 19:57:34', 28, 2, 'Zahradnická škola', 'Pohled přes plot z ulice U kola (rok 2011)', '1383937054.jpg', 778, 777),
(770, 'rakcesa', '2013-11-08 19:58:00', 28, 6, 'Zahradnická škola', 'Pohled od vchodu pro pěší v ulici Pod Višňovkou (rok 2011)', '1383937080.jpg', 1092, 779),
(771, 'ellrohir', '2013-12-01 17:06:45', 44, 1, 'Oběžník náboženské obce církve českomoravské - s. 1', 'Přední strana', '1385914005.jpg', 0, 772),
(772, 'ellrohir', '2013-12-01 17:07:47', 44, 2, 'Oběžník náboženské obce církve českomoravské - s. 2', 'Zadní strana', '1385914067.jpg', 771, 0),
(773, 'ellrohir', '2013-12-01 17:21:52', 19, 5, 'Hotel Chateau St. Havel', 'Pohled od jihu, přes koleje železniční trati (rok 2006)', '1385914912.jpg', 539, 774),
(774, 'ellrohir', '2013-12-01 17:23:42', 19, 6, 'Hotel Chateau St. Havel', 'Pohled od severo-východu, přes přilehlý rybník, v době před otevřením hotelu, kdy se ještě dalo v okolí volně chodit, nyní je tento prostor oplocen a rybník slouží jako cvičené golfové odpaliště (rok 2004)', '1385915022.jpg', 773, 775),
(775, 'ellrohir', '2013-12-01 17:26:28', 19, 7, 'Hotel Chateau St. Havel', 'Detailnější pohled, foceno z hráze mezi rybníky skrz pletivo oplocení areálu (rok 2007)', '1385915188.jpg', 774, 1294),
(776, 'ellrohir', '2013-12-01 17:36:29', 26, 2, 'PhDr. Anna Berkovcová', 'Archivní novinový výstřižek o Dívčí zahradnické škole a její zakladatelce', '1385915789.jpg', 620, 1007),
(777, 'ellrohir', '2013-12-01 17:46:32', 28, 3, 'Zahradnická škola', 'Totéž, jen trochu jiný úhel (rok 2011)', '1385916392.jpg', 769, 949),
(778, 'ellrohir', '2013-12-01 17:48:19', 28, 1, 'Zahradnická škola', 'A ještě jednou, ještě trochu severněji (rok 2011)', '1385916499.jpg', 0, 769),
(779, 'ellrohir', '2013-12-01 17:52:07', 28, 7, 'Společenská zahrada', 'Školní budova v jižní části areálu, z ulice U Krčského nádraží (rok 2011). Nějaký čas zde bývalo volební místo pro náš volební okrsek, dokud se nepřestěhovalo do prostor Thomayerovy nemocnice', '1385916727.jpg', 770, 0),
(780, 'ellrohir', '2013-12-04 21:27:24', 16, 1, 'Restaurace U Labutě', 'Pohled na někdejší vjezd do dvora. Samotná budova restaurace je vpravo. Ještě před rekonstrukcí. (Rok 2006)', '1386188844.jpg', 0, 800),
(782, 'ellrohir', '2013-12-04 22:08:02', 25, 4, 'Kaplička', 'Z trochu jiného úhlu a v jiném ročním obdodbí.(autorem snímku je pan Papírník - 1978)', '1386191282.jpg', 132, 1262),
(783, 'ellrohir', '2013-12-04 22:11:49', 25, 6, 'Kaplička', 'A ještě z trochu větší dálky (autorem snímku je pan Berný)', '1386191509.jpg', 1262, 142),
(784, 'ellrohir', '2013-12-04 22:14:38', 25, 9, 'Po demolici', 'Okolí už jest vybouráno...rok 1979', '1386191678.jpg', 1263, 0),
(785, 'ellrohir', '2013-12-05 20:02:41', 8, 9, 'Sanatorium ', 'Téměř totéž, ale bez telegrafího sloupu...', '1386270160.jpg', 598, 600),
(786, 'ellrohir', '2013-12-05 20:08:45', 8, 4, 'Sanatorium', 'Podobný panoramatický pohled na areál', '1386270524.jpg', 595, 596),
(787, 'ellrohir', '2013-12-05 20:09:22', 8, 19, 'Sanatorium', 'Barevná ilustrace, pohled z jihu', '1386270562.jpg', 975, 846),
(788, 'ellrohir', '2013-12-05 20:10:29', 8, 23, 'Sanatorium', 'Budova "Orient" z jiného úhlu (severovýchod)', '1386270629.jpg', 665, 349),
(789, 'ellrohir', '2013-12-05 20:11:40', 8, 25, 'Sanatorium', 'Novější snímek při pohledu od vjezdové vrátnice', '1386270700.jpg', 349, 352),
(790, 'ellrohir', '2013-12-05 20:12:41', 8, 30, 'Sanatorium', 'Skica', '1386270754.jpg', 354, 0),
(791, 'ellrohir', '2013-12-05 20:13:40', 8, 28, 'Sanatorium', 'Budovy bývalých lázní v areálu', '1386270820.jpg', 1300, 354),
(792, 'ellrohir', '2013-12-05 20:18:49', 46, 1, 'Inzerát', 'Dobový inzerát z tisku', '1386271129.jpg', 0, 793),
(793, 'ellrohir', '2013-12-05 20:19:24', 46, 2, 'Inzerát', 'Dobový inzerát z tisku', '1386271163.jpg', 792, 0),
(794, 'ellrohir', '2013-12-05 20:29:44', 6, 7, 'Masarykovy domovy', 'A ještě z jiného úhlu', '1386271784.jpg', 613, 795),
(795, 'ellrohir', '2013-12-05 20:30:49', 6, 8, 'Masarykovy domovy', 'Další varianta této zřejmě oblíbené fotografické kompozice.', '1386271849.jpg', 794, 614),
(796, 'ellrohir', '2014-01-20 13:34:14', 1, 42, 'Krč', 'Několik pohledů na starou Krč - areál školy u Krčského hřibtova, domy u Ryšánky a budova hotelu Klimeš, která musela ustoupit Jižní Spojce.', '1390221254.jpg', 351, 1239),
(797, 'rakcesa', '2014-01-30 14:33:14', 7, 8, 'Krč', 'O pár let později směr nahoru, objekt restaurace je na tomto snímku vidět vlevo', '1391088794.jpg', 528, 798),
(798, 'rakcesa', '2014-01-30 14:33:32', 7, 9, 'Restaurace U Labutě', 'Auta už v ulici Thomayerova jezdí jen ve směru ke Kačerovu, hlavní provoz po Vídeňské se posunul o pár metrů západněji na rozšířenou silnici.', '1391088812.jpg', 797, 0),
(799, 'rakcesa', '2014-01-30 14:48:00', 7, 4, 'Restaurace U Labutě', 'Nahoře - pohled od jihu z ulice, ve které stojí (dnes Thomayerova). Domy naproti už pochopitelně nestojí. Dole - pohled přes rybník Labuť, zhruba tam, kde se k němu dnes dostává cyklostezka od Braníka.', '1391089680.jpg', 523, 521),
(800, 'rakcesa', '2014-01-30 15:23:27', 16, 2, 'Restaurace U Labutě', 'Přes ulici Vídeňská. Současný stav (2013)', '1391091807.jpg', 780, 810),
(801, 'rakcesa', '2014-01-30 15:23:54', 16, 4, 'Restaurace U Labutě', 'Současný stav (2013)', '1391091834.jpg', 810, 802),
(802, 'rakcesa', '2014-01-30 15:24:05', 16, 5, 'Restaurace U Labutě', 'Současný stav (2013)', '1391091845.jpg', 801, 803),
(803, 'rakcesa', '2014-01-30 15:24:32', 16, 6, 'Restaurace U Labutě', 'Současný stav (2013)', '1391091872.jpg', 802, 804),
(804, 'rakcesa', '2014-01-30 15:24:44', 16, 7, 'Restaurace U Labutě', 'Současný stav (2013)', '1391091884.jpg', 803, 805),
(805, 'rakcesa', '2014-01-30 15:24:56', 16, 8, 'Restaurace U Labutě', 'Současný stav (2013)', '1391091896.jpg', 804, 808),
(807, 'rakcesa', '2014-01-30 15:26:14', 16, 10, 'Restaurace U Labutě', 'Současný stav (2013)', '1391091974.jpg', 808, 0),
(808, 'rakcesa', '2014-01-30 15:26:30', 16, 9, 'Restaurace U Labutě', 'Současný stav (2013)', '1391091990.jpg', 805, 807),
(810, 'rakcesa', '2014-01-30 15:27:24', 16, 3, 'Restaurace U Labutě', 'Současný stav (2013)', '1391092044.jpg', 800, 801),
(816, 'rakcesa', '2014-02-03 19:41:05', 13, 81, 'Zbouraná Krč', '', '1391452865.jpg', 728, 936),
(817, 'ellrohir', '2014-02-21 20:45:58', 21, 16, ' Bývalá trať Nusle-Krč-Modřany ', 'Násep něco východněji, pohled k západu', '1393011958.jpg', 820, 818),
(818, 'ellrohir', '2014-02-21 20:47:52', 21, 17, ' Bývalá trať Nusle-Krč-Modřany ', 'Místo, kde se stopy někdejší tratě směrem k Nuslím vytrácejí', '1393012072.jpg', 817, 829),
(820, 'ellrohir', '2014-02-21 21:15:01', 21, 15, 'Bývalá trať Nusle-Krč-Modřany', 'A ještě jednou tentýž most. Detail při pohledu shora z náspu trati', '1393013701.jpg', 618, 817),
(821, 'ellrohir', '2014-02-21 21:41:57', 21, 3, 'Bývalá trať Nusle-Krč-Modřany', 'U vstupu do Krčského lesa směrem od Vídeňské (MHD "U Labutě"), tam kde cesta překonává Kuntatický potok, stojí zbytky bývalého mostního pilíře. <a href="index.php?page=gallery&iid=521">ZDE</a> je vidět přibližná podoba mostu, když byl ještě v provozu. Do dnešních dnů zbylo jen kamenné torzo, na kterém se sprejeři pěkně vyřádili.', '1393015317.jpg', 831, 823),
(822, 'ellrohir', '2014-02-21 21:45:02', 21, 5, 'Bývalá trať Nusle-Krč-Modřany', 'Pohled z druhé strany (od východu) prozrazuje, že z pilíře toho už zase tolik nezbylo.', '1393015502.jpg', 823, 824),
(823, 'rakcesa', '2014-02-22 10:08:33', 21, 4, 'Bývalá trať Nusle-Krč-Modřany', 'Tentýž pilíř z boku', '1393060113.jpg', 821, 822),
(824, 'rakcesa', '2014-02-22 10:08:47', 21, 6, 'Bývalá trať Nusle-Krč-Modřany', 'Tentýž pohled, v trochu širším kontextu. Je vidět, že z pilíře skutečně zbývají pouze obvodové stěny držící zeminu, která se za nimi postupně vrší. Vrcholek pilíře se pak postupně rozpadá.', '1393060127.jpg', 822, 826),
(826, 'rakcesa', '2014-02-22 10:09:17', 21, 7, 'Bývalá trať Nusle-Krč-Modřany', 'Výhled z pilíře na Vídeňskou. Toto kdysi viděli strojvůdci na staré trati. Dnes se jezdí o několik desítek metrů severněji.', '1393060157.jpg', 824, 827),
(827, 'rakcesa', '2014-02-22 10:09:32', 21, 8, 'Bývalá trať Nusle-Krč-Modřany', 'A nakonec ještě pohled ze severu.', '1393060172.jpg', 826, 828),
(828, 'rakcesa', '2014-02-22 10:09:46', 21, 9, 'Bývalá trať Nusle-Krč-Modřany', 'Přesunuli jsme se opět o několik set metrů na východ. Nacházíme se v severním cípu Krčského lesa, odbočka ulice U Michelského lesa a díváme se východním směrem. Dnes je zde lesní cesta, dříve šlo o násep železniční trati.', '1393060186.jpg', 827, 617),
(829, 'rakcesa', '2014-02-22 10:09:58', 21, 18, 'Bývalá trať Nusle-Krč-Modřany', 'A z druhé strany', '1393060198.jpg', 818, 619),
(830, 'rakcesa', '2014-02-22 10:10:12', 21, 13, 'Bývalá trať Nusle-Krč-Modřany', 'Detail na most z předchozího snímku.', '1393060212.jpg', 488, 618),
(831, 'rakcesa', '2014-02-22 10:10:31', 21, 2, 'Bývalá trať Nusle-Krč-Modřany', 'O něco východněji se nachází malý most přes Kunratický potok (pár metrů na západ od přemostění Vídeňské). Stavba je součástí dnešní tratě 210.', '1393060231.jpg', 832, 821),
(832, 'rakcesa', '2014-02-22 10:30:25', 21, 1, 'Bývalá trať Nusle-Krč-Modřany', 'Tento snímek focený z cyklostezky Krč-Braník zachycuje budovu "Hotelu Slunce" za kolejištěm železniční trati 210. Zeleným plotem ohraničená osada nádražáckých domků vlevo je dnes už srovnána se zemí. Označuje ovšem místo, kde stávala původní budova nádraží Praha-Krč na staré trati. Je to o několik set metrů východně od té současné z roku 1963.', '1393061425.jpg', 0, 831),
(833, 'rakcesa', '2014-02-22 10:30:47', 21, 23, 'Trať 210', 'Pohled na východ směrem k vlastnímu areálu nádraží, které v dnešním gigantickém rozsahu vzniklo počátkem 60. let, aniž by kdy byla naplněna jeho plánovaná kapacita. V prostoru vpravo se nachází skladový areál, kam ještě v 90. letech vedla železniční přípojka, která je ale dnes kompletně pryč, zbyly jen náspy indikující dokonce menší seřazovací nádraží, které ale vzalo za své.', '1393061447.jpg', 835, 834),
(834, 'rakcesa', '2014-02-22 10:31:04', 21, 24, 'Trať 210', 'Zmíněný skladový areál, který slouží především stavebninám. Kudy vedla bývalá železniční přípojka naznačuje zábradlí za starou budovou hradla.', '1393061464.jpg', 833, 836),
(835, 'rakcesa', '2014-02-22 10:31:19', 21, 22, 'Trať 210', 'Skok na západ - až za dnešní nádraží Krč - a pohled na dnešní stav kolejiště. Dnes je tu jak trať do Braníka a dále na jih, tak elektrifikovaná přípojka vedoucí přes tzv. branický Most Inteligence na levý břeh Vltavy.', '1393061479.jpg', 489, 833),
(836, 'rakcesa', '2014-02-22 10:43:26', 21, 25, 'Trať 210', 'Pohled ze západního konce dnešního nádraží, z konce slepé koleje na jižní straně. Dnešní nádražní budova se nachází mezi jehličnatými stromy a sloupem elektrického vedení.', '1393062206.jpg', 834, 838),
(837, 'rakcesa', '2014-02-22 10:43:39', 21, 28, 'Trať 210', 'A z téhož místa pohled na východ. Nákladní vlak míří po nově vedené trati k Vršovicím.', '1393062219.jpg', 839, 0),
(838, 'rakcesa', '2014-02-22 10:44:06', 21, 26, 'Trať 210', 'Tento pohled se dívá na západ, zachycuje v levé části areál společenské zahrady (budova je ovšem rohová vila ulice U Společenské zahrady a U Krčského nádraží) a byl pořízen z míst, kde bývalo staré nádraží.', '1393062246.jpg', 836, 839),
(839, 'rakcesa', '2014-02-22 10:44:18', 21, 27, 'Trať 210', 'Ze stejného místa, zde je vidět budova "Hotelu Slunce".', '1393062258.jpg', 838, 837);
INSERT INTO `elrh_gallery_images` (`id`, `author`, `created`, `gallery`, `ord`, `name`, `dscr`, `image`, `prev`, `next`) VALUES
(841, 'rakcesa', '2014-02-23 11:49:55', 48, 1, 'Krč - Na úlehli', 'Letecký pohled na nové sídliště z roku 1977. Díváme se ze severu. Zleva doprava čtvrť ohraničuje oblouk železniční trati (doleva k Vršovicím, vpravo ke Krči a dál do Braníka). V pravém horním rohu zatím ještě nestojí velké Depo Kačerov pro soupravy metra dopravního podniku. Ani ještě Spořilov, který je vidět nahoře, neodděluje Jižní spojka. Ta vyrostla až o pár let později.', '1393152595.jpg', 0, 845),
(843, 'rakcesa', '2014-02-23 12:06:42', 48, 3, 'Krč - Na úlehli', 'Tato mapa zobrazuje stav v roce 1938, kdy zde ještě stály pouze vily. Vlevo dole je vidět konečná smyčka tramajové trati, která kdysi vedla z Budějovické na Kačerov.', '1393153602.jpg', 845, 0),
(845, 'rakcesa', '2014-02-23 12:28:30', 48, 2, 'Krč - Na úlehli', 'Dnešní stav. Úhel pohledu je podobný tomu z prvního snímku, je tedy možné porovnat, co všechno se za 40 let změnilo a nebo naopak nezměnilo.', '1393154910.jpg', 841, 843),
(846, 'rakcesa', '2014-03-13 14:30:14', 8, 20, 'Šimsovo sanatorium', '', '1394717414.jpg', 787, 608),
(847, 'ellrohir', '2014-03-15 23:47:51', 30, 3, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394923671.jpg', 633, 848),
(848, 'ellrohir', '2014-03-15 23:48:44', 30, 4, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394923724.jpg', 847, 849),
(849, 'ellrohir', '2014-03-15 23:49:25', 30, 5, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394923765.jpg', 848, 850),
(850, 'ellrohir', '2014-03-15 23:51:02', 30, 6, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394923862.jpg', 849, 851),
(851, 'ellrohir', '2014-03-15 23:51:53', 30, 7, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394923913.jpg', 850, 852),
(852, 'ellrohir', '2014-03-15 23:54:54', 30, 8, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394924094.jpg', 851, 853),
(853, 'ellrohir', '2014-03-16 00:02:23', 30, 9, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394924543.jpg', 852, 854),
(854, 'ellrohir', '2014-03-16 00:08:14', 30, 10, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394924894.jpg', 853, 855),
(855, 'ellrohir', '2014-03-16 00:11:35', 30, 11, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925095.jpg', 854, 856),
(856, 'ellrohir', '2014-03-16 00:12:04', 30, 12, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925124.jpg', 855, 857),
(857, 'ellrohir', '2014-03-16 00:12:35', 30, 13, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925155.jpg', 856, 858),
(858, 'ellrohir', '2014-03-16 00:13:15', 30, 14, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925195.jpg', 857, 859),
(859, 'ellrohir', '2014-03-16 00:13:43', 30, 15, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925223.jpg', 858, 860),
(860, 'ellrohir', '2014-03-16 00:14:09', 30, 16, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925249.jpg', 859, 861),
(861, 'ellrohir', '2014-03-16 00:14:31', 30, 17, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925271.jpg', 860, 862),
(862, 'ellrohir', '2014-03-16 00:15:13', 30, 18, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925313.jpg', 861, 863),
(863, 'ellrohir', '2014-03-16 00:15:45', 30, 19, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925345.jpg', 862, 864),
(864, 'ellrohir', '2014-03-16 00:16:09', 30, 20, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925369.jpg', 863, 865),
(865, 'ellrohir', '2014-03-16 00:16:34', 30, 21, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925394.jpg', 864, 866),
(866, 'ellrohir', '2014-03-16 00:16:52', 30, 22, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925412.jpg', 865, 867),
(867, 'ellrohir', '2014-03-16 00:17:13', 30, 23, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925433.jpg', 866, 868),
(868, 'ellrohir', '2014-03-16 00:17:36', 30, 24, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925456.jpg', 867, 869),
(869, 'ellrohir', '2014-03-16 00:17:59', 30, 25, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925479.jpg', 868, 870),
(870, 'ellrohir', '2014-03-16 00:18:19', 30, 26, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925499.jpg', 869, 871),
(871, 'ellrohir', '2014-03-16 00:19:02', 30, 27, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925542.jpg', 870, 872),
(872, 'ellrohir', '2014-03-16 00:19:27', 30, 28, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925567.jpg', 871, 873),
(873, 'ellrohir', '2014-03-16 00:19:53', 30, 29, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925593.jpg', 872, 874),
(874, 'ellrohir', '2014-03-16 00:20:12', 30, 30, 'Zbytky Restaurace Hájovna', 'V lese ztracené a mechem zarostlé zbytky původní stavby (prosinec 2013)', '1394925612.jpg', 873, 0),
(881, 'rakcesa', '2014-03-18 13:56:08', 49, 1, 'Sokol Pankrac', '', '1395147368.jpg', 0, 882),
(882, 'rakcesa', '2014-03-18 13:56:21', 49, 2, 'Sokol Pankrac', '', '1395147381.jpg', 881, 885),
(883, 'rakcesa', '2014-03-18 13:56:44', 49, 4, 'Sokol Pankrac', '', '1395147404.jpg', 885, 0),
(885, 'rakcesa', '2014-03-18 13:57:28', 49, 3, 'Sokol Pankrac', 'Rok_1912', '1395147448.jpg', 882, 883),
(887, 'rakcesa', '2014-03-21 10:03:49', 4, 3, 'Lékárna Krčská', 'Malá 10 cm vysoká lahvička (hliněná keramika)', '1395392629.jpg', 609, 1009),
(888, 'rakcesa', '2014-03-24 22:28:59', 13, 42, 'Zbouraná Krč', 'Klimš', '1395696539.jpg', 892, 889),
(889, 'rakcesa', '2014-03-24 22:30:35', 13, 43, 'Zbouraná Krč', '', '1395696635.jpg', 888, 890),
(890, 'rakcesa', '2014-03-24 22:31:17', 13, 44, 'Zbouraná Krč', '', '1395696677.jpg', 889, 891),
(891, 'rakcesa', '2014-03-24 22:32:35', 13, 45, 'Zbouraná Krč', '', '1395696754.jpg', 890, 899),
(892, 'rakcesa', '2014-03-24 22:33:45', 13, 41, 'Zbouraná Krč', 'Vzadu je vidět věžička kaple Sv. Anny', '1395696825.jpg', 927, 888),
(893, 'rakcesa', '2014-03-24 22:37:04', 13, 18, 'Zbouraná Krč', 'Pohled přes vypuštěnou plohu jednou z rybníků v Krčském parku na výrazné budovy školy (vlevo) a kavárny, krátce předtím, než vzaly za své.', '1395697024.jpg', 747, 898),
(898, 'rakcesa', '2014-03-27 19:03:15', 13, 19, 'Zbouraná', '', '1395943395.jpg', 893, 712),
(899, 'rakcesa', '2014-03-28 13:43:39', 13, 46, 'Zbouraná', '', '1396010619.jpg', 891, 900),
(900, 'rakcesa', '2014-03-28 13:44:01', 13, 47, 'Zbouraná', '', '1396010641.jpg', 899, 901),
(901, 'rakcesa', '2014-03-28 13:44:20', 13, 48, 'Zbouraná', '', '1396010660.jpg', 900, 902),
(902, 'rakcesa', '2014-03-28 13:44:38', 13, 49, 'Zbouraná', '', '1396010678.jpg', 901, 903),
(903, 'rakcesa', '2014-03-28 13:45:22', 13, 50, 'Zbouraná', '', '1396010722.jpg', 902, 904),
(904, 'rakcesa', '2014-03-28 13:45:51', 13, 51, 'Zbouraná', '', '1396010751.jpg', 903, 905),
(905, 'rakcesa', '2014-03-28 13:46:03', 13, 52, 'Zbouraná', '', '1396010763.jpg', 904, 906),
(906, 'rakcesa', '2014-03-28 13:47:40', 13, 53, 'Zbouraná', '', '1396010860.jpg', 905, 907),
(907, 'rakcesa', '2014-03-28 13:48:12', 13, 54, 'Zbouraná', '', '1396010892.jpg', 906, 946),
(908, 'rakcesa', '2014-03-28 13:49:21', 13, 56, 'Zbouraná', '', '1396010961.jpg', 946, 910),
(910, 'rakcesa', '2014-03-28 13:49:48', 13, 57, 'Zbouraná', '', '1396010988.jpg', 908, 911),
(911, 'rakcesa', '2014-03-28 13:50:05', 13, 58, 'Zbouraná', '', '1396011005.jpg', 910, 912),
(912, 'rakcesa', '2014-03-28 13:50:36', 13, 59, 'Zbouraná', '', '1396011036.jpg', 911, 913),
(913, 'rakcesa', '2014-03-28 13:50:48', 13, 60, 'Zbouraná', '', '1396011048.jpg', 912, 915),
(914, 'rakcesa', '2014-03-28 13:51:37', 13, 2, 'Zbouraná', '', '1396011097.jpg', 138, 945),
(915, 'rakcesa', '2014-03-28 14:01:14', 13, 61, 'Zbouraná', '', '1396011674.jpg', 913, 916),
(916, 'rakcesa', '2014-03-28 14:01:31', 13, 62, 'Zbouraná', '', '1396011691.jpg', 915, 917),
(917, 'rakcesa', '2014-03-28 14:01:52', 13, 63, 'Zbouraná', '', '1396011712.jpg', 916, 918),
(918, 'rakcesa', '2014-03-28 14:02:10', 13, 64, 'Zbouraná', '', '1396011730.jpg', 917, 920),
(920, 'rakcesa', '2014-03-28 14:04:24', 13, 65, 'Zbouraná', '', '1396011864.jpg', 918, 921),
(921, 'rakcesa', '2014-03-28 14:05:29', 13, 66, 'Zbouraná', '', '1396011929.jpg', 920, 923),
(922, 'rakcesa', '2014-03-28 14:05:51', 13, 71, 'Zbouraná', '', '1396011951.jpg', 925, 926),
(923, 'rakcesa', '2014-03-28 14:06:06', 13, 67, 'Zbouraná', '', '1396011966.jpg', 921, 928),
(924, 'rakcesa', '2014-03-28 14:06:54', 13, 69, 'Zbouraná', '', '1396012014.jpg', 928, 925),
(925, 'rakcesa', '2014-03-28 14:07:21', 13, 70, 'Zbouraná', '', '1396012041.jpg', 924, 922),
(926, 'rakcesa', '2014-03-28 14:07:41', 13, 72, 'Zbouraná', '', '1396012061.jpg', 922, 929),
(927, 'rakcesa', '2014-03-28 14:08:21', 13, 40, 'Zbouraná', '', '1396012101.jpg', 940, 892),
(928, 'rakcesa', '2014-03-28 14:08:33', 13, 68, 'Zbouraná', '', '1396012113.jpg', 923, 924),
(929, 'rakcesa', '2014-03-28 14:09:02', 13, 73, 'Zbouraná', '', '1396012142.jpg', 926, 930),
(930, 'rakcesa', '2014-03-28 14:09:46', 13, 74, 'Zbouraná', '', '1396012186.jpg', 929, 931),
(931, 'rakcesa', '2014-03-28 14:10:02', 13, 75, 'Zbouraná', '', '1396012202.jpg', 930, 932),
(932, 'rakcesa', '2014-03-28 14:10:12', 13, 76, 'Zbouraná', '', '1396012212.jpg', 931, 933),
(933, 'rakcesa', '2014-03-28 14:12:25', 13, 77, 'Zbouraná', '', '1396012345.jpg', 932, 934),
(934, 'rakcesa', '2014-03-28 14:12:35', 13, 78, 'Zbouraná', '', '1396012355.jpg', 933, 935),
(935, 'rakcesa', '2014-03-28 14:12:54', 13, 79, 'Zbouraná', '', '1396012374.jpg', 934, 728),
(936, 'rakcesa', '2014-03-28 14:13:19', 13, 82, 'Zbouraná', '', '1396012399.jpg', 816, 939),
(937, 'rakcesa', '2014-03-28 14:13:32', 13, 38, 'Zbouraná', '', '1396012412.jpg', 727, 940),
(938, 'rakcesa', '2014-03-28 14:13:44', 13, 84, 'Zbouraná', '', '1396012424.jpg', 939, 941),
(939, 'rakcesa', '2014-03-28 14:14:08', 13, 83, 'Zbouraná', '', '1396012448.jpg', 936, 938),
(940, 'rakcesa', '2014-03-28 14:14:22', 13, 39, 'Zbouraná', '', '1396012462.jpg', 937, 927),
(941, 'rakcesa', '2014-03-28 14:14:41', 13, 85, 'Zbouraná', '', '1396012481.jpg', 938, 942),
(942, 'rakcesa', '2014-03-28 14:14:54', 13, 86, 'Zbouraná', '', '1396012494.jpg', 941, 943),
(943, 'rakcesa', '2014-03-28 14:15:13', 13, 87, 'Zbouraná', '', '1396012513.jpg', 942, 944),
(944, 'rakcesa', '2014-03-28 14:15:31', 13, 88, 'Zbouraná', '', '1396012531.jpg', 943, 1028),
(945, 'rakcesa', '2014-03-28 14:15:59', 13, 3, 'Zbouraná', '', '1396012559.jpg', 914, 673),
(946, 'rakcesa', '2014-03-28 14:16:10', 13, 55, 'Zbouraná', '', '1396012570.jpg', 907, 908),
(949, 'rakcesa', '2014-03-28 15:21:47', 28, 4, 'Zahradnická škola', '', '1396016507.jpg', 777, 1092),
(950, 'rakcesa', '2014-04-04 17:04:47', 9, 1, 'Sokol', 'Sokol v Praze-Krči  existuje již od roku 1893, než si postavil vlastní sokolovnu v roce 1934, cvičilo se na ruzných místech v Krči, jak je vidět z obrázku.', '1396623887.jpg', 0, 497),
(952, 'rakcesa', '2014-05-12 20:32:28', 55, 4, 'Firma', '', '1399919548.jpg', 953, 954),
(953, 'rakcesa', '2014-05-12 20:32:59', 55, 3, 'Firma', '', '1399919579.jpg', 1259, 952),
(954, 'rakcesa', '2014-05-12 20:33:20', 55, 5, 'Firma', '', '1399919600.jpg', 952, 955),
(955, 'rakcesa', '2014-05-12 20:33:35', 55, 6, 'Firma', '', '1399919615.jpg', 954, 956),
(956, 'rakcesa', '2014-05-12 20:33:49', 55, 7, 'Firma', '', '1399919629.jpg', 955, 957),
(957, 'rakcesa', '2014-05-12 20:34:05', 55, 8, 'Firma', '', '1399919645.jpg', 956, 958),
(958, 'rakcesa', '2014-05-12 20:34:22', 55, 9, 'Firma', '', '1399919662.jpg', 957, 968),
(959, 'rakcesa', '2014-05-12 20:34:38', 55, 12, 'Firma', '', '1399919678.jpg', 961, 963),
(961, 'rakcesa', '2014-05-12 20:35:29', 55, 11, 'Firma', '', '1399919729.jpg', 968, 959),
(963, 'rakcesa', '2014-05-12 20:36:30', 55, 13, 'Firma', '', '1399919790.jpg', 959, 965),
(965, 'rakcesa', '2014-05-12 20:46:43', 55, 14, 'Firma', '', '1399920403.jpg', 963, 966),
(966, 'rakcesa', '2014-05-12 20:46:58', 55, 15, 'Firma', '', '1399920418.jpg', 965, 1257),
(968, 'rakcesa', '2014-05-12 20:50:05', 55, 10, 'Firma', '', '1399920605.jpg', 958, 961),
(970, 'rakcesa', '2014-05-14 20:35:08', 60, 1, 'Pankrac', '', '1400092508.jpg', 0, 971),
(971, 'rakcesa', '2014-05-14 20:35:31', 60, 2, 'Pankrac', '', '1400092531.jpg', 970, 973),
(973, 'rakcesa', '2014-05-14 20:38:33', 60, 3, 'Pankrac', '', '1400092713.jpg', 971, 982),
(975, 'rakcesa', '2014-05-27 13:19:41', 8, 18, 'Sanatorium', '', '1401189581.jpg', 607, 787),
(976, 'ellrohir', '2014-06-10 11:58:08', 63, 1, 'V Šimsově kolébce české psychoterapie', 'Článek PhDr. Boreckého z FFUK', '1402394288.jpg', 0, 977),
(977, 'ellrohir', '2014-06-10 12:00:05', 63, 2, 'V Šimsově kolébce české psychoterapie', 'Článek PhDr. Boreckého z FFUK - str. 2', '1402394405.jpg', 976, 978),
(978, 'ellrohir', '2014-06-10 12:02:24', 63, 3, 'V Šimsově kolébce české psychoterapie', 'Článek PhDr. Boreckého z FFUK - str. 3', '1402394544.jpg', 977, 979),
(979, 'ellrohir', '2014-06-10 12:05:41', 63, 4, 'V Šimsově kolébce české psychoterapie', 'Článek PhDr. Boreckého z FFUK - str. 4', '1402394741.jpg', 978, 0),
(980, 'rakcesa', '2014-06-15 13:31:57', 23, 9, 'Fruta_1970(Pivovar)', 'Zbytek pivovaru Krč', '1402831917.jpg', 342, 1023),
(982, 'rakcesa', '2014-07-21 12:57:15', 60, 4, 'Pankrac', '', '1405940235.jpg', 973, 0),
(984, 'rakcesa', '2014-09-05 14:08:31', 1, 36, 'krč', '', '1409918911.jpg', 1164, 580),
(986, 'rakcesa', '2014-10-07 12:27:47', 67, 1, 'Za větrem', '', '1412677667.jpg', 0, 987),
(987, 'rakcesa', '2014-10-07 12:28:12', 67, 2, 'Za větrem', '', '1412677692.jpg', 986, 0),
(988, 'rakcesa', '2014-10-07 12:48:22', 68, 1, 'V Zámečku', '', '1412678902.jpg', 0, 0),
(990, 'ellrohir', '2014-10-16 20:43:15', 1, 24, 'Krč', 'Sanatorium dr. Šimsy, celkový pohled a Welzův zámek', '1413484995.jpg', 25, 538),
(991, 'ellrohir', '2014-10-16 20:48:31', 1, 46, 'Domov pro seniory', 'Domov pro seniory v ulici Sulická. Postaven 1963, pohlednice odeslána v roce 1968.', '1413485311.jpg', 493, 0),
(992, 'ellrohir', '2014-10-16 20:57:01', 4, 1, 'Hudební škola Gustava Endršta', 'Třídní fotografie z Krčské školy vojenské hudby Gustava Endršta založené roku 1896. Ve starých mapách ji lze najít pod č. 310 (r. 1937) nebo pod č. 613 (r. 1948) v kopci v ulici Budějovická u dnešního Metra Kačerov. ', '1413485821.jpg', 0, 609),
(993, 'rakcesa', '2014-10-19 12:26:26', 42, 5, 'Prodaná nevěsta', 'Dobový plakát zvoucí do Lesního divadla v Krči', '1413714386.jpg', 230, 449),
(996, 'rakcesa', '2014-10-22 19:11:39', 62, 1, 'Michle', '', '1413997899.jpg', 0, 997),
(997, 'rakcesa', '2014-10-22 19:12:55', 62, 2, 'Michle', '', '1413997975.jpg', 996, 998),
(998, 'rakcesa', '2014-10-22 19:13:25', 62, 3, 'Michle', '', '1413998005.jpg', 997, 999),
(999, 'rakcesa', '2014-10-22 19:13:46', 62, 4, 'Michle', '', '1413998026.jpg', 998, 1000),
(1000, 'rakcesa', '2014-10-22 19:14:18', 62, 5, 'Michle', '', '1413998058.jpg', 999, 0),
(1002, 'rakcesa', '2014-10-22 19:17:03', 59, 1, 'Nusle', '', '1413998223.jpg', 0, 1003),
(1003, 'rakcesa', '2014-10-22 19:17:46', 59, 2, 'Nusle', '', '1413998266.jpg', 1002, 1004),
(1004, 'rakcesa', '2014-10-22 19:18:12', 59, 3, 'Nusle', '', '1413998292.jpg', 1003, 1005),
(1005, 'rakcesa', '2014-10-22 19:18:41', 59, 4, 'Nusle', '', '1413998321.jpg', 1004, 1006),
(1006, 'rakcesa', '2014-10-22 19:19:06', 59, 5, 'Nusle', '', '1413998346.jpg', 1005, 1027),
(1007, 'ellrohir', '2014-10-29 13:53:44', 26, 3, 'Vysvědčení', 'Vysvědčení z Dívčí zahradnické školy, ročník 1924.', '1414587224.jpg', 776, 0),
(1008, 'rakcesa', '2014-11-06 14:14:28', 23, 11, 'Etiketa Malvaz', 'Jedna z etiket Krčského pivovaru.', '1415279668.jpg', 1023, 1190),
(1009, 'rakcesa', '2014-11-28 14:24:59', 4, 4, 'Odznak - Sparta Krč', 'Montáže Praha Sparta Krč', '1417181099.jpg', 887, 0),
(1010, 'rakcesa', '2014-11-28 14:32:01', 69, 1, 'Sokol Nusle', 'Otevření Sokolovny v Nuslich 28.10.1925', '1417181521.jpg', 0, 1011),
(1011, 'rakcesa', '2014-11-28 14:34:54', 69, 2, 'Sokol Nusle', '', '1417181694.jpg', 1010, 0),
(1012, 'rakcesa', '2014-11-28 14:39:01', 70, 1, 'Sokol Pankrac', '', '1417181941.jpg', 0, 1013),
(1013, 'rakcesa', '2014-11-28 14:39:30', 70, 2, 'Sokol Pankrac', '', '1417181970.jpg', 1012, 1014),
(1014, 'rakcesa', '2014-11-28 14:39:47', 70, 3, 'Sokol Pankrac', '', '1417181987.jpg', 1013, 1015),
(1015, 'rakcesa', '2014-11-28 14:40:10', 70, 4, 'Sokol Pankrac', '', '1417182010.jpg', 1014, 0),
(1016, 'ellrohir', '2014-12-06 10:56:52', 71, 4, 'Ples', 'Pozvánka na jubilejní ples<br /><br /><i>Ze sbírky p. Tomáše Jelínka, s jeho laskavým svolením</i>', '1417859812.jpg', 1019, 1017),
(1017, 'ellrohir', '2014-12-06 10:57:17', 71, 5, 'Výročí', 'Pozvánka na akci k výročí 50 let činnosti<br /><br /><i>Ze sbírky p. Tomáše Jelínka, s jeho laskavým svolením</i>', '1417859837.jpg', 1016, 1021),
(1018, 'rakcesa', '2014-12-06 17:12:49', 71, 1, 'Hasiči', '', '1417882369.jpg', 0, 1020),
(1019, 'rakcesa', '2014-12-06 17:13:36', 71, 3, 'Hasiči', '', '1417882416.jpg', 1020, 1016),
(1020, 'rakcesa', '2014-12-06 17:14:09', 71, 2, 'Hasiči', '', '1417882449.jpg', 1018, 1019),
(1021, 'rakcesa', '2014-12-06 17:16:18', 71, 6, 'Hasiči', 'Zbourano v roce 1978', '1417882578.jpg', 1017, 0),
(1023, 'rakcesa', '2015-01-12 13:20:58', 23, 10, 'Fruta_2014(Pivovar)', 'Zbytek pivovaru Krč', '1421065258.jpg', 980, 1008),
(1027, 'ellrohir', '2015-01-18 20:46:51', 59, 6, 'Víno Novotný', 'Etiketa z lahve od režné od Nuselské společnosti.', '1421610411.jpg', 1006, 0),
(1028, 'rakcesa', '2015-02-07 20:37:45', 13, 89, 'Zbouraná', '', '1423337865.jpg', 944, 0),
(1029, 'ellrohir', '2015-02-09 14:39:39', 73, 1, 'Škola Sv. Augustina', 'Celkový pohled na objekt od jihu. Stav v zimě 2014/2015.', '1423489179.jpg', 0, 1030),
(1030, 'ellrohir', '2015-02-09 14:40:02', 73, 2, 'Škola Sv. Augustina', 'Detailní pohled na objekt zevnitř areálu. Stav v zimě 2014/2015.', '1423489202.jpg', 1029, 1031),
(1031, 'ellrohir', '2015-02-09 14:41:03', 73, 3, 'Škola Sv. Augustina', 'Pohled od ulice V Podzámčí na jižní stěnu objektu. Skleníky byly přistaveny později. Foceno v zimě 2014/2015.', '1423489263.jpg', 1030, 1034),
(1032, 'rakcesa', '2015-02-13 13:13:07', 72, 2, 'Dům Školských sester de N.D.', '', '1423829587.jpg', 286, 1033),
(1033, 'rakcesa', '2015-02-13 13:13:46', 72, 3, 'Vnitřek kaple', 'Interiér kaple útulny pro hluchoněmé ženy a dívky v Krči', '1423829626.jpg', 1032, 1163),
(1034, 'rakcesa', '2015-02-13 14:39:52', 73, 4, 'Škola Sv. Augustina', '', '1423834792.jpg', 1031, 0),
(1035, 'rakcesa', '2015-02-23 15:29:52', 76, 1, 'Kunratice', '', '1424701792.jpg', 0, 1043),
(1036, 'rakcesa', '2015-02-23 15:30:05', 76, 3, 'Kunratice', '', '1424701805.jpg', 1043, 1037),
(1037, 'rakcesa', '2015-02-23 15:30:21', 76, 4, 'Kunratice', '', '1424701821.jpg', 1036, 1041),
(1039, 'rakcesa', '2015-02-23 15:31:09', 76, 7, 'Kunratice', '', '1424701869.jpg', 1042, 1040),
(1040, 'rakcesa', '2015-02-23 15:31:23', 76, 8, 'Kunratice', '', '1424701883.jpg', 1039, 1044),
(1041, 'rakcesa', '2015-02-23 15:31:33', 76, 5, 'Kunratice', '', '1424701893.jpg', 1037, 1042),
(1042, 'rakcesa', '2015-02-23 15:31:47', 76, 6, 'Kunratice', '', '1424701907.jpg', 1041, 1039),
(1043, 'rakcesa', '2015-02-23 15:32:02', 76, 2, 'Kunratice', '', '1424701922.jpg', 1035, 1036),
(1044, 'rakcesa', '2015-02-23 15:32:12', 76, 9, 'Kunratice', '', '1424701932.jpg', 1040, 1045),
(1045, 'rakcesa', '2015-02-23 15:32:25', 76, 10, 'Kunratice', '', '1424701945.jpg', 1044, 1046),
(1046, 'rakcesa', '2015-02-23 15:32:41', 76, 11, 'Kunratice', '', '1424701961.jpg', 1045, 1047),
(1047, 'rakcesa', '2015-02-23 15:32:52', 76, 12, 'Kunratice', '', '1424701972.jpg', 1046, 1048),
(1048, 'rakcesa', '2015-02-23 15:33:04', 76, 13, 'Kunratice', '', '1424701984.jpg', 1047, 1049),
(1049, 'rakcesa', '2015-02-23 15:33:15', 76, 14, 'Kunratice', '', '1424701995.jpg', 1048, 1050),
(1050, 'rakcesa', '2015-02-23 15:33:27', 76, 15, 'Kunratice', '', '1424702007.jpg', 1049, 1051),
(1051, 'rakcesa', '2015-02-23 15:33:40', 76, 16, 'Kunratice', '', '1424702020.jpg', 1050, 1053),
(1052, 'rakcesa', '2015-02-23 15:33:52', 76, 18, 'Kunratice', '', '1424702032.jpg', 1053, 0),
(1053, 'rakcesa', '2015-02-23 15:38:30', 76, 17, 'Kunratice', '', '1424702310.jpg', 1051, 1052),
(1054, 'rakcesa', '2015-02-23 16:19:24', 78, 1, 'Brožura', '', '1424704764.jpg', 0, 1055),
(1055, 'rakcesa', '2015-02-23 16:19:41', 78, 2, 'Brožura', '', '1424704781.jpg', 1054, 1056),
(1056, 'rakcesa', '2015-02-23 16:19:54', 78, 3, 'Brožura', '', '1424704794.jpg', 1055, 1058),
(1058, 'rakcesa', '2015-02-23 16:20:25', 78, 4, 'Brožura', '', '1424704825.jpg', 1056, 1059),
(1059, 'rakcesa', '2015-02-23 16:20:38', 78, 5, 'Brožura', '', '1424704838.jpg', 1058, 1060),
(1060, 'rakcesa', '2015-02-23 16:20:52', 78, 6, 'Brožura', '', '1424704852.jpg', 1059, 1061),
(1061, 'rakcesa', '2015-02-23 16:21:04', 78, 7, 'Brožura', '', '1424704864.jpg', 1060, 1062),
(1062, 'rakcesa', '2015-02-23 16:21:18', 78, 8, 'Brožura', '', '1424704878.jpg', 1061, 1063),
(1063, 'rakcesa', '2015-02-23 16:21:33', 78, 9, 'Brožura', '', '1424704893.jpg', 1062, 1064),
(1064, 'rakcesa', '2015-02-23 16:21:46', 78, 10, 'Brožura', '', '1424704906.jpg', 1063, 1065),
(1065, 'rakcesa', '2015-02-23 16:21:56', 78, 11, 'Brožura', '', '1424704916.jpg', 1064, 0),
(1066, 'rakcesa', '2015-02-23 16:40:10', 77, 1, 'Nový Hrad', '', '1424706010.jpg', 0, 1067),
(1067, 'rakcesa', '2015-02-23 16:40:24', 77, 2, 'Nový Hrad', '', '1424706024.jpg', 1066, 1068),
(1068, 'rakcesa', '2015-02-23 16:40:42', 77, 3, 'Nový Hrad', '', '1424706042.jpg', 1067, 1069),
(1069, 'rakcesa', '2015-02-23 16:41:00', 77, 4, 'Nový Hrad', '', '1424706060.jpg', 1068, 1070),
(1070, 'rakcesa', '2015-02-23 16:41:15', 77, 5, 'Nový Hrad', '', '1424706075.jpg', 1069, 1071),
(1071, 'rakcesa', '2015-02-23 16:41:31', 77, 6, 'Nový Hrad', '', '1424706091.jpg', 1070, 1072),
(1072, 'rakcesa', '2015-02-23 16:42:09', 77, 7, 'Nový Hrad', '', '1424706129.jpg', 1071, 1073),
(1073, 'rakcesa', '2015-02-23 16:42:23', 77, 8, 'Nový Hrad', '', '1424706143.jpg', 1072, 1074),
(1074, 'rakcesa', '2015-02-23 16:42:40', 77, 9, 'Nový Hrad', '', '1424706160.jpg', 1073, 1075),
(1075, 'rakcesa', '2015-02-23 16:42:59', 77, 10, 'Nový Hrad', '', '1424706179.jpg', 1074, 1076),
(1076, 'rakcesa', '2015-02-23 16:43:12', 77, 11, 'Nový Hrad', '', '1424706192.jpg', 1075, 1077),
(1077, 'rakcesa', '2015-02-23 16:43:31', 77, 12, 'Nový Hrad', '', '1424706211.jpg', 1076, 1078),
(1078, 'rakcesa', '2015-02-23 16:43:48', 77, 13, 'Nový Hrad', '', '1424706228.jpg', 1077, 1079),
(1079, 'rakcesa', '2015-02-23 16:44:07', 77, 14, 'Nový Hrad', '', '1424706247.jpg', 1078, 1080),
(1080, 'rakcesa', '2015-02-23 16:44:24', 77, 15, 'Nový Hrad', '', '1424706264.jpg', 1079, 1081),
(1081, 'rakcesa', '2015-02-23 16:44:51', 77, 16, 'Nový Hrad', '', '1424706291.jpg', 1080, 1082),
(1082, 'rakcesa', '2015-02-23 16:45:11', 77, 17, 'Nový Hrad', '', '1424706311.jpg', 1081, 1083),
(1083, 'rakcesa', '2015-02-23 16:45:38', 77, 18, 'Nový Hrad', '', '1424706338.jpg', 1082, 1084),
(1084, 'rakcesa', '2015-02-23 16:45:59', 77, 19, 'Nový Hrad', '', '1424706359.jpg', 1083, 1086),
(1086, 'rakcesa', '2015-02-23 16:47:43', 77, 20, 'Nový Hrad', '', '1424706463.jpg', 1084, 1087),
(1087, 'rakcesa', '2015-02-23 16:48:01', 77, 21, 'Nový Hrad', '', '1424706481.jpg', 1086, 1089),
(1088, 'rakcesa', '2015-02-23 16:48:21', 77, 24, 'Nový Hrad', '', '1424706501.jpg', 1091, 1090),
(1089, 'rakcesa', '2015-02-23 16:48:42', 77, 22, 'Nový Hrad', '', '1424706522.jpg', 1087, 1091),
(1090, 'rakcesa', '2015-02-23 16:49:04', 77, 25, 'Nový Hrad', '', '1424706544.jpg', 1088, 0),
(1091, 'rakcesa', '2015-02-23 16:50:26', 77, 23, 'Nový Hrad', '', '1424706626.jpg', 1089, 1088),
(1092, 'rakcesa', '2015-02-23 17:07:54', 28, 5, 'Škola', '', '1424707674.jpg', 949, 770),
(1093, 'rakcesa', '2015-02-24 20:16:15', 43, 19, 'Brožura', '', '1424805375.jpg', 768, 1094),
(1094, 'rakcesa', '2015-02-24 20:16:29', 43, 20, 'Brožura', '', '1424805389.jpg', 1093, 1095),
(1095, 'rakcesa', '2015-02-24 20:16:44', 43, 21, 'Brožura', '', '1424805404.jpg', 1094, 1096),
(1096, 'rakcesa', '2015-02-24 20:17:01', 43, 22, 'Brožura', '', '1424805421.jpg', 1095, 1097),
(1097, 'rakcesa', '2015-02-24 20:17:15', 43, 23, 'Brožura', '', '1424805435.jpg', 1096, 0),
(1098, 'rakcesa', '2015-02-25 14:58:55', 74, 3, 'Kostel', 'Kostel Panny Marie Královny míru ', '1424872735.jpg', 703, 1106),
(1099, 'rakcesa', '2015-02-25 14:59:15', 81, 1, 'Kostel ', 'Kostel Panny Marie Královny míru - z ulice "Mariánská" od Jihozápadu. 2015 - Foto Anton Sečkár', '1424872755.jpg', 0, 1100),
(1100, 'rakcesa', '2015-02-25 14:59:26', 81, 2, 'Kostel', 'Kostel Panny Marie Královny míru - z ulice "U Koupadel". 2015 - Foto Anton Sečkár', '1424872766.jpg', 1099, 1102),
(1102, 'rakcesa', '2015-02-25 15:00:10', 81, 3, 'Kaplička', 'Kaplička sv. Petra a Pavla v ulici "Růženínská". 2015 - Foto Anton Sečkár', '1424872810.jpg', 1100, 1103),
(1103, 'rakcesa', '2015-02-25 15:00:27', 81, 4, 'Kaplička', 'Kaplička sv. Petra a Pavla v ulici "Růženínská". 2015 - Foto Anton Sečkár', '1424872827.jpg', 1102, 1104),
(1104, 'rakcesa', '2015-02-25 15:00:47', 81, 5, 'Kaplička', 'Kaplička sv. Petra a Pavla v ulici "Růženínská". 2015 - Foto Anton Sečkár', '1424872847.jpg', 1103, 1105),
(1105, 'rakcesa', '2015-02-25 15:01:01', 81, 6, 'Villa Voyta ', 'Villa Voyta na Lhotce v ulici "Na Větrově". Autor - Hynek Moravec (<a href="http://cs.wikipedia.org/wiki/Lhotka_%28Praha%29#mediaviewer/File:Voyta_lhotka_160025.JPG">zdroj</a>)', '1424872861.jpg', 1104, 0),
(1106, 'rakcesa', '2015-02-25 15:04:28', 74, 4, 'Koupaliště', 'Na koupališti Lhotka.', '1424873068.jpg', 1098, 1107),
(1107, 'rakcesa', '2015-02-25 15:04:46', 74, 5, 'Koupaliště', 'Na koupališti Lhotka.', '1424873086.jpg', 1106, 0),
(1108, 'rakcesa', '2015-02-25 15:06:37', 79, 4, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873197.jpg', 1111, 1109),
(1109, 'rakcesa', '2015-02-25 15:06:55', 79, 5, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873215.jpg', 1108, 1113),
(1110, 'rakcesa', '2015-02-25 15:07:10', 79, 7, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873230.jpg', 1113, 1112),
(1111, 'rakcesa', '2015-02-25 15:07:27', 79, 2, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873247.jpg', 0, 1108),
(1112, 'rakcesa', '2015-02-25 15:07:41', 79, 8, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873261.jpg', 1110, 1114),
(1113, 'rakcesa', '2015-02-25 15:07:55', 79, 6, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873275.jpg', 1109, 1110),
(1114, 'rakcesa', '2015-02-25 15:08:12', 79, 9, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873292.jpg', 1112, 1115),
(1115, 'rakcesa', '2015-02-25 15:08:25', 79, 10, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873305.jpg', 1114, 1116),
(1116, 'rakcesa', '2015-02-25 15:08:41', 79, 11, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873321.jpg', 1115, 1117),
(1117, 'rakcesa', '2015-02-25 15:08:58', 79, 12, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873338.jpg', 1116, 1118),
(1118, 'rakcesa', '2015-02-25 15:09:53', 79, 13, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873393.jpg', 1117, 1119),
(1119, 'rakcesa', '2015-02-25 15:10:10', 79, 14, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873410.jpg', 1118, 1120),
(1120, 'rakcesa', '2015-02-25 15:10:25', 79, 15, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873425.jpg', 1119, 1121),
(1121, 'rakcesa', '2015-02-25 15:10:40', 79, 16, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873440.jpg', 1120, 1122),
(1122, 'rakcesa', '2015-02-25 15:10:54', 79, 17, 'Koupaliště', 'Koupaliště Lhotka. Zima 2015 - foto Anton Sečkár.', '1424873454.jpg', 1121, 1124),
(1124, 'rakcesa', '2015-02-25 15:22:40', 79, 18, 'Koupaliště Lhotka', 'Když ještě koupaliště fungovalo... Autor: Czech Wikipedia user <a href="http://commons.wikimedia.org/wiki/User:Packa">Packa</a>', '1424874160.jpg', 1122, 0),
(1125, 'rakcesa', '2015-02-26 15:28:42', 80, 1, 'Jezerka', '', '1424960922.jpg', 0, 1126),
(1126, 'rakcesa', '2015-02-26 15:29:00', 80, 2, 'Jezerka', '', '1424960940.jpg', 1125, 1127),
(1127, 'rakcesa', '2015-02-26 15:29:16', 80, 3, 'Jezerka', '', '1424960956.jpg', 1126, 1128),
(1128, 'rakcesa', '2015-02-26 15:29:29', 80, 4, 'Jezerka', '', '1424960969.jpg', 1127, 1129),
(1129, 'rakcesa', '2015-02-26 15:29:45', 80, 5, 'Jezerka', '', '1424960985.jpg', 1128, 1131),
(1130, 'rakcesa', '2015-02-26 15:30:23', 80, 7, 'Jezerka', '', '1424961023.jpg', 1131, 1132),
(1131, 'rakcesa', '2015-02-26 15:30:39', 80, 6, 'Jezerka', '', '1424961039.jpg', 1129, 1130),
(1132, 'rakcesa', '2015-02-26 15:30:56', 80, 8, 'Jezerka', '', '1424961056.jpg', 1130, 1133),
(1133, 'rakcesa', '2015-02-26 15:31:13', 80, 9, 'Jezerka', '', '1424961073.jpg', 1132, 1134),
(1134, 'rakcesa', '2015-02-26 15:31:34', 80, 10, 'Jezerka', '', '1424961094.jpg', 1133, 1135),
(1135, 'rakcesa', '2015-02-26 15:31:53', 80, 11, 'Jezerka', '', '1424961113.jpg', 1134, 1136),
(1136, 'rakcesa', '2015-02-26 15:32:06', 80, 12, 'Jezerka', '', '1424961126.jpg', 1135, 1137),
(1137, 'rakcesa', '2015-02-26 15:32:22', 80, 13, 'Jezerka', '', '1424961142.jpg', 1136, 1138),
(1138, 'rakcesa', '2015-02-26 15:32:36', 80, 14, 'Jezerka', '', '1424961156.jpg', 1137, 0),
(1139, 'ellrohir', '2015-03-08 11:31:01', 82, 1, 'Lhotecký kostel', 'Kostel Panny Marie Královny míru, který stojí mezi ulicemi "Mariánská" a "Ve Lhotce".', '1425810661.png', 0, 1140),
(1140, 'ellrohir', '2015-03-08 11:32:36', 82, 2, 'Restaurace Daliborka', 'Dříve restaurace Daliborka, dnes hotel a restaurace Villa Voyta v ulici "Na Větrově"', '1425810756.png', 1139, 1141),
(1141, 'ellrohir', '2015-03-08 11:35:15', 82, 3, 'Koupaliště Lhotka', 'Foto z dob, kdy vody koupaliště Lhotka brázdily kánoe, a srovnání s dneškem (foceno zpoza plotu areálu).', '1425810915.png', 1140, 1142),
(1142, 'ellrohir', '2015-03-08 11:36:37', 82, 4, 'Koupaliště Lhotka', 'Foto z dob, kdy vody koupaliště Lhotka brázdily kánoe, a srovnání s dneškem (foceno zpoza plotu areálu).', '1425810997.png', 1141, 0),
(1144, 'ellrohir', '2015-03-29 16:15:58', 83, 1, 'Klárův ústav dnes', 'Od hlavní brány v ulici Vídeňská - pohled na západ. Foto @ Alois Sečkár, pořízeno 8. 3. 2015', '1427638558.jpg', 0, 1145),
(1145, 'ellrohir', '2015-03-29 16:17:17', 83, 2, 'Klárův ústav dnes', 'Z lesíku v jihovýchodním rohu areálu. Foto @ Alois Sečkár, pořízeno 8. 3. 2015', '1427638637.jpg', 1144, 1146),
(1146, 'ellrohir', '2015-03-29 16:18:13', 83, 3, 'Klárův ústav dnes', 'Pohled na budovu zezadu (od západu). Foto @ Alois Sečkár, pořízeno 8. 3. 2015', '1427638693.jpg', 1145, 1147),
(1147, 'ellrohir', '2015-03-29 16:18:51', 83, 4, 'Klárův ústav dnes', 'Pohled na severní stranu budovy. Foto @ Alois Sečkár, pořízeno 8. 3. 2015', '1427638731.jpg', 1146, 0),
(1148, 'rakcesa', '2015-03-31 09:17:39', 85, 28, 'Doprava', 'Třinácka v ulici Antala Staška, cca 1961. Doleva k Ryšánce, doprava k dnešní poliklinice a úřadu. (Foto: Archiv DP)', '1427786259.jpg', 1160, 1158),
(1149, 'rakcesa', '2015-03-31 09:20:42', 85, 3, 'Doprava', 'Ulice Budějovická, rok 1973. Doleva k Budějovické, doprava k Pankráci. (Foto: Ing. Ivo Mahel)', '1427786442.jpg', 1151, 1244),
(1150, 'rakcesa', '2015-03-31 09:23:39', 85, 15, 'Doprava', 'Konečná na Budějovickém náměstí, rok 1973 (Foto: Ing. Ivo Mahel)', '1427786619.jpg', 1154, 1155),
(1151, 'rakcesa', '2015-03-31 09:25:03', 85, 2, 'Doprava', 'Bus č. 12 v Krči (rybník "U Labutě"), rok 1927 (foto: Archiv DP)', '1427786703.jpg', 1152, 1149),
(1152, 'rakcesa', '2015-03-31 09:27:23', 85, 1, 'Doprava', 'Bus č. 12 v Krči (rybník "U Labutě"), rok 1927 (foto: Archiv DP)', '1427786843.jpg', 0, 1151),
(1153, 'rakcesa', '2015-03-31 09:28:45', 85, 13, 'Doprava', 'Od Budějovické, trať mezí Lískem a Kačerovem, ulice Jihlavská (Foto: Archiv DP)', '1427786925.jpg', 1240, 1154),
(1154, 'rakcesa', '2015-03-31 09:29:05', 85, 14, 'Doprava', 'Od Kačerova, trať mezí Lískem a Kačerovem, ulice Jihlavská (Foto: Archiv DP)', '1427786945.jpg', 1153, 1150),
(1155, 'rakcesa', '2015-03-31 09:29:48', 85, 16, 'Doprava', 'Konečná na Kačerově 1 (Foto: Archiv DP)', '1427786988.jpg', 1150, 1156),
(1156, 'rakcesa', '2015-03-31 09:30:29', 85, 17, 'Doprava', 'Konečná na Kačerově 2 (Foto: Archiv DP)', '1427787029.jpg', 1155, 1250),
(1157, 'rakcesa', '2015-03-31 09:31:59', 85, 30, 'Doprava', 'Konečná na Ryšánce. Tramvaj přijíždí od Zeleného pruhu. 1968-03-24jc (Foto: Jiří Čermák)', '1427787119.jpg', 1158, 0),
(1158, 'rakcesa', '2015-03-31 09:32:53', 85, 29, 'Doprava', 'Konečná na Ryšánce, výstupní zastávka, tramvaj přijíždí od Budějovické. Cca 1967 (Foto: Jiří Kirnig)', '1427787173.jpg', 1148, 1157),
(1159, 'rakcesa', '2015-03-31 09:33:50', 85, 26, 'Doprava', 'Zastávka Autobusové nádraží Pankrác iAN2aLK (Foto: Lubomír Kysela)', '1427787230.jpg', 1256, 1160),
(1160, 'rakcesa', '2015-03-31 09:34:50', 85, 27, 'Doprava', 'Na Veselí, mezi Pankrácem a Pražského povstání, zatáčka pod magistrálu k Pankrácké vozovně. 1981-07-28pf (Foto: Mgr. Pavel Fojtík)', '1427787290.jpg', 1159, 1148),
(1161, 'rakcesa', '2015-05-11 16:53:25', 22, 1, 'Nádraží', '', '1431356005.jpg', 0, 702),
(1162, 'rakcesa', '2015-05-11 16:54:30', 1, 34, 'Krč', '', '1431356070.jpg', 485, 1164),
(1163, 'rakcesa', '2015-05-27 16:04:11', 72, 4, 'Kaplíčka', '', '1432735451.jpg', 1033, 0),
(1164, 'rakcesa', '2015-05-27 16:06:09', 1, 35, 'Krč', '', '1432735569.jpg', 1162, 984),
(1165, 'rakcesa', '2015-06-07 13:38:45', 14, 46, 'Lesní divadlo', '', '1433677125.jpg', 1176, 1166),
(1166, 'rakcesa', '2015-06-07 13:39:07', 14, 47, 'Lesní divadlo', '', '1433677147.jpg', 1165, 1167),
(1167, 'rakcesa', '2015-06-07 13:39:26', 14, 48, 'Lesní divadlo', '', '1433677166.jpg', 1166, 1170),
(1168, 'rakcesa', '2015-06-07 13:39:48', 14, 53, 'Lesní divadlo', '', '1433677188.jpg', 1177, 1169),
(1169, 'rakcesa', '2015-06-07 13:40:10', 14, 54, 'Lesní divadlo', '', '1433677210.jpg', 1168, 1178),
(1170, 'rakcesa', '2015-06-07 13:40:30', 14, 49, 'Lesní divadlo', '', '1433677230.jpg', 1167, 1186),
(1171, 'rakcesa', '2015-06-07 13:40:50', 14, 41, 'Lesní divadlo', '', '1433677250.jpg', 1184, 1174),
(1172, 'rakcesa', '2015-06-07 13:41:08', 14, 38, 'Lesní divadlo', '', '1433677268.jpg', 1182, 1183),
(1173, 'rakcesa', '2015-06-07 13:41:26', 14, 43, 'Lesní divadlo', '', '1433677286.jpg', 1174, 461),
(1174, 'rakcesa', '2015-06-07 13:41:54', 14, 42, 'Lesní divadlo', '', '1433677314.jpg', 1171, 1173),
(1176, 'rakcesa', '2015-06-07 13:52:33', 14, 45, 'Lesní divadlo', '', '1433677953.jpg', 461, 1165),
(1177, 'rakcesa', '2015-06-07 13:54:42', 14, 52, 'Lesní divadlo', '', '1433678082.jpg', 1185, 1168),
(1178, 'rakcesa', '2015-06-07 14:38:15', 14, 55, 'Lesní divadlo', '', '1433680695.jpg', 1169, 1179),
(1179, 'rakcesa', '2015-06-07 14:38:32', 14, 56, 'Lesní divadlo', '', '1433680712.jpg', 1178, 1180),
(1180, 'rakcesa', '2015-06-07 14:38:47', 14, 57, 'Lesní divadlo', '', '1433680727.jpg', 1179, 1181),
(1181, 'rakcesa', '2015-06-07 14:39:02', 14, 58, 'Lesní divadlo', '', '1433680742.jpg', 1180, 1187),
(1182, 'rakcesa', '2015-06-07 14:39:18', 14, 37, 'Lesní divadlo', '', '1433680758.jpg', 463, 1172),
(1183, 'rakcesa', '2015-06-07 14:40:19', 14, 39, 'Lesní divadlo', '', '1433680819.jpg', 1172, 1184),
(1184, 'rakcesa', '2015-06-07 14:40:34', 14, 40, 'Lesní divadlo', '', '1433680834.jpg', 1183, 1171),
(1185, 'rakcesa', '2015-06-07 14:40:50', 14, 51, 'Lesní divadlo', '', '1433680850.jpg', 1186, 1177),
(1186, 'rakcesa', '2015-06-07 14:41:12', 14, 50, 'Lesní divadlo', '', '1433680872.jpg', 1170, 1185),
(1187, 'rakcesa', '2015-06-07 14:41:35', 14, 59, 'Lesní divadlo', '', '1433680895.jpg', 1181, 1188),
(1188, 'rakcesa', '2015-06-07 14:41:51', 14, 60, 'Lesní divadlo', '', '1433680911.jpg', 1187, 681),
(1189, 'rakcesa', '2015-06-12 19:26:04', 23, 13, 'Pivovar', 'Smaltová cedule pivovaru Pragovar v Krč', '1434129964.jpg', 1190, 1301),
(1190, 'rakcesa', '2015-06-14 11:56:57', 23, 12, 'Etiketa ', 'Druha z etiket', '1434275817.jpg', 1008, 1189),
(1191, 'rakcesa', '2015-06-14 12:12:13', 86, 1, 'Braník', '', '1434276733.jpg', 0, 1192),
(1192, 'rakcesa', '2015-06-14 12:12:30', 86, 2, 'Braník', '', '1434276750.jpg', 1191, 1193),
(1193, 'rakcesa', '2015-06-14 12:12:48', 86, 3, 'Braník', '', '1434276768.jpg', 1192, 1194),
(1194, 'rakcesa', '2015-06-14 12:13:04', 86, 4, 'Braník', '', '1434276784.jpg', 1193, 1195),
(1195, 'rakcesa', '2015-06-14 12:13:22', 86, 5, 'Braník', '', '1434276802.jpg', 1194, 0),
(1196, 'rakcesa', '2015-06-14 12:43:11', 88, 1, 'Dominikánský dvůr', '', '1434278591.jpg', 0, 1197),
(1197, 'rakcesa', '2015-06-14 12:43:55', 88, 2, 'Dominikánský dvůr', '', '1434278635.jpg', 1196, 1198),
(1198, 'rakcesa', '2015-06-14 12:44:13', 88, 3, 'Dominikánský dvůr', '', '1434278653.jpg', 1197, 1199),
(1199, 'rakcesa', '2015-06-14 12:44:33', 88, 4, 'Dominikánský dvůr', '', '1434278673.jpg', 1198, 1200),
(1200, 'rakcesa', '2015-06-14 12:44:59', 88, 5, 'Dominikánský dvůr', '', '1434278699.jpg', 1199, 1201),
(1201, 'rakcesa', '2015-06-14 12:45:18', 88, 6, 'Dominikánský dvůr', '', '1434278718.jpg', 1200, 1202),
(1202, 'rakcesa', '2015-06-14 12:45:42', 88, 7, 'Dominikánský dvůr', '', '1434278742.jpg', 1201, 1203),
(1203, 'rakcesa', '2015-06-14 12:46:07', 88, 8, 'Dominikánský dvůr', '', '1434278767.jpg', 1202, 1204),
(1204, 'rakcesa', '2015-06-14 12:46:30', 88, 9, 'Dominikánský dvůr', '', '1434278790.jpg', 1203, 1205),
(1205, 'rakcesa', '2015-06-14 12:46:47', 88, 10, 'Dominikánský dvůr', '', '1434278807.jpg', 1204, 1206),
(1206, 'rakcesa', '2015-06-14 12:47:06', 88, 11, 'Dominikánský dvůr', '', '1434278826.jpg', 1205, 1207),
(1207, 'rakcesa', '2015-06-14 12:47:28', 88, 12, 'Dominikánský dvůr', '', '1434278848.jpg', 1206, 1208),
(1208, 'rakcesa', '2015-06-14 12:47:48', 88, 13, 'Dominikánský dvůr', '', '1434278868.jpg', 1207, 1209),
(1209, 'rakcesa', '2015-06-14 12:48:06', 88, 14, 'Dominikánský dvůr', '', '1434278886.jpg', 1208, 1210),
(1210, 'rakcesa', '2015-06-14 12:48:27', 88, 15, 'Dominikánský dvůr', '', '1434278907.jpg', 1209, 1211),
(1211, 'rakcesa', '2015-06-14 12:48:43', 88, 16, 'Dominikánský dvůr', '', '1434278923.jpg', 1210, 1212),
(1212, 'rakcesa', '2015-06-14 12:49:02', 88, 17, 'Dominikánský dvůr', '', '1434278942.jpg', 1211, 0),
(1213, 'rakcesa', '2015-06-14 13:09:45', 90, 7, 'Pivovar', '', '1434280185.jpg', 1216, 1224),
(1214, 'rakcesa', '2015-06-14 13:10:03', 90, 9, 'Pivovar', '', '1434280203.jpg', 1224, 1215),
(1215, 'rakcesa', '2015-06-14 13:10:26', 90, 10, 'Pivovar', '', '1434280226.jpg', 1214, 1225),
(1216, 'rakcesa', '2015-06-14 13:10:45', 90, 6, 'Pivovar', '', '1434280245.jpg', 1217, 1213),
(1217, 'rakcesa', '2015-06-14 13:11:04', 90, 5, 'Pivovar', '', '1434280264.jpg', 1218, 1216),
(1218, 'rakcesa', '2015-06-14 13:11:26', 90, 4, 'Pivovar', '', '1434280286.jpg', 1219, 1217),
(1219, 'rakcesa', '2015-06-14 13:11:41', 90, 3, 'Pivovar', '', '1434280301.jpg', 1220, 1218),
(1220, 'rakcesa', '2015-06-14 13:11:58', 90, 2, 'Pivovar', '', '1434280318.jpg', 1221, 1219),
(1221, 'rakcesa', '2015-06-14 13:12:15', 90, 1, 'Pivovar', '', '1434280335.jpg', 0, 1220),
(1222, 'rakcesa', '2015-06-14 13:16:50', 90, 12, 'Pivovar', '', '1434280610.jpg', 1225, 1223),
(1223, 'rakcesa', '2015-06-14 13:17:08', 90, 13, 'Pivovar', '', '1434280628.jpg', 1222, 0),
(1224, 'rakcesa', '2015-06-14 13:17:25', 90, 8, 'Pivovar', '', '1434280645.jpg', 1213, 1214),
(1225, 'rakcesa', '2015-06-14 13:17:42', 90, 11, 'Pivovar', '', '1434280662.jpg', 1215, 1222),
(1227, 'ellrohir', '2015-06-14 15:24:28', 91, 1, 'Branické ledárny', 'Budova v severovýchodním rohu areálu.', '1434288268.jpg', 0, 1228),
(1228, 'ellrohir', '2015-06-14 15:24:50', 91, 2, 'Branické ledárny', 'Pohled na průčelí.', '1434288290.jpg', 1227, 1229),
(1229, 'ellrohir', '2015-06-14 15:25:49', 91, 3, 'Branické ledárny', '"Akciové ledárny", název obchodní společnosti, která areál vybudovala.', '1434288349.jpg', 1228, 1230),
(1230, 'ellrohir', '2015-06-14 15:26:18', 91, 4, 'Branické ledárny', 'Pohled do areálu od jihovýchodu.', '1434288378.jpg', 1229, 1231),
(1231, 'ellrohir', '2015-06-14 15:26:50', 91, 5, 'Branické ledárny', 'Pohled od jihu.', '1434288410.jpg', 1230, 1232),
(1232, 'ellrohir', '2015-06-14 15:27:37', 91, 6, 'Branické ledárny', 'Zadní zeď areálu přiléhající směrem k Vltavě.', '1434288457.jpg', 1231, 1233),
(1233, 'ellrohir', '2015-06-14 15:28:28', 91, 7, 'Branické ledárny', 'Rozpadající se reliéfy na zdi.', '1434288508.jpg', 1232, 0),
(1234, 'ellrohir', '2015-07-06 11:20:25', 92, 1, 'Habrovka, č.p. 66', 'Dům č.p. 66, který se nachází v areálu kostela Sv. Františka z Assisi v ulici U Habrovky. (<a href="http://www.mapy.cz/s/kefz">MAPA</a>)', '1436174425.png', 0, 1275),
(1235, 'rakcesa', '2015-07-09 15:02:46', 94, 1, 'Krčská vodárna', 'Stará fotografie vodárny', '1436446966.jpg', 0, 1236),
(1236, 'rakcesa', '2015-07-09 15:03:14', 94, 2, 'Krčská vodárna', 'Technický výkres\r\n', '1436446994.jpg', 1235, 0),
(1237, 'rakcesa', '2015-07-09 15:24:50', 6, 11, 'Masarykovy domovy  ', '', '1436448290.jpg', 635, 1238),
(1238, 'rakcesa', '2015-07-09 15:25:15', 6, 12, 'Masarykovy domovy', '', '1436448315.jpg', 1237, 636),
(1239, 'rakcesa', '2015-07-10 14:53:56', 1, 43, 'Krč', '', '1436532836.jpg', 796, 355),
(1240, 'rakcesa', '2015-07-15 20:19:46', 85, 12, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1436984386.jpg', 1249, 1153),
(1241, 'rakcesa', '2015-07-15 20:20:14', 85, 22, 'Doprava', 'Asi Jihlavska(Foto: Archiv p.Immer)', '1436984414.jpg', 1253, 1254),
(1242, 'rakcesa', '2015-07-15 20:20:32', 85, 8, 'Doprava', 'Jihlavska(Foto: Archiv p.Immer)', '1436984432.jpg', 1246, 1243),
(1243, 'rakcesa', '2015-07-15 20:20:44', 85, 9, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1436984444.jpg', 1242, 1248),
(1244, 'rakcesa', '2015-07-17 10:41:47', 85, 4, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437122507.jpg', 1149, 1245),
(1245, 'rakcesa', '2015-07-17 10:41:57', 85, 5, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437122517.jpg', 1244, 1247),
(1246, 'rakcesa', '2015-07-17 10:42:11', 85, 7, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437122531.jpg', 1247, 1242),
(1247, 'rakcesa', '2015-07-17 10:42:23', 85, 6, 'Doprava', '', '1437122543.jpg', 1245, 1246),
(1248, 'rakcesa', '2015-07-17 10:42:35', 85, 10, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437122555.jpg', 1243, 1249),
(1249, 'rakcesa', '2015-07-17 10:42:44', 85, 11, 'Doprava', 'Tam na konečne (Foto: Archiv p.Immer)', '1437122564.jpg', 1248, 1240),
(1250, 'rakcesa', '2015-07-17 10:42:54', 85, 18, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437122574.jpg', 1156, 1251),
(1251, 'rakcesa', '2015-07-17 10:56:36', 85, 19, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437123396.jpg', 1250, 1252),
(1252, 'rakcesa', '2015-07-17 10:57:47', 85, 20, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437123467.jpg', 1251, 1253),
(1253, 'rakcesa', '2015-07-17 11:01:23', 85, 21, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437123683.jpg', 1252, 1241),
(1254, 'rakcesa', '2015-07-17 11:02:23', 85, 23, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437123743.jpg', 1241, 1255),
(1255, 'rakcesa', '2015-07-17 11:03:50', 85, 24, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437123830.jpg', 1254, 1256),
(1256, 'rakcesa', '2015-07-17 11:04:17', 85, 25, 'Doprava', 'Jihlavska (Foto: Archiv p.Immer)', '1437123857.jpg', 1255, 1159),
(1257, 'rakcesa', '2015-07-20 16:08:37', 55, 16, 'Firma', '', '1437401317.jpg', 966, 0),
(1258, 'rakcesa', '2015-07-20 16:08:49', 55, 1, 'Firma', '', '1437401329.jpg', 0, 1259),
(1259, 'rakcesa', '2015-07-20 16:09:02', 55, 2, 'Firma', '', '1437401342.jpg', 1258, 953),
(1261, 'rakcesa', '2015-07-23 10:22:28', 25, 1, 'Kaplička', 'Z branické ulice (autorem snímku je pan Immer)', '1437639748.jpg', 0, 641),
(1262, 'rakcesa', '2015-07-23 10:28:52', 25, 5, 'Kaplička', 'Z Branické (autorem snímku je pan Papírník - 1978)', '1437640132.jpg', 782, 783),
(1263, 'rakcesa', '2015-07-23 10:29:14', 25, 8, 'Kaplička', 'Ulice V podzámčí (autorem snímku je pan Papírník - 1979)', '1437640154.jpg', 142, 784),
(1264, 'rakcesa', '2015-07-23 15:06:44', 31, 14, 'Kaple sv. Anny', 'Z branické ulice (autorem snímku je pan Sečkár - 2015)', '1437656804.jpg', 1273, 1265),
(1265, 'rakcesa', '2015-07-23 15:07:09', 31, 15, 'Kaple sv. Anny', 'Z branické ulice (autorem snímku je pan Sečkár - 2015)', '1437656829.jpg', 1264, 1266),
(1266, 'rakcesa', '2015-07-23 15:07:37', 31, 16, 'Kaple sv. Anny', 'Z branické ulice (autorem snímku je pan Sečkár - 2015)', '1437656857.jpg', 1265, 0),
(1267, 'rakcesa', '2015-07-23 15:07:58', 31, 8, 'Kaple sv. Anny', 'Z branické ulice (autorem snímku je pan Sečkár - 2015)', '1437656878.jpg', 1274, 1269),
(1268, 'rakcesa', '2015-07-23 15:12:01', 31, 6, 'Kaple sv. Anny', 'Autor - Sečkár - 2014', '1437657121.jpg', 638, 1274),
(1269, 'rakcesa', '2015-07-23 15:12:17', 31, 9, 'Kaple sv. Anny', 'Z Dolnokrčske ulice (autorem snímku je pan Sečkár - 2014)', '1437657137.jpg', 1267, 1272),
(1270, 'rakcesa', '2015-07-23 15:12:35', 31, 11, 'Kaple sv. Anny', 'Z Dolnokrčske ulice (autorem snímku je pan Sečkár - 2014)', '1437657155.jpg', 1272, 1271),
(1271, 'rakcesa', '2015-07-23 15:12:51', 31, 12, 'Kaple sv. Anny', 'Z branické ulice (autorem snímku je pan Sečkár - 2014)', '1437657171.jpg', 1270, 1273),
(1272, 'rakcesa', '2015-07-23 15:13:02', 31, 10, 'Kaple sv. Anny', 'Autor - Sečkár - 2014', '1437657182.jpg', 1269, 1270),
(1273, 'rakcesa', '2015-07-23 15:13:18', 31, 13, 'Kaple sv. Anny', 'Autor - Sečkár - 2014', '1437657198.jpg', 1271, 1264),
(1274, 'rakcesa', '2015-07-23 15:13:30', 31, 7, 'Kaple sv. Anny', 'Autor - Sečkár - 2013', '1437657210.jpg', 1268, 1267),
(1275, 'rakcesa', '2015-07-25 15:45:11', 92, 2, 'Krč', 'Dům 159/11 v dnešní ulici Na Dvorcích u Ryšánky. (<a href="http://www.mapy.cz/s/kefv">MAPA</a>)', '1437831911.jpg', 1234, 1276),
(1276, 'rakcesa', '2015-07-25 15:45:41', 92, 3, 'Krč', 'Dům 155/23 v dnešní ulici Nová cesta u Ryšánky. (<a href="http://www.mapy.cz/s/kefp">MAPA</a>)', '1437831941.jpg', 1275, 1277),
(1277, 'rakcesa', '2015-07-25 15:57:19', 92, 4, 'Kaplička', 'Kaple sv. Anny (Dolnokrčská 1), jeden z posledních pozůstatků Dolní Krče po stavbě Jižní Spojky. (<a href="http://www.mapy.cz/s/kefl">MAPA</a>)', '1437832639.jpg', 1276, 1278),
(1278, 'rakcesa', '2015-08-02 16:39:15', 92, 5, 'Trafostanice', 'Před stavbou Jižní Spojky a dnes - stanice stojí oblouku sjezdu do Budějovické a Michelské/Vídeňské (<a href="http://www.mapy.cz/s/keev">MAPA</a>)', '1438526355.jpg', 1277, 1279),
(1279, 'rakcesa', '2015-08-02 17:36:43', 92, 6, 'Welzův zámek v Krči', 'Pohled od západu (<a href="http://www.mapy.cz/s/kefi">MAPA</a>)', '1438529803.jpg', 1278, 1280),
(1280, 'rakcesa', '2015-08-02 17:51:25', 92, 7, 'Budova "Orient"', 'Nachází se v jižní části areálu Šimsova sanatoria při ohybu ulice Sulická (<a href="http://www.mapy.cz/s/kef9">MAPA</a>)', '1438530685.jpg', 1279, 1288),
(1284, 'rakcesa', '2015-08-17 13:36:59', 95, 1, 'Krč u Protivína', '', '1439811419.jpg', 0, 1291),
(1285, 'rakcesa', '2015-08-17 13:37:22', 95, 3, 'Krč u Protivína', '', '1439811442.jpg', 1291, 1292),
(1286, 'rakcesa', '2015-08-17 13:37:54', 95, 5, 'Krč u Protivína', '', '1439811474.jpg', 1292, 1299),
(1288, 'rakcesa', '2015-08-18 14:22:15', 92, 8, 'Pivovar', 'Někdejší pivovar Pragovar při pohledu od severovýchodu z nájezdu na Jižní Spojku. Starší fotka je z roku 1987, aktuální z roku 2015.', '1439900535.jpg', 1280, 1289),
(1289, 'rakcesa', '2015-08-18 14:45:31', 92, 9, 'Budějovická ulice', 'Pohled nahoru do kopce, kterým vyjíždějí autobusy na Kačerov. Cca 1975 | 2014', '1439901931.jpg', 1288, 0),
(1291, 'rakcesa', '2015-09-05 16:25:53', 95, 2, 'Krč u Protivína', '', '1441463153.jpg', 1284, 1285),
(1292, 'rakcesa', '2015-09-05 16:26:13', 95, 4, 'Krč u Protivína', '', '1441463173.jpg', 1285, 1286),
(1294, 'rakcesa', '2015-10-05 13:12:51', 19, 8, 'Hotel Chateau St. Havel', '', '1444043571.jpg', 775, 1295),
(1295, 'rakcesa', '2015-10-05 13:13:33', 19, 9, 'Hotel Chateau St. Havel', '', '1444043613.jpg', 1294, 1296),
(1296, 'rakcesa', '2015-10-05 13:13:59', 19, 10, 'Hotel Chateau St. Havel', '', '1444043639.jpg', 1295, 1297),
(1297, 'rakcesa', '2015-10-05 13:14:17', 19, 11, 'Hotel Chateau St. Havel', '', '1444043657.jpg', 1296, 1298),
(1298, 'rakcesa', '2015-10-05 13:14:43', 19, 12, 'Hotel Chateau St. Havel', '', '1444043683.jpg', 1297, 0),
(1299, 'rakcesa', '2015-11-20 16:54:07', 95, 6, 'Krč u Protivína', 'Škola', '1448034847.jpg', 1286, 0),
(1300, 'rakcesa', '2015-11-25 15:02:26', 8, 27, 'Rozkoš', '', '1448460146.jpg', 352, 791),
(1301, 'rakcesa', '2015-11-27 14:12:57', 23, 14, 'Fruta', '', '1448629977.jpg', 1189, 1302),
(1302, 'rakcesa', '2015-11-27 14:19:07', 23, 15, 'Fruta - Víno 1', 'Etiketa z lahve od vína. Firma sídlila v areálu Krčského pivovaru (dnes ulice Víděňská u Jižní spojky)', '1448630347.jpg', 1301, 1303),
(1303, 'rakcesa', '2015-11-27 14:19:27', 23, 16, 'Fruta - Víno 2', 'Etiketa z lahve od vína. Firma sídlila v areálu Krčského pivovaru (dnes ulice Víděňská u Jižní spojky)', '1448630367.jpg', 1302, 1304),
(1304, 'rakcesa', '2015-11-27 14:19:44', 23, 17, 'Fruta - Víno 3', 'Etiketa z lahve od vína. Firma sídlila v areálu Krčského pivovaru (dnes ulice Víděňská u Jižní spojky)', '1448630384.jpg', 1303, 1305),
(1305, 'rakcesa', '2015-11-27 14:20:08', 23, 18, 'Fruta', '', '1448630408.jpg', 1304, 1306);
INSERT INTO `elrh_gallery_images` (`id`, `author`, `created`, `gallery`, `ord`, `name`, `dscr`, `image`, `prev`, `next`) VALUES
(1306, 'rakcesa', '2015-11-27 14:20:22', 23, 19, 'Fruta - Limonada', 'Dobová lahev od limonády "Ovocenka" vyráběná bývalou Frutou v Krči', '1448630422.jpg', 1305, 1307),
(1307, 'rakcesa', '2015-11-27 14:20:36', 23, 20, 'Fruta', '', '1448630436.jpg', 1306, 1308),
(1308, 'rakcesa', '2015-11-27 14:20:48', 23, 21, 'Fruta', '', '1448630448.jpg', 1307, 0),
(1309, 'rakcesa', '2015-12-03 14:33:47', 17, 2, 'Kojenecký ústav', 'Budova čislo III.', '1449149627.jpg', 666, 667);

-- --------------------------------------------------------

--
-- Table structure for table `elrh_links`
--

CREATE TABLE IF NOT EXISTS `elrh_links` (
  `id` int(7) NOT NULL,
  `cat` smallint(6) NOT NULL DEFAULT '1',
  `ord` smallint(6) NOT NULL,
  `author` varchar(50) COLLATE latin2_czech_cs NOT NULL,
  `posted` datetime NOT NULL,
  `name` varchar(100) COLLATE latin2_czech_cs NOT NULL,
  `dscr` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `link` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `thumb` varchar(50) COLLATE latin2_czech_cs NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs;

--
-- Dumping data for table `elrh_links`
--

INSERT INTO `elrh_links` (`id`, `cat`, `ord`, `author`, `posted`, `name`, `dscr`, `link`, `thumb`) VALUES
(1, 2, 3, 'rakcesa', '2010-03-11 10:07:47', 'Posázavský Pacifik', 'Stránka věnovaná historii železničních tratí 210 a 212', 'http://www.pacifikem.cz/', '/content/thumbs/pacifik.jpg'),
(2, 2, 2, 'rakcesa', '2011-02-16 16:08:34', 'Amatérské divadlo', 'Vše o amatérském divadle ', 'http://www.amaterskedivadlo.cz/', '/content/thumbs/divadlo.png'),
(3, 1, 0, 'rakcesa', '2012-03-11 12:10:32', 'Sokol', 'Obrazy z minulosti České Obce Sokolské', 'http://sokol.wz.cz', '/content/thumbs/sokol.png'),
(4, 1, 0, 'rakcesa', '2012-04-28 12:11:36', 'Masaryk', 'Obrazy ze života TGM, prvního československého prezidenta', 'http://masaryk.xf.cz', '/content/thumbs/masaryk.png'),
(5, 3, 0, 'ellrohir', '2013-02-21 14:45:00', 'Naše kavárna', 'Kavárna v prostorech Thomayerovy nemocnice, pavilon A1', 'http://www.nasekavarna.com/cs/', '/content/thumbs/kava.jpg'),
(6, 2, 1, 'ellrohir', '2013-03-19 21:00:00', 'Stará Praha', 'Staré pohlednice a historické fotografie Prahy', 'http://www.starapraha.cz/index.php', '/content/thumbs/praha.jpg'),
(7, 4, 1, 'ellrohir', '2013-09-01 17:42:23', 'TJ Sokol Praha Krč', 'Web krčského oddílu Sokola', 'http://sokolprahakrc.webnode.cz/', '/content/thumbs/sokol.jpg'),
(8, 4, 0, 'ellrohir', '2013-09-03 15:38:50', 'Městská část Praha 4', 'Web úřadu městské části Praha 4, pod kterou Krč spadá', 'http://www.praha4.cz/', '/content/thumbs/praha4.jpg'),
(9, 4, 2, 'ellrohir', '2014-11-24 15:30:00', 'Občanské sdružení Stará Krč', 'Stránky sdružení místních obyvatel, jehož cílem je ochrana životního prostředí<br />a zlepšování životních podmínek v oblasti staré Krče.  ', 'http://www.starakrc.cz/', '/content/thumbs/krc.png'),
(10, 2, 4, 'ellrohir', '2014-11-24 16:00:00', 'Historické Mapy', 'Prodejna replik historických map, vedut a rytin v centru Prahy.', 'http://www.historicke-mapy.cz/', '/content/thumbs/mapy.png'),
(11, 4, 3, 'ellrohir', '2015-02-18 11:00:00', 'Svět dětí v Krči', 'Občanské sdružení na podporu dětí z Dětského centra v Praze 4.', 'http://www.svet-deti.org/', '/content/thumbs/deti.png'),
(12, 1, 1, 'ellrohir', '2015-10-15 20:00:00', 'Svobodní Praha 4', 'Web pobočky Svobodných v Praze 4', 'http://praha4.svobodni.cz/', '/content/thumbs/svobodnip4.png'),
(13, 1, 2, 'ellrohir', '2015-10-15 20:00:00', 'Svobodná TV', 'Stránky internetové Svobodné televize', 'http://www.svobodnatv.cz/', '/content/thumbs/svobodnatv.png');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_links_cat`
--

CREATE TABLE IF NOT EXISTS `elrh_links_cat` (
  `id` int(11) NOT NULL,
  `ord` smallint(6) NOT NULL,
  `name` varchar(25) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `elrh_links_cat`
--

INSERT INTO `elrh_links_cat` (`id`, `ord`, `name`) VALUES
(1, 3, 'Ostatní'),
(2, 1, 'Historie'),
(4, 0, 'Krč');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_map`
--

CREATE TABLE IF NOT EXISTS `elrh_map` (
  `id` int(3) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
  `gallery` int(5) NOT NULL,
  `top` int(3) NOT NULL,
  `left` int(3) NOT NULL,
  `size` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs;

--
-- Dumping data for table `elrh_map`
--

INSERT INTO `elrh_map` (`id`, `name`, `gallery`, `top`, `left`, `size`) VALUES
(1, 'Lesní­ divadlo', 5, 460, 40, 85),
(2, 'Sokol Krč', 9, 100, 250, 45),
(3, 'Krčský pivovar', 23, 105, 325, 70),
(4, 'Kaplička', 25, 195, 95, 40),
(5, 'Masarykovy domovy', 6, 310, 380, 125),
(6, 'Sanatorium dr. Šimsy', 8, 365, 95, 60),
(7, 'Welzův zámek', 10, 170, 210, 50),
(8, 'Dívčí zahradnická škola', 26, 295, 295, 40),
(9, 'Restaurace U Labutě', 7, 248, 375, 40),
(10, 'Restaurace Hájovna', 24, 215, 495, 40),
(11, 'Nádraží', 22, 190, 290, 40);

-- --------------------------------------------------------

--
-- Table structure for table `elrh_news`
--

CREATE TABLE IF NOT EXISTS `elrh_news` (
  `id` int(11) NOT NULL,
  `date` varchar(10) COLLATE utf8_czech_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `elrh_news`
--

INSERT INTO `elrh_news` (`id`, `date`, `author`, `content`) VALUES
(1, '2012-11-29', 'ellrohir', 'Přesun na nový hosting firmy WEDOS Internet, a.s.'),
(2, '2012-12-11', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=1">článek</a> o Krči od Aloise Papírníka'),
(3, '2012-12-23', 'ellrohir', 'Reorganizace galerií'),
(4, '2012-12-27', 'ellrohir', 'Drobná reorganizace obrazového obsahu'),
(5, '2013-02-10', 'ellrohir', 'Nová <a href="http://www.krc-historie.cz/index.php?page=articles&aid=2">recenze</a> na knihu od Aloise Sečkára'),
(6, '2013-03-08', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=4">článek</a> o válečných pomnících od Aloise Sečkára'),
(7, '2013-03-16', 'ellrohir', 'Na základě textu Aloise Papírníka doplněny popisy některých galerií'),
(8, '2013-03-17', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=6">článek</a> o Pražském povstání od Aloise Papírníka'),
(9, '2013-03-18', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=7">článek</a> o architektonických plánech od Aloise Papírníka + úprava grafického vzhledu'),
(10, '2013-09-02', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=8">článek</a> o krčském Sokolu od Aloise Sečkára'),
(11, '2013-09-03', 'ellrohir', 'Aktualizován <a href="http://www.krc-historie.cz/index.php?page=articles&aid=4">článek</a> s přehledem válečných památníků'),
(12, '2013-10-05', 'ellrohir', 'Opravena a vyčištěna galerie č. <a href="http://www.krc-historie.cz/index.php?page=gallery&gid=1">1 - Stará Krč</a>'),
(13, '2013-11-09', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=9">článek</a> o Šimsově sanatoriu od Aloise Sečkára'),
(14, '2013-11-18', 'ellrohir', 'Aktualizován <a href="http://www.krc-historie.cz/index.php?page=articles&aid=4">článek</a> s přehledem válečných památníků - 4 nové památníky a nová mapa'),
(15, '2013-12-01', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=11">článek</a> o Náboženském oběžníku od Aloise Sečkára'),
(16, '2013-12-02', 'ellrohir', 'Přidáno pár nových pohledů na dnešní Welzův zámek a Společenskou zahradu'),
(17, '2013-12-05', 'ellrohir', 'Několik nových obrázků Sanatoria a Masarykových domovů'),
(18, '2013-12-27', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=12">článek</a> o velké povodni roku 1903'),
(19, '2014-01-18', 'ellrohir', 'Nový <a href="http://www.krc-historie.cz/index.php?page=articles&aid=13">článek</a> odkazující na srovnávací fotky autora Václava Víška'),
(20, '2014-03-02', 'ellrohir', 'Menší úprava vzhledu, refaktoring kódu, nová sekce <a href="index.php?page=books">Knihy</a>'),
(21, '2014-03-16', 'ellrohir', 'Nový <a href="index.php?page=articles&aid=14">článek</a> odkazující na text o Krči + nové fotky <a href="index.php?page=gallery&gid=30">Restaurace Hájovna</a>'),
(22, '2014-05-13', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=55">galerie</a> s dobovými inzeráty místních krčských firem'),
(23, '2014-06-10', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=63">galerie</a> s čtyřstránkovým článkem o doktoru Šimsovi'),
(24, '2014-10-16', 'ellrohir', 'Nový <a href="index.php?page=articles&aid=15">článek</a> odkazující na text o Zelené lišce + 3 nové fotky (galerie <a href="index.php?page=gallery&gid=1">1</a> a <a href="index.php?page=gallery&gid=4">5</a>)'),
(25, '2014-12-06', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=71">galerie</a> o hasičském sboru v Krči'),
(26, '2015-02-09', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=72">galerie</a> o domu Školských sester de Notre-Dame v Krči'),
(27, '2015-02-23', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=76">galerie</a> o sousedních Kunraticích'),
(28, '2015-04-07', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=85">galerie</a> o dopravě v Krči a okolí'),
(29, '2015-03-08', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=74">galerie</a> o sousední Lhotce'),
(30, '2015-03-29', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=83">galerie</a> o Klárově ústavu'),
(31, '2015-06-14', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=86">galerie</a> o sousední čtvrti Braníku spolu s několika podkategoriemi'),
(32, '2015-07-09', 'ellrohir', 'Nová <a href="index.php?page=gallery&gid=94">galerie</a> o Krčské vodárně'),
(33, '2016-01-03', 'ellrohir', 'Nasazení nového webu - nový vzhled a vylepšení funkcionality');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_settings`
--

CREATE TABLE IF NOT EXISTS `elrh_settings` (
  `var` varchar(25) COLLATE utf8_czech_ci NOT NULL,
  `dscr` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `value` text COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `elrh_settings`
--

INSERT INTO `elrh_settings` (`var`, `dscr`, `value`) VALUES
('admin_mail', 'Contact to reach admin', 'seckar@svobodni.cz'),
('ads_left', 'Advertisement to be displayed in footer left', '<a href="http://svobodnatv.cz" title="Reklama - Svobodná TV"><img src="/content/thumbs/bar_tv.png" alt="Svobodná TV" width="88" height="31" /></a>\r\n<a href="http://praha4.svobodni.cz" title="Reklama - Svobodní Praha 4"><img src="/content/thumbs/bar_p4.png" alt="Svobodní Praha 4" width="88" height="31" /></a>'),
('ads_right', 'Advertisement to be displayed in footer right', '<a href="http://praha4.svobodni.cz" title="Reklama - Svobodní Praha 4"><img src="/content/thumbs/bar_p4.png" alt="Svobodní Praha 4" width="88" height="31" /></a>\r\n<a href="http://svobodnatv.cz" title="Reklama - Svobodná TV"><img src="/content/thumbs/bar_tv.png" alt="Svobodná TV" width="88" height="31" /></a>'),
('fb_image', 'Default image for sharing items on FB.', 'http://krc-historie.cz/skin/header_left.jpg'),
('ga_id', 'Site-ID for Google Analytics', 'UA-71909448-1'),
('global_title', 'Page name that appears in html titles etc.', 'Stará Krč'),
('global_url', 'URL to root', 'http://krc-historie.cz/'),
('toplist_id', 'Site-ID for Toplist pagecounter', '1445867');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_texts`
--

CREATE TABLE IF NOT EXISTS `elrh_texts` (
  `id` int(11) NOT NULL,
  `lang` varchar(2) COLLATE utf8_czech_ci NOT NULL,
  `var` varchar(25) COLLATE utf8_czech_ci NOT NULL,
  `value` text COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `elrh_texts`
--

INSERT INTO `elrh_texts` (`id`, `lang`, `var`, `value`) VALUES
(1, 'cz', 'global_menu_index', 'Index'),
(2, 'cz', 'global_menu_articles', 'Články'),
(3, 'cz', 'global_menu_gallery', 'Galerie'),
(4, 'cz', 'global_menu_library', 'Knihovna'),
(5, 'cz', 'global_menu_links', 'Odkazy'),
(6, 'cz', 'global_menu_contacts', 'Kontakty'),
(7, 'cz', 'global_site_title', 'Stará Krč - Historie městské části Praha-Krč'),
(8, 'cz', 'global_site_motto', 'Historie městské části Praha-Krč'),
(9, 'cz', 'global_meta_dscr', 'Stará Krč - Historie městské části Praha-Krč'),
(10, 'cz', 'global_menu_index_dscr', 'Hlavní stránka'),
(11, 'cz', 'global_menu_articles_dscr', 'Články a texty'),
(12, 'cz', 'global_menu_gallery_dscr', 'Fotografie a obrázky'),
(13, 'cz', 'global_menu_library_dscr', 'Tematická literatura'),
(14, 'cz', 'global_menu_links_dscr', 'Související odkazy'),
(15, 'cz', 'global_menu_contacts_dscr', 'Kontakty na autory'),
(16, 'cz', 'index_info', 'Vítejte na stránkách, kde bychom vám rádi on-line zprostředkoval naši sbírku starých pohledů a&nbsp;fotografií doplněných o&nbsp;informace o&nbsp;pražské Krči. Cílem je zprostředkovat historii této vesnice a&nbsp;později městské části všem návštěvníkům tohoto webu z&nbsp;řad zájemců o&nbsp;historii, místních obyvatel i&nbsp;náhodných návštěvníků.\r\nV&nbsp;<a href="/gallery">galerii</a> naleznete oskenované ukázky originálních pohledů, dobových materiálů a&nbsp;vlastních fotografií. V&nbsp;sekci <a href="/articles">články</a> se postupně objevují různá historická povídání a&nbsp;v&nbsp;oddílu <a href="/library">knihovna</a> odkazy na tematickou literaturu.\r\nPokud vás toto téma zajímá a&nbsp;chtěli byste se dozvědět víc, nebo chcete přímo navázat kontakt a&nbsp;spolupráci, můžete nás <a href="/contacts">kontaktovat</a>. V&nbsp;neposlední řadě nabízíme <a href="/links">odkazy</a> související se sbíráním starých pohledů, s&nbsp;výzkumem historie Prahy a&nbsp;dalšími zajímavými tématy. '),
(17, 'cz', 'index_headline', 'Stará Krč'),
(18, 'cz', 'news_headline', 'Novinky'),
(19, 'cz', 'news_date', 'Datum'),
(20, 'cz', 'news_item', 'Novinka'),
(21, 'cz', 'news_all', 'Zobrazit vše...'),
(22, 'cz', 'news_info', 'Všechny novinky na webu:'),
(23, 'cz', 'nav_top', 'Nahoru'),
(24, 'cz', 'nav_index', 'Na index'),
(25, 'cz', 'nav_map', 'Mapa stránek'),
(26, 'cz', 'links_headline', 'Odkazy'),
(27, 'cz', 'links_info', 'Odkazy na všemožné zajímavé a&nbsp;nějak související stránky:'),
(28, 'cz', 'map_index', 'INDEX'),
(29, 'cz', 'map_index_dscr', 'Hlavní stránka webu'),
(30, 'cz', 'map_news', 'NOVINKY'),
(31, 'cz', 'map_news_dscr', 'Přehled novinek na webu'),
(32, 'cz', 'map_sitemap', 'MAPA STRÁNEK'),
(33, 'cz', 'map_sitemap_dscr', 'Přehled obsahu webu'),
(34, 'cz', 'map_headline', 'Mapa stránek'),
(35, 'cz', 'map_info', 'Zde naleznete přehledně uspořádaný obsah našeho webu:'),
(36, 'cz', 'map_articles', 'ČLÁNKY'),
(37, 'cz', 'map_articles_dscr', 'Přehled a prohlížení článků a textů'),
(38, 'cz', 'map_gallery', 'GALERIE'),
(39, 'cz', 'map_gallery_dscr', 'Náhledy a prohlížení fotografií a obrázků'),
(40, 'cz', 'map_library', 'KNIHOVNA'),
(41, 'cz', 'map_library_dscr', 'Tematicky související literatura'),
(42, 'cz', 'map_links', 'ODKAZY'),
(43, 'cz', 'map_links_dscr', 'Odkazy na jiné zajímavé stránky'),
(44, 'cz', 'map_contacts', 'KONTAKTY'),
(45, 'cz', 'map_contacts_dscr', 'Spojení na autory a zpětná vazba'),
(46, 'cz', 'index_news_headline', 'Novinky'),
(47, 'cz', 'index_news_date', 'Datum'),
(48, 'cz', 'index_news_item', 'Novinka'),
(49, 'cz', 'index_news_all', 'Zobrazit vše...'),
(50, 'cz', 'articles_headline', 'Články'),
(51, 'cz', 'articles_info', 'Různá zajímavá povídání o Krči a zdejší historii, která si zaslouží vlastní prostor mimo popisné texty obrázkových galerií:'),
(52, 'cz', 'articles_noarticle', 'Článek se zadaným ID se bohužel na webu nenachází...'),
(53, 'cz', 'articles_comments', 'Komentáře'),
(54, 'cz', 'articles_list', 'Přehled článků'),
(55, 'cz', 'articles_gallery', 'S článkem je spojena následující galerie obrázků:'),
(56, 'cz', 'articles_nogallery', 'S článkem není spojena žádná galerie obrázků.'),
(57, 'cz', 'articles_gallery_images', 'obrázků'),
(58, 'cz', 'articles_author', 'Autor'),
(59, 'cz', 'articles_cat', 'Kategorie'),
(60, 'cz', 'articles_date', 'Publikováno'),
(61, 'cz', 'articles_name', 'Článek'),
(62, 'cz', 'articles_related', 'Galerie'),
(63, 'cz', 'articles_read', 'číst článek'),
(64, 'cz', 'articles_nocontent', 'Nenalezeny žádné články.'),
(65, 'cz', 'contacts_headline', 'Kontakty'),
(66, 'cz', 'contacts_info', 'Spojit se s autory webu můžete následujícími způsoby:'),
(67, 'cz', 'contacts_other', 'Zaujalo vás něco z&nbsp;informací zde zveřejněných? Chtěli byste se o&nbsp;tématu dozvědět víc? Máte nějaké další poznatky o historii Staré Krče, o&nbsp;které byste se chtěli podělit? Nebo jste na stránkách odhalili nepřesnost? Těšíme se na vaše podněty a&nbsp;předem za jakoukoliv zpětnou vazbu děkujeme.'),
(68, 'cz', 'contacts_fb', 'Lze též vkládat vzkazy přímo sem prostřednictvím tohoto FB modulu (<a href="/content/fb_archive.png" title="Screen komentářů, které se ztratily při změně adresy webu">archiv staré diskuse</a>):'),
(70, 'cz', 'library_headline', 'Knihovna'),
(71, 'cz', 'library_info', 'Seznam knih, ve kterých hraje roli Krč:'),
(72, 'cz', 'library_external', 'Externí recenze'),
(73, 'cz', 'library_review', 'Recenze'),
(74, 'cz', 'admin_headline', 'Administrace'),
(75, 'cz', 'admin_info', 'Prozatím nedostupná...'),
(76, 'cz', 'gallery_headline', 'Galerie'),
(77, 'cz', 'gallery_info', 'Těžiště tohoto webu spočívá v bohatém fotografickém a obrázkovém materiálu, který naleznete zde. Obsah je tematicky rozdělen do jednotlivých galerií, které mohou obsahovat další podkategorie. K některým galeriím se vážou související <a href="/articles">články</a>. Nyní si prohlížíte hlavní stránku galerie:'),
(78, 'cz', 'gallery_noimage', 'Obrázek se zadaným ID se bohužel na webu nenachází... '),
(79, 'cz', 'gallery_nogallery', 'Galerie se zadaným ID se bohužel na webu nenachází... '),
(80, 'cz', 'gallery_nocontent', 'Nenalezeny žádné galerie.'),
(81, 'cz', 'articles_back', 'Zpět na články'),
(82, 'cz', 'gallery_back', 'Zpět na index galerie'),
(83, 'cz', 'gallery_more', 'Číst více'),
(84, 'cz', 'gallery_images', 'Obrázky v galerii'),
(85, 'cz', 'gallery_images_total_1', 'Celkem'),
(86, 'cz', 'gallery_images_total_2', 'obrázků'),
(87, 'cz', 'gallery_galleries', 'Podkategorie'),
(88, 'cz', 'gallery_articles', 'Související články'),
(89, 'cz', 'gallery_display', 'zobrazit detail galerie'),
(90, 'cz', 'gallery_images_none', 'Galerie neobsahuje žádné obrázky'),
(91, 'cz', 'gallery_error', 'Zdá se, že bohužel došlo k chybě při zadávání odkazu. Zkontrolujte prosím požadovanou URL. V případě trvajících potíží kontaktujte majitele stránek.'),
(92, 'cz', 'gallery_author', 'Autor'),
(93, 'cz', 'gallery_cat', 'Nadřazená galerie'),
(94, 'cz', 'gallery_date', 'Založeno'),
(95, 'cz', 'gallery_parent', 'Index'),
(96, 'cz', 'gallery_dscr', '<em>...popis není k dispozici...</em>'),
(97, 'cz', 'gallery_created', 'Vloženo'),
(98, 'cz', 'gallery_full', 'Zobrazit plnou velikost (v novém okně)'),
(99, 'cz', 'global_image_prev', 'Předchozí'),
(100, 'cz', 'global_image_next', 'Následující'),
(101, 'cz', 'global_image_gallery', 'Galerie');

-- --------------------------------------------------------

--
-- Table structure for table `elrh_users`
--

CREATE TABLE IF NOT EXISTS `elrh_users` (
  `u_name` varchar(50) COLLATE latin2_czech_cs NOT NULL DEFAULT '',
  `u_pass` varchar(100) COLLATE latin2_czech_cs NOT NULL,
  `u_mail` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `u_web` varchar(255) COLLATE latin2_czech_cs NOT NULL,
  `u_displayed_name` varchar(25) COLLATE latin2_czech_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_czech_cs;

--
-- Dumping data for table `elrh_users`
--

INSERT INTO `elrh_users` (`u_name`, `u_pass`, `u_mail`, `u_web`, `u_displayed_name`) VALUES
('ellrohir', 'bde4cd11f9e7a74c906f84b14c5afd29b72e14d5', 'seckar@svobodni.cz', 'http://alois-seckar.cz', 'Alois Sečkár'),
('rakcesa', '3f0a2ac50add311fc5d9640582c88d103208b4c8', 'rakcesa@seznam.cz', 'http://krc-historie.cz', 'Anton Sečkár');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elrh_articles`
--
ALTER TABLE `elrh_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_books`
--
ALTER TABLE `elrh_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_books_cat`
--
ALTER TABLE `elrh_books_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_comments`
--
ALTER TABLE `elrh_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_contacts`
--
ALTER TABLE `elrh_contacts`
  ADD PRIMARY KEY (`contact`,`name`);

--
-- Indexes for table `elrh_gallery_galleries`
--
ALTER TABLE `elrh_gallery_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_gallery_images`
--
ALTER TABLE `elrh_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_links`
--
ALTER TABLE `elrh_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_links_cat`
--
ALTER TABLE `elrh_links_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_map`
--
ALTER TABLE `elrh_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_news`
--
ALTER TABLE `elrh_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_settings`
--
ALTER TABLE `elrh_settings`
  ADD PRIMARY KEY (`var`);

--
-- Indexes for table `elrh_texts`
--
ALTER TABLE `elrh_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elrh_users`
--
ALTER TABLE `elrh_users`
  ADD PRIMARY KEY (`u_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elrh_articles`
--
ALTER TABLE `elrh_articles`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `elrh_books`
--
ALTER TABLE `elrh_books`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `elrh_books_cat`
--
ALTER TABLE `elrh_books_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `elrh_comments`
--
ALTER TABLE `elrh_comments`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `elrh_gallery_galleries`
--
ALTER TABLE `elrh_gallery_galleries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `elrh_gallery_images`
--
ALTER TABLE `elrh_gallery_images`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1310;
--
-- AUTO_INCREMENT for table `elrh_links`
--
ALTER TABLE `elrh_links`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `elrh_links_cat`
--
ALTER TABLE `elrh_links_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `elrh_map`
--
ALTER TABLE `elrh_map`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `elrh_news`
--
ALTER TABLE `elrh_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `elrh_texts`
--
ALTER TABLE `elrh_texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;