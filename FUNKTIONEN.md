# Was VAPP kann

Die Übersicht steht im [README](README.md). Hier steht jede Funktion einzeln.

---

## 🔐 Eigener Betrieb, eigene Daten

### Selbst gehostet — die Daten bleiben in der Versammlung

VAPP läuft auf einem Rechner, den die Versammlung kontrolliert: einem kleinen gemieteten Server oder
einem Gerät im Saal. Es gibt keinen Anbieter dazwischen, kein fremdes Rechenzentrum und keinen
Vertrag, der irgendjemandem Einsicht gibt. Eine Anlage gehört genau einer Versammlung — es gibt
keinen Mandantenumschalter, den jemand versehentlich betätigt.

### Einfach zu installieren

Alles, was zum Betrieb gehört, steckt **im Image**: die Compose-Datei, das Einrichtungsskript, der
Start, die Sicherung, das Rückspielen und die vollständige Anleitung. Ein Befehl holt das Bündel,
zwei weitere richten ein und starten. Bündel und Anwendung gehören dadurch immer derselben Fassung
an — es gibt keinen zweiten Download, der veralten kann.

### Kostenlos, und die Sicherheit ist eingebaut

Es gibt keine Lizenzgebühr und kein Abonnement; die Kosten sind der Server. Verschlüsselte
Verbindung ist Voraussetzung, nicht Zubehör: VAPP holt das Zertifikat auf Wunsch selbst. Die Notizen
in der Datenbank liegen **verschlüsselt** — wer die Datenbank hat, hat sie noch nicht gelesen. Und
Sicherungen laufen nach dem Einrichten von selbst, auf Wunsch an ein zweites Ziel.

### Sichere Anmeldung mit Passkey

Angemeldet wird mit Passkey — Fingerabdruck, Gesicht oder Geräte-PIN — oder klassisch mit Passwort.
Ein Passkey lässt sich nicht abtippen, nicht wiederverwenden und nicht auf einer falschen Seite
eingeben. Den ersten Zugang bekommt jeder als Einladung auf einem Zettel: ein QR-Code, der einmal
gilt und bei dem man sein Passwort selbst festlegt. Ein Passwort zurücksetzen kann nur, wer eine
E-Mail-Adresse hinterlegt hat — sonst hilft der Verwalter.

### Flexible Berechtigungen — jeder sieht, was er braucht

Berechtigungen kommen aus Rollenvorlagen und lassen sich für einzelne Personen davon abweichen; im
Formular steht beides nebeneinander, damit man sieht, was geerbt und was gesetzt ist. Bereiche sind
getrennt: wer Gebiete verwaltet, sieht deshalb noch keine Einteilungen. Und manches ergibt sich von
selbst — wer einer Trolley-Route zugewiesen wird, sieht den Bereich dadurch, ohne dass jemand vorher
eine Berechtigung vergeben muss.

<!-- BILD: bilder/berechtigungen.png — Berechtigungsmatrix einer Person, Vorlage und Abweichung -->

---

## 🗓️ Zusammenkünfte planen

### Einrichtung mit Assistenten

Nach dem Start führt ein Assistent durch die Ersteinrichtung: Versammlung, Zusammenkunftszeiten,
Personen, Bereiche. Jeder Bereich hat danach seine eigene Einrichtung, die nur nach dem fragt, was
er wirklich braucht. Niemand muss vorher wissen, wie die Anwendung aufgebaut ist — die Fragen kommen
in der Reihenfolge, in der man sie beantworten kann.

### Der Arbeitsheft-Import

Das ePub des Arbeitshefts wird eingelesen und legt die Wochen mit ihren Teilen an: Titel, Dauer,
Reihenfolge. Gelesen wird dabei die **Struktur** des Hefts und nicht sein Wortlaut — eine geänderte
Formulierung zerlegt den Import deshalb nicht. Was danach im Plan steht, ist eine Zusammenkunft, an
der nur noch die Namen fehlen.

### Zusammenkünfte anlegen und im Blick behalten

Der Versammlungsplan hält die Zusammenkünfte mit ihren Aufgaben, dazu Reinigung,
Predigtdienst-Zusammenkünfte, Raumbelegung und die Termine, die alle angehen. Er ist für die
gemacht, die einteilen — und für jeden, der wissen will, wann er dran ist. Ein Plan ist ab Anlage
sichtbar; wer still planen will, schaltet ihn ab und wieder an, wenn es passt.

### Planungsassistent für den Ordnungsdienst

Für den Ordnungsdienst und die wiederkehrenden Aufgaben schlägt VAPP eine ganze Woche auf einmal
vor, statt Zeile für Zeile zu fragen. Der Vorschlag ist ein Vorschlag: jede Einteilung lässt sich
einzeln ändern, bevor irgendetwas veröffentlicht wird. Wer viele Wochen auf einmal plant, nimmt die
Massenplanung; wer eine einzelne Zusammenkunft feinjustiert, die Detailplanung.

### Vorschläge, die schon sortiert sind

Die Vorschlagsliste ist nicht alphabetisch, sondern nach Bedarf sortiert: vorne steht, wer lange
nicht dran war. Sie zeigt zu jeder Person, wann sie zuletzt eingeteilt war und wann sie das nächste
Mal dran ist, damit man sieht, was man gerade anrichtet. Vorgeschlagen wird nur, wer die
Qualifikation hinterlegt hat — ist die Liste leer, fehlt eine Angabe, und das ist kein Fehler.

<!-- BILD: bilder/zusammenkuenfte.png — eine geplante Woche im Zeitplan, Aufgaben besetzt -->

---

## 🗺️ Gebiete

### Gebietskarten mit dem Kartenwerkzeug

Ein Gebiet entsteht in der Anwendung, nicht in einem Grafikprogramm: Karte öffnen, Grenze zeichnen,
fertig. Anschriften hängen an dem Gebiet und stehen daneben — mit Klingel und Bewohner als zwei
getrennten Feldern derselben Anschrift, weil das in der Praxis zwei Dinge sind.

### Der Kartenanbieter ist eine Wahl, keine Kacheladresse

Bei der Einrichtung wird der Kartendienst aus einer festen Liste gewählt: OpenStreetMap weltweit
oder das Bundesamt für Kartographie und Geodäsie für Deutschland. Eine feste Liste ist Absicht — der
Dienst erfährt IP-Adresse und Kartenausschnitt jedes Nutzers und wird deshalb in der
Datenschutzerklärung **namentlich** genannt. Wechseln lässt er sich später in den Einstellungen.

### Buch darüber, wer welches Gebiet hat

Die Gebietsverwaltung sagt, was vergeben ist und was frei, und wann ein Gebiet zuletzt bearbeitet
wurde. Sie plant nicht, wohin jemand als Nächstes geht — sie hält fest, was ist. Vergeben wird nur
an Personen, die als Gebietsempfänger markiert sind; das ist bewusst etwas anderes als die
Berechtigung, den Bereich zu sehen.

### Verkündiger verwalten ihr Gebiet selbst — wenn ihr wollt

Auf Wunsch bekommen die Verkündiger ihre eigene Ansicht: sehen, was sie haben, die Bearbeitung
eintragen, zurückgeben. Das ist ein Schalter, keine Voraussetzung — wo der Gebietsdiener alles
selbst führen will, bleibt es dabei.

<!-- BILD: bilder/gebietskarte.png — Gebietskarte mit gezeichneter Grenze und Anschriftenliste -->

---

## 🏛️ Rund um den Saal

### Abwesenheitsplan

Wer weg ist, trägt es ein — und die Einteilung weiß es. Steht eine geplante Abwesenheit im Weg,
meldet VAPP den Konflikt, statt ihn beim Vorlesen des Plans auffallen zu lassen. Jeder pflegt seine
eigene Abwesenheit; der Plan zieht daraus die Folgerungen.

### Raumbelegung

Welcher Raum wann in wessen Plan steht, ist eine eigene Frage — und ausdrücklich nicht dieselbe wie
„für wen ist der Termin". Beides getrennt zu führen ist der Grund, warum ein geteilter Saal
überhaupt planbar ist.

### Reinigung und Instandhaltung

Hauptreinigung, Zwischenreinigung und Übergabereinigung stehen im selben Plan wie alles andere und
werden wie alles andere eingeteilt und benachrichtigt. Die Instandhaltung führt, was zu tun ist und
wer es übernimmt.

### Geteilter Saal, geteilte Pläne

Versammlungen, die sich einen Saal teilen, treten einer Versammlungsgruppe bei. Danach lassen sich
Reinigungspläne und allgemeine Angaben versammlungsübergreifend bereitstellen — jede Versammlung
plant weiter für sich, sieht aber, was die andere im selben Saal vorhat.

<!-- BILD: bilder/raumplan.png — Raumbelegung oder Reinigungsplan über mehrere Wochen -->

---

## 🛒 Öffentliches Zeugnisgeben

### Trolley-Plan mit eigenen Routen

Standorte, Routen und Schichten werden einmal eingerichtet und laufen danach weiter. An der Route
hängen Literatur und Ausstattung, damit vor Ort nichts fehlt. Der Kalender zeigt die Wochen im
Überblick, mit Bereichswechsler für die, die mehrere betreuen.

### Personen buchen ihre Schicht selbst

Wer mitmacht, trägt sich selbst ein — die Verantwortlichen sehen den Stand, statt Listen zu führen
und Rückmeldungen zu sammeln. VAPP ersetzt keine Absprache vor Ort; es hält fest, was abgesprochen
wurde.

### Dienstwochen mit allen Dokumenten

Die Dienstwoche ist eine eigene Planung mit eigenen Regeln, nicht eine Woche wie jede andere. Sie
wird als Ganzes geplant, und die Ausdrucke, die dazugehören, kommen aus derselben Stelle — die
Druckaufträge liegen in der Anwendung, nicht in einem Ordner auf irgendeinem Rechner.

![Der Trolley-Kalender mit Bereichswechsler und Bereichsmenü](https://raw.githubusercontent.com/rbnet-apps/vapp/main/bilder/trolley-calendar.png)

---

## 📣 Erreichen und Überblick

### Benachrichtigung per Push und E-Mail

VAPP benachrichtigt als Push-Nachricht auf dem Gerät und per E-Mail, beides einzeln im Profil
einstellbar. Push braucht keine Adresse, sondern die Erlaubnis des Geräts; E-Mail braucht die
Adresse. Benachrichtigt wird nur, wen es betrifft — es gibt keinen Rundruf an alle, außer man will
ihn ausdrücklich.

### Eilmeldungen, wenn es wirklich alle angeht

Für die Ansage, die niemand übersehen darf, gibt es die Eilmeldung: sie geht an alle und steht
sichtbar an, statt in einem Verlauf unterzugehen. Sie ist bewusst etwas anderes als der Newsfeed und
das Anschlagbrett, damit die Dringlichkeit ihre Bedeutung behält.

### Auswertungen und Statistiken

Wer wann zuletzt eingeteilt war, was offen ist, was sich häuft — die Zahlen, aus denen die
Vorschläge entstehen, sind auch als Übersicht zu sehen. Sie beantworten die Fragen, die sonst
jemand im Kopf behalten muss.

<!-- BILD: bilder/statistik.png — eine Auswertung mit letztem und nächstem Einsatz -->

---

## Und außerdem

- **Als App installierbar.** VAPP lässt sich zum Startbildschirm hinzufügen und verhält sich danach
  wie eine App: eigenes Fenster, eigenes Symbol, kein Adressfeld. Auf dem iPhone über Teilen → Zum
  Home-Bildschirm, auf Android über das Browsermenü.
- **Kalender-Abo.** Eine Adresse, die die eigene Kalender-App von selbst abfragt — die Termine
  stehen dann neben allen anderen im Handy-Kalender, ein Jahr rückwärts und ein Jahr vorwärts. Was
  hineinkommt, wählt jeder selbst.
- **Der eigene Bericht.** Stunden, Studien und Notizen — nur für den, dem sie gehören. Niemand sonst
  sieht sie, auch kein Verwalter, und weitergemeldet wird nichts von allein.
- **Fremdsprachengruppe.** Eine Gruppe bekommt einen eigenen Plan und eigene Gebiete innerhalb
  derselben Versammlung. Sie ist keine zweite Versammlung — Personen und Zugänge bleiben dieselben.
- **Oberfläche auf Deutsch, Englisch, Griechisch und Russisch.**
