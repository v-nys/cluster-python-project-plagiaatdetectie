De meer gesofisticeerde spieker weet dat gemeenschappelijke comments op plagiaat wijzen.
Daarom zal hij comments vaak nog schrappen voor het indienen.

We zouden dus de code kunnen vergelijken na het schrappen van comments, maar we moeten hier mee opletten.
We mogen dit niet met reguliere expressies doen, want dan lopen we het risico substrings met een `#` te schrappen.

De oplossing bestaat er opnieuw in de boomstructuur van de code te gebruiken.
Het Transformer pattern zal ons laten zien hoe we een vergelijking zonder commentaar kunnen doen.
