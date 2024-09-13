We kunnen uiteraard de auteurs niet zomaar hardcoderen.
We willen dat ons programma per kolom een echte (geanonimiseerde) student toont.
We zullen dit doen door een map met opdrachten aan te duiden, met één submap per student.
Dat zou je als volgt kunnen voorstellen (bijvoorbeeld met het command line programma `tree`):

```
Opdrachten
├── Kristof Michiels
│   └── opdracht.py
├── Stijn Doggen
│   └── opdracht.py
└── Vincent Nys
    └── opdracht.py
```

Omdat er weinig of veel submappen kunnen zijn, kunnen we niet meer met hardgecodeerde opmerkingen werken.
Daarom zullen we starten met een heel eenvoudige controle op plagiaat: *als twee studenten identiek dezelfde Python file hebben ingeleverd, vermelden we dat*.

Je hoeft dit nog niet meteen te doen.
Dit kadert de volgende opdrachten.
