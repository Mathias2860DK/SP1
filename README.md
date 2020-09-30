# SP1
Dette er en opgave, hvor vi har bygget videre på et spil. I spillet var der:
- En spiller som kunne styres på WSAD (W = op, S = ned, A = venstre, D = højre).
- En flok fjender som jagtede spilleren. Hvori 11 ud af 12 fjendernes træk fik dem tættere på spilleren (2/3 for at fjenderne rykkede tættere på spilleren (et tal mellem 1-3 blev genereret - hvis tallet blev 1 eller 2 skulle fjenderne følge efter. Hvis tallet blev 3, blev et nyt random tal mellem 1 og 4 genereret og spilleren ville bevæge sig i en random position (potentielt i den rigtige retning).
- En int til at holde styr på hvor meget liv spilleren har (kunne gå i minus og spillet ville fortsætte for evigt).
- En metode til at holde øje med om fjenderne og spiller kollidere med hinanden. (Og hvis de gør mister spilleren liv)
- ALLE SPILLERE, MAD OG FJENDER ER FIRKANTER

Hvad vi har indført til programmet:
- Tilføjet en spiller 2 som styres på piltasterne.
- Madstykker som søger væk fra spilleren. Hvori 11 ud af 12 madenstykkernes træk fik dem længere væk fra spilleren (samme princip som fjenderes træk - bare omvendt (da maden skal komme væk fra spillerne i stedet for tættere på).
- En variabel der gør, at spilleren ikke får minus liv. Og at spillet stopper hvis spiller 1 eller 2 får 0 liv. Og skriver på skærmen, hvilken spiller der har vundet (hvilken spiller der har over 0 liv).
- Implementeret en funktion der gør det muligt for både mad og fjender at vudere hvilken spiller de er tættest på, og derefter agere efter dette.
- Hvis en spiller rammer mad får spilleren liv og maden skifter til en random lokation. (Dog kan spilleren aldrig få mere end den angivne maxLife).
- ALLE SPILLERE, MAD OG FJENDER ER NU BILLEDER (læs længere nede i beskrivelsen).

OBS! PImage er brugt i denne opgave. Billederne kan hentes i data-mappen, og programmet kan køres.
Vil man ikke downloade billederne i data-mappen, kan programmet også køres ved at udkommentere alle PImage's funktioner, og fjerne udkommenteringen af rect(x*40, y*40, 40, 40); Dog vil jeg anbefale at downloade billederne :) Det gør spillet lidt sjovere.


