<!--
Copyright 2018, 2019, 2020, 2021 FIUS

This file is part of theo-vorkurs-folien.

theo-vorkurs-folien is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

theo-vorkurs-folien is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with theo-vorkurs-folien.  If not, see <https://www.gnu.org/licenses/>.
-->

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