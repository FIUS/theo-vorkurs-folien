# Vorkurs Theoretische Informatik
Dies ist das aktuelle Repository für die Organisation und Erstelllung der Folien und Umfragebögen für den Vorkurs "Theoretische Informatik" der Fachgruppe Informatik der Universität Stuttgart.
Dieser wird zu Beginn jedes Wintersemesters kostenlos für alle neuen Studierenden der Universität Stuttgart veranstaltet.



FIUS-Wiki (hautsächlich Orga-Krams und Protokolle): https://fius.informatik.uni-stuttgart.de/wiki/doku.php?id=fachschaft:reader:aktivitaetenundaks:theovorkurs

Webseite: https://fius.informatik.uni-stuttgart.de/dienste/theo-vorkurs/

## Bauen der Folien
### Mit GNU-Make
Alles auszuführen im Verzeichnis `presentation`

Einzelner Tag (Präsentation):
```bash
make day-x
```

Einzelner Tag (Handout):
```bash
make day-x-handout
```

Alle Tage:
```bash
make
```

### Ohne GNU-Make
Alles auszuführen im Verzeichnis `presentation/slides`

Einzelner Tag (Präsentation):
```
latexmk -pdf day-x.tex
```

Einzelner Tag (Handout):
```
latexmk -pdf day-x-handout.tex
```