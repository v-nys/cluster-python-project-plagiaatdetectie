Maak in je programma een mapping (dictionary) van echte namen naar aliassen op basis van volgnummers.
Je koppelt bijvoorbeeld "Kristof Michiels" aan de alias "Student 1", "Stijn Doggen" aan "Student 2", enzovoort.
Doe dit door middel van een `dict[str, str]` die je aanmaakt met een dictionary comprehension.

Om de data anoniem weer te geven, moet je dit dictionary ook doorgeven aan je `render` functie en moet je daar rekening mee houden in je HTML-template.
