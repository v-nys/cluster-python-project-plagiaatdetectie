Start met een hardgecodeerde lijst van auteursnamen.
De interne voorstelling van de matrix met opmerkingen is van het type `dict[str, dict[str, list[str]]]`,
waarbij de eerste twee `str's` auteursnamen zijn.
De lijst is een lijst met opmerkingen over de combinatie van auteurs.
Dus als er een verdachte overeenkomst tussen de twee auteurs is, plaats je een stuk tekst dat die overeenkomst omschrijft in de lijst.

Gebruik een dictionary comprehension om de lege matrix te maken.
Plaats er dan manueel een paar opmerkingen in bij combinaties naar keuze.
Denk eraan, als je student A al vergeleken hebt met student B, hoef je student B niet opnieuw te vergelijken met student A.
Anders gezegd: als je een dictionary entry `comments["student A"]["student B"]` hebt, hoef je geen `comments["student B"]["student A"]` te hebben, zelfs geen lege lijst.

Toon dan de opmerkingen in tabelformaat door ze te renderen met Jinja.
Bijvoorbeeld:

```
| combinatie         | Kristof Michiels | Stijn Doggen            | Vincent Nys                    |
|--------------------|------------------|-------------------------|--------------------------------|
| Kristof Michiels   | /                | zelfde spelfout: "aray" | zelfde spelfout: "pithon"      |
| Stijn Doggen       | /                | /                       | /                              |
```

Je mag zelf bepalen welke informatie je meegeeft aan de `render` functie van Jinja.
In de Jinja template designer documentatie vind je terug hoe je een dictionary doorloopt.
In een Jinja statement mag je ook de methode `get` van een dictionary oproepen.
Deze methode werkt zoals in normale Python code: als je een tweede argument meegeeft, is dat de defaultwaarde wanneer er geen key gevonden wordt.
