if you want to split one text (or html or similar) file into many, here's a trick:

```split -p '^MARKERTEXTGOESHERE' file.txt out```

will split file.txt whenever a line starts with 'MARKERTEXTGOESHERE', into files outa, outb, outc, ...

I'd love to get it to create numbered files, instead of lettering them a, b, c
for extra credit, I'd love to change the filename to be the first line of text
