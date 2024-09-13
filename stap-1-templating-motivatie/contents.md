We zullen eerst het outputformaat voor plagiaatdetectie voorzien. Dit is een tabel waarin elke auteur éénmaal voorkomt als rijhoofding en éénmaal als kolomhoofding, tenzij het om de laatste auteur gaat. In de cellen zullen we een reeks opmerkingen plaatsen. Waar een vergelijking overbodig is, zetten we een `/`. Bijvoorbeeld, als er niets te zeggen valt over de combinatie van auteurs 2 en 3, maar als auteurs 1 en 3 dezelfde verdachte fout hebben gemaakt, zie je iets als volgt:

| combinatie | auteur 1 | auteur 2                | auteur 3                       |
|------------|----------|-------------------------|--------------------------------|
| auteur 1   | /        | zelfde spelfout: "aray" | zelfde spelfout: "pithon"      |
| auteur 2   | /        | /                       | /                              |

Merk op dat een overeenkomst tussen auteur 1 en auteur 2 niet opnieuw vermeld wordt op de rij van auteur 2.
De overeenkomst is er wel, maar het zou zinloos zijn ze te herhalen.
Merk op dat auteur 3 enkel als kolomhoofding voorkomt, omdat er geen extra vergelijkingen meer nodig zijn. 

We zullen deze tabel weergeven met behulp van Jinja.
Per combinatie van auteurs zullen we ook een lijst opmerkingen bijhouden.
Dit zullen we beknopt doen met dictionary comprehensions.

**Je hoeft dit nog niet meteen te doen.** Dit motiveert alleen de opdrachten die volgen.

