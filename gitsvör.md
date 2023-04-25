### 1 .Hvað gera eftirfarandi Linux skipanir?
* **cd** - Change Directory. - Þessi skipun hjálpar manni að navigeita milli mappa.
* **ls** - Þessi skipun sýnir innihald möppu. - List.
* **pwd** - Print Working Directory. - Sýna möppuna sem þú ert að vinna í.
* **mkdir** - Make Directory - Þessi skipun býr til möppu.

***

### 2. Hvað gera eftirfarandi Git skipanir?
* **git clone**  - Þessi skipun er notuð til að afrita geymslu - repository.
* **git status** - Færð lista yfir breytingar, líka þær sem hafa verið búnar til en
             ekki bættar við í geymsluna.
* **git diff**   - Leyfir þér að bera saman breytingar á milli tveggja skráa eða mappa.
               Leyfir þér að sjá þær breytingar sem þú hefur gert á skjali sem hefur
               ekki enn verið pushað yfir. Svo gerir þessi skipun örugglega margt fleira.     

***

### 3. Hvað gera eftirfarandi Git skipanir saman? Hvaða gagn er að þeirri aðgerð?
* **git log** - Sýnir yfirlit yfir commit sem ég hef gert.
* **git checkout** - Leyfir mér að skipta á milli greina.
* **git branch** - Býr til grein, eyða grein, sýna greinar.
    - Þessar skipanir virka saman í að stjórna greinum eða branches.
    - Það er hægt að hugsa um **git branch** sem stjórnstöð sen heldur utan um allar greinar
    - Það er hægt að hugsa um **git checkout** sem leiðsögumann sem leiðir þig á milli.


### 4. Hvað er útgáfustýring (Version Control)?
* Git leyfir notendum að halda utan um öllum breytingar sem eru gerðar á geymslunni, 
  búa til greinar til að vinna með og sameina breytingar á milli þeirra.

### 5. Hverjir eru helstu kostir við að nota GIT?
* Það er opinn hugbúnaður.
* Hægt að vinna með greinar.
* Getur haldið utan um allar breytingar.
* Hægt að sameina breytingar á milli greina.
* Fjölbreytileiki
* Geta til að afturkalla breytingar.

### 6. Hversu oft telur þú að eigi að gera færslur (commit) í verkefni?
* Ég persónulega geri commit alltaf með hverri breytingu sem ég geri á skjali.

### 7. Hvað er átt við með “Working Directory”?” og “Staging Area” í GIT?
* **Working directory** er staðurinn sem inniheldur allar skrárnar sem tilheyra git geymslunni.
    - Þegar ég geri breytingar þar eru þær ekki skráðar fyrr en ég hef bætt þeim inn í staging area.
* **Staging Area** er millistig **Working Directory** og git geymslunnar. Þegar ég nota **git add**
    þá eru breytingarnar búnar til og tilbúnar til að verða skráðar með git commit.