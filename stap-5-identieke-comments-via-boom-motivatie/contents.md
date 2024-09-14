Tijdens het testen van je programma zal je misschien vaststellen dat strings met het `#`-karakter een probleem vormen. Zelfs als er geen sprake is van een identieke comment, kan een benadering met reguliere expressies hier problemen leveren.

Je zou eventueel op zoek kunnen gaan naar voorafgaande symbolen zoals `'` of `"`, maar het wordt erg lastig als je begint na te denken over hoe allerlei constructies in elkaar genest kunnen worden. Straffer nog, reguliere expressies zijn bewijsbaar niet in staat met onbegrensde niveaus van nesting om te gaan.

Daarom zullen we comments op een tweede, meer verfijnde manier herkennen.
Hiervoor zullen we de **syntaxboom** van een programma opstellen.
Dit is een voorstelling met meer structuur dan de vlakke tekst die je in je broncode ziet.
Eens we deze boomstructuur hebben, kunnen we heel gericht commentaar opsporen en in kaart brengen door middel van het **Visitor** pattern.
