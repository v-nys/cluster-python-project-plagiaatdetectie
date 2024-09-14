Een typische aanwijzing dat programmeeropdrachten gekopieerd zijn (maar met aanpassingen) is de aanwezigheid van identieke comments.
Voor de volgende stap willen we dus identieke comments detecteren.
Aangezien we niet precies weten **welke** comments zullen voorkomen, kunnen we niet op zoek gaan naar specifieke tekst.
In plaats daarvan zullen we zoeken naar een patroon: in Python beginnen comments met het symbool `#`.
Om dit te realiseren zullen we gebruik maken van **reguliere expressies**, een tool waarmee je tekstpatronen kan zoeken.
