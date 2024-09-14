Achterhaal gemeenschappelijke fouten als volgt:

- schrijf een Visitor genaamd `LexiconCollector` om elk woord in een programma te verzamelen
  - je moet alleen zoeken in nodes van het type `simpleString` en `Name`
  - **let op**: omdat LibCST o.a. newlines voorstelt met escapesymbolen en niet met echte whitespace, kan je een zin niet altijd makkelijk in woorden splitsen
    - om hier rond te werken, pas je `ast.literal_eval` toe op een string met escapesymbolen (dan wordt bijvoorbeeld `\n` een echte newline)
- gebruik `pyspellchecker` om spelfouten te herkennen
- gebruik `parse_module` op de code van beide auteurs
- als beide auteurs een woord gebruikt hebben dat niet bestaat, voeg je een opmerking toe in het rapport
