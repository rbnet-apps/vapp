# Änderungen

Was sich an vapp geändert hat, je Version, neueste zuoberst. Diese Datei ist die
einzige Quelle: sie nennt die laufende Versionsnummer und füllt die Seite
`/changelog` in der Anwendung.

## [9.12.1] — 2026-09-27

### Geändert

- Planung Woche, Wochenende und Predigtdienst: Die Hilfe über dem Raster ist beim ersten Besuch
  zugeklappt, das Raster steht damit sofort oben. Aufgeklappt bleibt sie offen, bis der Browser
  geschlossen wird.

### Behoben

- Notizen-Monitoring: Seite 2 zeigt bei 10 Zeilen wieder die Einträge 11–20 und nicht eine andere
  Liste. Die Filter nach Versammlung und Status lassen keine Seiten mehr halb leer.

## [9.12.0] — 2026-09-26

### ⚠️ Umstellung nötig

- **Der Predigtdienstbericht ist nach dem Update aus.** Die Versammlungsverwaltung schaltet ihn
  unter Versammlung → „Allgemein" ein. Gefragt wird ab dem Monat des Einschaltens. Neue
  Versammlungen starten ohne ihn.
- **Vorher einrichten** — die Bereichseinrichtung des Sekretärs führt durch:
  - die Aufgabe **Sekretär** (ein Ältester),
  - je Gruppe einen **Gruppenaufseher**, mindestens Dienstamtgehilfe und in seiner Gruppe
    eingetragen,
  - die **Pionierliste**. Ohne sie gilt jeder als Verkündiger.
- Soll sonst jemand Berichte sehen: im Rechteraster „Berichte der eigenen Gruppe" oder „Berichte
  der Versammlung" setzen.
- **Für Betreiber:** `NOTES_ENCRYPTION_KEY` muss **vor** dem Update in `.env.local` stehen
  (`setup.sh` legt ihn an). Ohne ihn lässt sich kein Bericht speichern oder lesen.

### Neu

- **Predigtdienstbericht in der App**, jeden Monat, sobald eure Versammlung ihn eingeschaltet hat.
  Ein Monat ohne Tätigkeit ist auch ein Bericht. Den Haken „im Predigtdienst tätig" setzt du
  selbst.
- Führst du das Notizbuch, holt ein Knopf dessen Zahlen in den Bericht.
- Fehlt dein Bericht, erinnert die App am 3. und am 10. Monate vor deinem Beitritt zählen nicht.
- **Gruppenaufseher und Gehilfe** sehen, wer aus der Gruppe noch fehlt, auch als Zahl auf der
  Kachel. Sie erinnern mit einem Klick, tragen Meldungen auf Papier oder per Telefon nach und
  laden die Gruppe als Excel.
- **Der Sekretär** sieht die ganze Versammlung: offene Berichte, Gruppen ohne Aufseher und die
  Zahlen für jw.org in der Reihenfolge des Formulars. Er bestätigt die Eingabe und erfährt von
  späteren Änderungen. Am 18. erinnert ihn die App.
- Ein versehentlich eingetragener Bericht lässt sich löschen.
- **Gruppen:** je Gruppe ein Aufseher und ein Gehilfe, nie dieselbe Person. „Gruppe bearbeiten"
  setzt Mitglieder, Aufseher und Gehilfe. Wer die Gruppe verlässt, verliert die Aufgabe. Der
  Gehilfe sieht die Berichte seiner Gruppe ohne eigenen Schalter und gibt Gebiete aus; die
  Gebietsverwaltung bleibt beim Gebietsdiener.
- **Gruppenliste:** nennt je Gruppe Aufseher, Gehilfe und Mitgliederzahl. Ein Klick auf die Zahl
  öffnet die Personenliste dieser Gruppe.
- **Einrichtung auf einen Blick:** Vor jedem Schritt steht ein Zeichen: Haken = erledigt, leeres
  Kästchen = offen, Pfeil = die App kann es nicht prüfen. „Ort & Räume" ist erledigt, sobald ein
  Raum angelegt ist. Der Datenschutz-Kontakt trägt „Pflicht", solange er fehlt.
- **Kontoeinrichtung, Schritt „Ansicht":** Die Kacheln wählst und sortierst du wie im Profil. Das
  Profilbild ist klein, der Knopf zum Abschließen bleibt unten sichtbar, auch über der Werkzeugleiste
  am Handy.
- **Profil, Ansicht:** Die Kacheln füllen auf dem Handy die Breite und bleiben quadratisch.
- **Datenschutz erklärt:** unter Versammlung → „Kommunikation & Datenschutz". Wer wofür zuständig
  ist, was bei einer Anfrage zu tun ist und wie ihr den AVV per Mail annehmt. AVV und Vorlage für
  euer Verzeichnis sind dort lesbar.
- **Für Betreiber: Datenschutz-Ablauf** unter Admin: deine Aufgaben, die der Verwalter und die
  Schritte bei einer Panne. Dazu der AVV zum Verschicken und die Vorlage für dein Verzeichnis.
- **Für unterwegs laden:** Ein Block unten auf der Startseite lädt deine Seiten aufs Gerät, Pläne
  samt nächster Periode. Er zeigt, wann du zuletzt geladen hast und ob Seiten fehlen. Die Seiten
  bleiben sieben Tage.
- **Offline:** Seiten aus dem Speicher des Geräts tragen oben „Offline — geladen am …".
- **Notizbuch:** Die letzten zwölf Monate sind offen, ältere klappst du auf. Unten löschst du das
  ganze Notizbuch; abgegebene Berichte bleiben.
- **Zeilen je Seite:** unter jeder Liste 5, 10 oder 20. Gilt auf diesem Gerät für alle Listen.
  Ohne Wahl sind es jetzt 10.
- **Neuer Seitenfuß** auf jeder Seite: Sprache und Farbthema mit einem Klick, dazu „Teilen" zum
  Weiterempfehlen.
- **Feedback** ist ein eigener Block unten auf der Startseite.

### Datenschutz

- **Berichte werden nicht aufbewahrt:** Stunden, Studien und Bemerkung sind nach drei Monaten
  gelöscht, der Rest nach acht. Wer sie länger braucht, lädt vorher die Excel.
- Zahlen und Bemerkung liegen verschlüsselt in der Datenbank.
- Die App bewertet niemanden: kein „regelmäßig" oder „untätig", nur sechs Kästchen für die letzten
  Monate.
- Die Datenschutzerklärung nennt jetzt den Bericht. Beim nächsten Anmelden bittet die App erneut
  um Kenntnisnahme.

### Behoben

- Eilmeldungen: Der Kopf bricht auf dem Handy nicht mehr um.
- Gebietsfreigabe: Die Karte hat wieder den Standort-Knopf. Ohne Anmeldung merkt sich das Gerät
  deine Wahl.
- Markdown-Felder zeigen wieder ihren Hinweistext statt `text.markdown_placeholder`.
- Anwesende: Die Sprachgruppe zählt mit, eine rein digitale Zusammenkunft zählt im Durchschnitt.
  Die Tabelle zeigt nur die Zähler, die eure Versammlung führt.

## [9.11.1] — 2026-09-15

### Behoben

- Gebietsbilder, die ihre interne Zuordnung verloren hatten, haben sie zurück. Zu sehen war davon
  nichts — ein neues Bild für eines dieser Gebiete wäre aber an der falschen Stelle gelandet.
- Steht im Kürzel einer Versammlung ein Schrägstrich, legte der Bildupload dafür einen eigenen
  Ordner an. Das passiert nicht mehr.

## [9.11.0] — 2026-09-15

### Geändert

- Gebietsbilder und Anhänge laden deutlich schneller. Sie werden beim Hochladen in ein sparsames
  Format umgerechnet — bei den Gebietsbildern sind das rund drei Viertel weniger Daten. Ein kleines
  Bild bleibt so groß, wie es ist.
- Der Ausdruck merkt davon nichts: er nimmt weiter die hochgeladene Datei und bleibt so scharf wie
  bisher.
- Bilder in Listen springen beim Laden nicht mehr hin und her — ihr Platz steht von Anfang an fest.
- Die Listen für Reinigung, Treffpunkt, Wagen und Abwesenheiten kommen schneller. Was sie zeigen,
  ändert sich nicht.
- Aus dem Medienordner werden nur noch Bilder und PDF-Dateien ausgeliefert. Was dort über die Jahre
  sonst noch gelandet ist, ist nicht mehr abrufbar.

## [9.10.1] — 2026-09-15

### Behoben

- Wird die Gebietsdetailseite mit geöffnetem Reiter Karte neu geladen, erscheint die Karte wieder.
  Vorher blieb der Reiter leer, und die Übersichtskarte auf dem ersten Reiter war danach ein
  flacher Streifen mit viel zu hoher Zoomstufe.

## [9.10.0] — 2026-09-15

### Geändert

- Die Anwendung lädt schneller. Jede Seite holt nur noch, was sie zeigt; die Anmeldeseite braucht
  fast nichts davon. Das Hauptbündel ist von 156 auf 63 KB geschrumpft.
- Die Symbole sind sofort da, statt erst nach dem Stylesheet aufzutauchen.
- Der Kartendruck ist schneller: der QR-Code steckt jetzt im Dokument, und Straßen und
  Gebietsbilder eines Laufs werden gemeinsam geladen.
- Die Statistikseiten antworten schneller. Die Wochensicht stellte 108 Einzelfragen an die
  Datenbank, jetzt eine.
- Ein Rundbrief mit Push kommt sofort zurück; die Benachrichtigungen gehen im Hintergrund hinaus.
  Vorher hing das Formular an jedem einzelnen Push-Dienst.
- Gebietsbilder in Listen werden erst geladen, wenn sie in Sicht kommen.
- Der Tabellenexport ist bei großen Listen spürbar schneller.

## [9.9.0] — 2026-09-14

### Neu

- Gebiete und Straßen lassen sich als Tabelle einlesen. Eigene Liste einfügen oder hochladen,
  Spalten zuordnen, je Zeile lesen was passiert, dann schreiben. Im Gebietsbereich, Schritt 2 der
  Einrichtung.
- Auch die Sperrliste lässt sich so einlesen — Gebiet, Straße, Hausnummer, Klingel und zuletzt
  besucht. Angeboten wird sie am Ende des Straßen-Einlesens. Eine Anschrift, die schon dasteht, wird
  übersprungen und nicht überschrieben; eine Spalte mit Bewohnernamen wird nicht eingelesen, und die
  Zuordnungsseite sagt, warum.
- Ein Knopf legt den aktuellen Kartenausschnitt als Gebietsbild fest.
- Ein Gebiet lässt sich direkt aus seiner Detailseite für die Dienstwoche reservieren.
- Die Erstinbetriebnahme holt die Titel der Veröffentlichungen auf Wunsch gleich mit.

### Geändert

- Das Einlesen zeigt über jeder Seite, der wievielte Schritt gerade läuft und welche noch folgen —
  Gebiete, Straßen, Adressen.
- Ein Treffpunkt hat jetzt eine Endzeit. Neue stehen weiter auf einer Viertelstunde.
- Der Saal wird für den ganzen Treffpunkt gebucht, nicht mehr nur für die ersten 15 Minuten.
- Listen und Ausdruck zeigen eine Zeitspanne, sobald ein Treffpunkt länger als eine Viertelstunde
  dauert.
- Ein laufender Treffpunkt bleibt auf der Startseite stehen, bis er vorbei ist.
- Treffpunkte und Termine zeigen die geplante Zeitspanne auch in der Detailansicht.
- Ein belegter Raum blockiert das Speichern nicht mehr von selbst. Der Saal schaltet es bei Bedarf
  ein.
- Das Gebietsbild nimmt nur noch PNG, JPEG und PDF, höchstens 10 MB.
- Die leere Kartenauswahl nennt jetzt die Vorgabe: OpenStreetMap, weltweit.
- Bei der Antwort-Adresse steht, wohin ohne Eintrag geantwortet wird.

### Entfernt

- „Als Bild speichern" und „Bild hochladen" auf dem Ebenen-Reiter.

### Behoben

- Beim Einlesen einer Personenliste legte die Spalte „Anmeldung" auch bei „nein" ein Konto an.
- Die Zahlenfelder der Versammlung machten aus einer Fehleingabe stillschweigend eine 0. Sie werden
  jetzt geprüft und melden zurück, welches Feld nicht stimmt.
- Die Vorlaufzeit des Trolley-Kalenders sprang auf 0, wenn die Versammlungsseite ohne den Bereich
  Trolley gespeichert wurde.
- Ein Gebiet ohne Ort oder PLZ zu speichern hat beides in allen seinen Straßen geleert.
- Ein Tippfehler in einem Datumsfeld eines Gebiets warf die Seite mit einem Fehler ab.
- Eine Route mit einer unbekannten Farbe machte die Routenseite unbrauchbar.
- Die BKG-Karte blieb leer, wenn eine Datei im Abbild fehlte.

## [9.8.0] — 2026-09-11

### Neu

- Die Vortragsthemen lassen sich als ganze Liste einfügen: eine Zeile je Thema, Nummer voran.
  Vorhandene Themen werden an ihrer Nummer erkannt und neu betextet, fehlende angelegt, und
  gelöscht wird nichts. Bereits eingeplante Vorträge behalten ihren Wortlaut — wie viele davon
  betroffen sind, sagt die Meldung nach dem Einfügen.

### Geändert

- Die Änderungsliste steht jetzt im Quelltext und wird mit jeder Version ausgeliefert.

### Entfernt

- Einträge lassen sich nicht mehr in der Anwendung schreiben; sie entstehen ab dieser
  Version nur noch im Quelltext.

## [9.7.0] — 2026-09-09

### Neu

- Bereichseinstellungen für Trolley, Gebiete und Versammlungsplan
- separater Tab für Versammlung Privacy

### Geändert

- Versammlungs-Tage und Zeiten in die Versammlungsplan-Einstellungen verschoben
- 2 Kartenanbieter für Gebietskarten für deutsche und internationale Karten
- Datenschutzerklärung angepasst, um die beiden Kartenanbieter anzudecken

### Behoben

- Namings und Icons

## [9.6.0] — 2026-09-07

### Neu

- Titel der Lieder und Lehrpunkte direkt aus der jw.org API
- ePub Dateien für neue Versammlungspläne, direkt per jw.org API. Anzeige der bereits importierten Dateien
- ePub Import in allen verfügbaren Sprachen möglich
- Versammlungs-Parameter > Zusammenkünfte > Sprachgruppe immer anzeigen
- User Aufgabe "Vortragsplanung"

### Geändert

- Anzeige der vererbten Berechtigungen optimiert, Radio statt Checkboxen
- User Edit, Speichern/Zurück führt direkt zu der Liste und Seite, wo man vorher war
- Ersteinrichtungs-Banner, Naming verbessert
- Eilmeldungen tragen Bereich, Zielgruppe und Absender im Footer
- Bereichseinrichtung, einheitliches Naming
- Versammlungsplanung, neuer Menübereich "Wer kann was" um die Benutzerzuweisung deutlicher zu machen

### Behoben

- Filter nach Gruppen, "Alle Gruppen" hat die Anzeige nicht zurückgesetzt
- Notes zurück Button hat die vorherige Seite aus dem Speicher geladen und gespeicherte Einträge nicht direkt angezeigt

## [9.5.1] — 2026-09-05

### Geändert

- Naming von Ersteinrichtung, Bereichseinrichtung, Kontoeinrichtung
- Gebietsfreigaben, neue komplexere Freigabe-URL
- Berechtigungen in der Versammlungsplanung
- Bereichseinrichtung Versammlungsplanung
- Eilmeldungen, Anzeige der Zielgruppe

## [9.5.0] — 2026-09-05

### Neu

- Datenschutzanpassungen für Betreiber und Versammlungen
- dynamisches Impressum und Datenschutzhinweise
- Gebietsadressen mit Klarnamen, Hinweis zur Änderung in Klingel
- User können alle Daten von sich anfordern (Datenschutzvorgabe)

### Geändert

- User Kontoeinrichtungs-Assistent
- Versammlungsplan, nur 6 Einträge pro Seite
- Versammlungsplan, Kennzeichnung der eigenen Aufgaben
- Login Design und Dialoge verbessert
- Startseitenkacheln per Drag & Drop in den Einstellungen sortierbar
- Klare Trennung zwischen User sperren und User löschen (anonymisieren)
- Notes, UI Verbesserungen

## [9.4.0] — 2026-08-29

### Neu

- Versammlungs Onboarding-Assistent
- User Kontoeinrichtungs-Assistent
- User Avatar
- User Berechtigungen anhand von bekannten Versammlungs-Rollen
- Standarttage und Zeiten für Versammlungen in den Einstellung konfigurierbar
- Abwesenheitsplan mit Filter für Diener und Älteste
- User Aktions, erneutes Anfordern der Kontoeinrichtung

### Geändert

- Planungsgewichte sind jetzt pro Versammlung konfiguriertbar
- Versammlungs-Einstellungen in Tabs gruppiert
- Berechtigungssystem umgestellt und Rollen mit individuellen Berechtigungen kombiniert. Massenpflege von Berechtigungen umgebaut. Individuelle Rollen nur noch direkt beim User konfigurierbar
- Sprachumschaltung ins User Profil verschoben
- neue Sprache Englisch hinzugefügt Fix: Raumverfügbarkeit prüfen, eigener Eintrag wurde als Blocker erkannt

## [9.3.0] — 2026-08-22

### Neu

- Benutzer Passwort Reset per Link. Ersetzt das bisherige Passwort zurücksetzen auf einen statischen Inhalt
- Neue Ersteinrichtung für Versammlungen mit Assistenten. Ersetzt das bisherige Setup
- Neues System Eilmeldungen mit Zielgruppen und Filtern. Ersetzt Trolley News und Neu in Vapp Meldungen

### Geändert

- FAQ aktualisiert
- Raumplan nur noch Anzeige. Einträge müssen als Treffpunkt, Reinigung oder Termin vorgeommen werden
- Neue private Termine, Verknüpfung auf der Startseite
- Audit Log Formatierung

### Behoben

- Passwort Reset Layout
- Schalter für ganztags, funktionierte in privaten Terminen nicht
- Sortierung von Personen in Detailsansichten
- Termine für Versammlungsgruppe hat im Raumplan nur für die eigene Versammlung reserviert

## [9.2.0] — 2026-08-18

### Neu

- private Termine als eigenes Datenbank Entity
- eigenes Menü für private Termine
- Anzeige privater Termine im Kalender mit eigener Farbe
- NoteApp Einstellungen, RB und Gutschriften optional ein/ausschalten
- Kalender und Newsfeed Beschreibungen erweitert, Anzeige von Infos der Zusammenkünfte und Personen von privaten Terminen
- Neues in der VAPP Modal, gezielter Hinweis auf neue Funktionen
- eigene Rolle für Vorsitz Fremdsprache, kopnfigurierbar in den Versammlungs-Rollen

### Geändert

- Ereignisse können auch für bestimmte Personen angelegt werden, nicht mehr nur für bestimmte Verteilergruppen
- Sicherheitsupdates, weitere Tests

## [9.1.0] — 2026-08-14

### Neu

- Passkey Anmeldung, Login per Gesichterkennung/Fingerprint
- eigene Termine als Kalender abonieren
- Versammlung - Ereignisse, wiederkehrende Termine anlegen
- Treffpunkt Planung, Personenauswahl mit Statistik wie bei Zusammenkünften
- PWA mit Offline Modus. Alles bisher besuchten Seiten sind auch ohne Internet verfügbar
- Private Termine mit Benutzerauswahl, einzeln oder als Serie

### Geändert

- Statistik Seiten mit Charts statt nur Tabellen

### Behoben

- Zoom beim klicken in Formularfelder deaktiviert
- Falsche UI Ebene der Sidebar behoben
- Code Bereinigung und Build Pipeline

## [9.0.0] — 2026-08-11

##### Neu:

- Automatisierte Ordnungsdienstplanung — der Dialog schlägt für einen Zeitraum eine komplette Einteilung vor, gespeichert wird erst nach Bestätigung
- Planungs-Statistik in den Personen-Auswahlen überarbeitet — farbige Badges für die Auslastung, Tooltip nennt die Kollision, Legende nennt die Sortierung
- Notizen-App neu aufgebaut, Monatsübersicht mit Zeitübertrag und Teilen-Knopf
- Notiz-Kachel auf der Startseite (Statistik direkt in der Kachel)
- Trolley-Kachel erscheint auf der Startseite, sobald man auf einer Route eingeteilt ist
- Startseite — Gebiets- und Versammlungsplan-Kachel mit Dialog Auswahl des Bereichs
- PDF-Export "Aufgaben pro Person" aus der Planverwaltung
- Reinigung kann den ganzen Saal sperren, dazu ein Ganztags-Schalter
- Doppelt belegte Räume werden sichtbar gemacht statt still gebucht
- Versammlungs-Statistik sitzt jetzt im Kopf der jeweiligen Liste — Liste und Statistik sind ein Knopfpaar statt eines Menüpunkts
- Zwei persönliche Hinweise im Plan sprechen die eingeteilte Person an, nicht jeden Rolleninhaber

##### Aktualisiert:

- Protokoll — Badges an den Einträgen, Archivieren ohne Neuladen, jede Zeile führt zu ihrem Ziel, Gebietseinträge verlinken das Gebiet
- Protokoll detaillierte Auflistung der Änderungen
- Account-Änderungen (Stammdaten, Rollen, Berechtigungen) stehen jetzt im Protokoll
- Einzelbearbeitung einer Zusammenkunft ist jetzt in drei getrennte Seiten aufgeteilt (Basisdaten, Aufgaben, Ordnungsdienst) statt drei gestapelter Formulare, die zwei halben Info-Felder sind zu einem zusammengeführt
- Spürbar schnellere Seiten — Gebietsstatistik, Dienstwoche, Trolley und Freigabenliste brauchen einen Bruchteil der bisherigen Datenbankabfragen
- Seitenübergänge beim Navigieren
- Eigene Fehlerseiten für 404 und 500, dazu ein Sicherheitsupdate aller eingesetzten Bibliotheken

##### Fehlerbehebung:

- "Dienstwoche beenden" wirkte in der Gebietsansicht nicht, der Dienst blieb aktiv
- ePub-Import, Fehler behoben
- Standort-Abfrage der Gebietskarte erschien auf älteren iOS nie
- "Neu"-Hinweis am Changelog erschien nie und zählte falsch
- Vorsitz-Export — fehlender Titel der zweiten Aufgabe, kaputte Fettschrift
- Hauptreinigung erreichte die zweite Gruppe nicht
- Versammlungsgruppe ließ sich nicht löschen
- Wer nach der Planung abwesend wird, bleibt in seiner eigenen Auswahl stehen

##### Technik

- Symfony 8.1
- PHP 8.5
- MySQL 8.4
- Security Updates, Berechtigungen korrigiert, Routen abgesichert
- Redis Cache Management optimiert
- System Scheduler statt cron jobs
- Release über vorgebaute Images
- CI/CD über Gitea Runner mit auto deployment

## [8.7.9] — 2026-06-15

### Behoben

- Trolley Schichten wurden überschrieben, wenn 2 Einträge gleichzeitig erstellt wurden
- Versammlungsplan, Speichern der Massenpflege hat Einträge für 2. Klasse deaktiviert
- Abwesenheitskalender, Einträge die monatsübergreifend waren, wurden nicht korrekt geladen
- User, Aktiv am Status wird wieder korrekt angezeigt

## [8.7.8] — 2026-04-25

### Neu

- freie Gebiete können direkt von der ersten Seite der Gebietskarte selbst zugewiesen werden, sofern eine Berechtigung vorhanden ist

### Geändert

- Vorsitz Export für die Woche Unterstützt jetzt die Formatierung für Apple Notes
- Meine Ereignisse zeigen Termine jetzt länger an, bis diese abgelaufen sind. Vorher wurde das Ereignis nur bis zum Start des Termins angezeigt.
- "Aushang "und "Meine Ereignis" Titel sind jetzt klickbar und öffnen direkt den jeweiligen Bereich
- Changelog wird jetzt nur noch im Footer der Seite darstellt mit einem "Neu" Hinweis, wenn dieser noch nicht gelesen wurde

### Behoben

- Modal beim Löschen von Vortragsthemen und Räumen hat sich nicht automatisch nach der Aktion geschlossen
- Mobile Header Anpassung an neue Display-Auflösungen
- bei geteilten Einträgen für die Versammlungsgruppe wurde beim Speichern die Ursprungsversammlung des Eintrags überspeichert

## [8.7.7] — 2026-04-04

### Geändert

- Berechtigungen für "Vortragsplanung" gerade gezogen, Menüs korrekt eingeblendet und Abhängigkeit zur "Plan verwalten allgemein" entfernt
- Vertragsplanung Menü und Beschriftung korrigiert
- Gebiete Menü merkt sich die zuletzt verwendete Ansicht und steuert diese an, wenn im Breadcrumb Menü auf Gebiete geklickt wird
- Klarere Benennung von Historie / Liste

### Behoben

- Berechtigungen zum speichern von Versammlungsplänen korrigiert
- Zeilenumbruch Formatierung für Markdown Texte wie bei Bekanntmachungen korrigiert
- Trolleyplan gab unter bestimmten Bedingen einen Fehler aus

## [8.7.6] — 2026-03-28

### Geändert

- Zwischenreinigung Benachrichtigung erfolgt nur noch an dem Tag, an dem diese aktiv ist
- Hauptreinigung wird in den Ereignissen den ganzen Tag angezeigt
- Aushang überarbeitet, Neue Einträge und Druckausgabe
- Aushang, Speichern neue Einträge verbessert
- Editor für Texte, Übersetzung und kleinere default Größe
- vereinheitlichung des Formulars für Aushang und Termine
- Raumprüfung ist jetzt auch in der Bearbeitung von Einträgen verfügbar

## [8.7.5] — 2026-03-19

### Geändert

- Berechtigungen "Gebiete Statistik und "Plan TPS" entfernt
- User Bearbeitung in Tabs aufgeteilt

### Behoben

- Gebiete Statistik , Farben angepasst
- Anzeige von Instandhaltungs mit Links auf der Startseite

## [8.7.4] — 2026-03-15

### Neu

- "Plan verwalten" Widget mit direkten Zugriff auf die Verwaltung der Pläne
- Board Widget gelöscht und in die rechte Sidebar verschoben
- Board Druck Modal, mit allen Ausdrucken für den Aushang

### Geändert

- Gebiets-Widgets gelöscht und durch ein einheitliches "Gebiete" Widget abgelöst

### Behoben

- Archiv Nachrichten ausblenden

## [8.7.3] — 2026-03-14

### Geändert

- Gebietsansicht-Leiste überarbeitet
- Plan Excel Export entfernt
- Plan Sprachgruppen Button wird nur noch angezeigt, wenn die Versammlung eine Sprachgruppe hat

### Behoben

- OpenLayer Karten Integration verbessern, Berechtigungs-Anfrage
- ScrollTop Button wurde nicht dargestellt
- Klick auf Gebietsfreigabe QR Code gab kein Feedback

## [8.7.2] — 2026-03-13

### Geändert

- Gebiete, Bereiche zusammengelegt, neue Menübar zum wechseln der Filter und Ansicht
- Gebiete, Übersetzungen, Menüs und Exporte optimiert und zusammengelegt
- Select Auswahlboxen, Suchfeld Darstellung optimiert

### Behoben

- Select Auswahl behält Scroll Position

## [8.7.1] — 2026-03-08

### Geändert

- Gebiet, Tabs zum bearbeiten von Daten aufgeteilt
- Kalender zeigt jetzt in der Monats Grid Ansicht immer alle einträge, selbst wenn man etwas scrollen muss
- Kalender, scrollt bei Listen zum aktuellen Datum

### Behoben

- Gebietskarte, Karte zeigte eine fehlerhafte Formatierung für Openlayer Texte
- Raumplanberechtigung
- Auswahlboxen hatten ein komisches Verhalten nach Auswahl von Daten
- Auswahlboxen hatten ein Limit von 40 Einträgen

## [8.7.0] — 2026-03-07

- Update: Trolley info reaktiviert, nachdem das neue Notification System funktioniert
- Update: DatePicker Icon Klick öffnet jetzt die Datumsauswahl
- Fix: Push Notification Link war fehlerhaft

##### System / Performance

- Update Bootstrap 5.1 auf 5.3, neues Design System und Variablen
- jQuery und alte Plugins entfernt
- JavaScript Code auf TypeScript umgestellt
- Lint Fixes und diverse Verbesserungen
- Build Prozess verbessert, kleinere Dateien, bessere Komprimierung
- Webserver Cache und gzip Optimierung

## [8.6.0] — 2026-02-28

- Neu: App Optimierung, Hinweis zum hinzufügen als App auf dem Homescreen, Aktivierung von Web Push Benachrichtigungen
- Neu: User Profil, Benachrichtigungen für E-Mails und Push Nachrichten konfigurieren
- Neu: User Profil, Push Benachrichtigungen pro Gerät verwalten
- Neu: Erinnerung an Aufgaben per Push Benachrichtigungen, einen Tag vor dem Termin
- Neu: Aushang kennzeichnet beim ersten Öffnen neue Beiträge mit einem "neu" Tag
- Neu: durchgägngige Übersetzung für alle Sprachen
- Update: Aushang, vertikale Ansicht für eine bessere Übersicht
- Update: Titel im Termin Formular ist jetzt oben
- Update: App Logo, Website Logo, dynamische Icon Größen für die Installation als App
- Fix: Zwischenreinigung wurde bei falschen Gruppen angezeigt

##### System

- optimiertes System zum Speichern von Statusdaten
- besseres Caching von Benutzern, was die Ladezeiten der Seite erhöht
- verbesserte Redis Cache Einstellungen, sodass bei neuen Updates weniger Einschränkungen auftreten
- alle fest codierten Texte wurden extrahiert und übersetzt

## [8.5.1] — 2026-02-13

- Neu - BETA: Web Push Benachrichtigungen über die Benutzereinstellungen
- Neu - BETA: Web App Installation über die Benutzereinstellungen
- Update: nach dem Speichern des Versammlungplans landet man wieder auf der Seite, von der aus man gestartet ist
- Fix: Raumbelegung zeigte fehlerhafte Werte
- Fix: Zwischenreinigung Events wurden auf der Startseite nach ablauf nicht zuverlässig ausgeblendet
- Fix: Wochenvorschau - Android hatte eine fehlerhafte Darstellung
- Fix: Wochenvorschau - Treffpunkte wurden nicht aufgelistet
- Fix: Wochenvorschau - 7 Tage Vorschau zeigte Trolley Termine vom 8 Tag

## [8.5.0] — 2026-01-26

### Neu

- Datumseingabe durch native Elemente ersetzt, statt eines extra DatePicker
- Trennung von Start/End-Datum in 2 Elemente
- Kachel für "Meine Gruppe" auf der Startseite bei allen Berechtigkten standardmäßig aktiviert

### Geändert

- Ereignisse für Versammlung/Treffpunkt bleiben auf der Startseite aktiv, bis das Event vorbei ist
- bisherige Datensätze korrigiert, damit beim Datum Ganztagestermine korrekt erkannt werden
- für Versammlungs-Aufgaben und Versammlungs-Infos gibt es nur noch ein Ereignis

### Behoben

- diverse Fehlerbehebungen

## [8.4.0] — 2026-01-17

##### NEU

### Neu

- Zwischenreinigung wird nur an Tagen dargestellt, an denen auch eine Versammlung stattfindet. Die Planung wird weiterhin für die ganze Woche eingetragen.
- Filter für Gruppen in der Benutzerverwaltung
- Einträge auf dem Aushang haben jetzt ein Datum + Uhrzeit. So können sie vorab erstellt werden und werden erst ab der genauen Uhrzeit auf dem Aushang für alle sichtbar
- Kachel für "Meine Gruppe" auf der Startseite für Diener, zur Unterstützung bei der Gruppenplanung ##### UPDATE

### Geändert

- Ereignisse werden auf der Startseite ausgeblendet, sobald der Termin erledigt ist (Uhrzeit)
- es werden immer alle Ereignisse des aktuellen Tages angezeigt, egal wie viele Ergebnisse vorhanden sind. Ansonsten ist das Limit 3
- Darstellung des Titels für Vorsitz am Wochenende
- QR Code Freigabe für Gebiete überarbeitet. Neues QR System ersetzt den bisherigen Javascript QR Code in der Anzeige und beim Druck. Die Freigabe des Gebiets wurde zudem vereinfacht ##### FIX

### Behoben

- Speichern eines vorhandenen Versammlungsplans brachte einen Fehler
- fehlende Übersetzung in den Gebiets-Adressen entfernt

## [8.3.0] — 2025-12-11

- Neu: History Ansicht für Trolley Plan, Link ist jetzt einheitlich im oberen Menü
- Neu: Swipe Gesten (links / rechts) für den Ereignis Kalender auf touch-fähigen Geräten
- Neu: Nav Menü Elemente für die App Ansicht, da dort keine Browser Navigations Buttons (Vor/Zurück) zur Verfügung stehen
- Update: Anzeige von Aufgaben auf der Startseite optimiert, wenn man mehr als eine Aufgabe hat
- Update: Treffpunkte, Ansicht überarbeitet und Monat als Standard-Ansicht gewählt
- Fix: Berechtigung Ordnungsdienst erzeugte einen Fehler, wenn nicht "Plan verwalten (allgemein)" ausgewählt war
- Fix: E-Mail Wochenvorschau, Vorschläge für andere Treffpunkte hat nicht funktioniert
- Fix: Trolley Abgaben, Meldung erschien auch für Einträge am gleichen Tag, die noch nicht gestartet sind
- Fix: Diverse Code-Optimierungen

##### Upgrade des Bibliotheken

- Symfony 6 LTS, Upgrade auf 7 LTS, Deprecations entfernt
- Doctrine-bundle 2, Upgrade auf 3 und Migration der Datenbank durchgeführt
- PHP 8.4 als Standard gesetzt

## [8.2.2] — 2025-11-04

### Geändert

- Abwesenheits-Fenster übersichtlicher gestalltet
- Startseite, neue Option für farbige Kacheln. SW sind weiterhin in den Anzeigeeinstellungen verfügbar.
- PD Treffpunktplan, Liste zeigt mehr Details
- besseres Design für Scroll Top Symbol unten rechts

## [8.2.1] — 2025-10-30

### Behoben

- Import von EPUB für Dateien aus 2026 angepasst, da dort das Format geändert wurde
- Benachrichtigungen für Versammlungsplan-Änderungen zeigten den Typ nicht korrekt an

## [8.2.0] — 2025-10-18

### Neu

- Anzeige der eigenen Abwesenheit in den eigenen Terminen
- eigener Titel für Treffpunkte, z.B. Pioniertag
- hervorheben von Treffpunkten mit einer farbigen Markierung, z.B. Pioniertag, Dienstwoche

### Geändert

- Anzeigefarbe von Abwesenheit im Kalender angepasst
- Anzeige der Treffpunktplan Titeln optimiert
- Informationen im Treffpunkt Popup Fenster optimiert

### Behoben

- Anzeige von Symbolen auf allen Geräten
- WebApp Darstellung, iOS 26, Ampel Navigation

## [8.1.0] — 2025-09-28

- Neu: Trolley Karten anzeigen, Option wird oberhalb des Plans angezeigt
- Neu Gebietskarte, 'Nicht besuchen' Adressen sind deutlicher gekennzeichnet
- Update: Aufgabenverwaltung, farbige Einträge werden besser hervorgehoben (Urlaub, Suche, ...)
- Update: Raumplan, Link zum Bearbeiten wird im Popup Fenster direkt angezeigt
- Update: Scroll Top Button ist jetzt besser sichtbar (unten rechts)
- Fix: Email Text für Wocheninfo zeigte einen falschen Titel

## [8.0.1] — 2025-09-07

### Geändert

- Massenbearbeitung Versammlungsplan, Code Optimierung
- Zweite Klasse, Optimierungen beim Handling

### Behoben

- Zweite Klasse, Beschreibung und Info wurden nicht übernommen
- Versammlungsplan Berechtigungen, Suche funktionierte nicht
- User Feld "Login" wurde nicht korrekt ausgewertet, Login war trotz Deaktivierung möglich

## [8.0.0] — 2025-08-31

Großes Redesign und Sommer-Update zum neuen Dienstjahr.

- 499 geänderte Dateien
- 21872 neue Zeilen
- 31588 gelöschte Zeilen

##### Allgemein

- NEU: Startseite, Favoriten anpassbar, Layout auswählbar
- NEU: Aushang und Termine getrennt
- NEU: Aushang mit Vorschau der PDF Datei
- NEU: Popup Fenster für eigene Abwesenheit, Aushang (Bekanntmachungen) und Zoom-Einwahl
- NEU: Aushang Kachel zeigt jetzt die Anzahl der neuen ungelesenen Dokumente an
- NEU: Versammlungsverwaltung, Zoom-Einwahl hinterlegen
- NEU: Benachrichtigungen haben jetzt ein Archiv, sodass man archivierte Nachrichten wiederfinden kann
- UPDATE: Anhänge und Dateien werden wenn nötig in einem neuen Browser geöffnet, um weitere Interaktionen zu erlauben (Speichern, Teilen)
- UPDATE: PD Bericht, nicht mehr benötigte Felder entfernt
- UPDATE: Icons und Übersetzungen vereinheitlicht und aktualisiert
- UPDATE: Shortcut-Leiste auf mobilen Geräten entfernt
- UPDATE: Benitzerprofil überarbeitet, Tabs für bessere Unterteilung der Einstellungen

##### Versammlungsplan

- NEU: Kalender-Ansicht, die eigene Termine, Treffpunkte, Reinigung, Raumplan, Abwesenheit und allgemeine Termine zusammenführt
- NEU: Kalender-Ansicht, Monatsansicht für größere Bildschirme, Listen für mobile Geräte
- NEU: 2. Klasse, Statistik und Verwaltung in der Wochenpflege
- NEU: Reinigungsplan, neuer Typ Gartenarbeit
- UPDATE: Vereinheitlichung der Verwaltungsbereiche
- UPDATE: Personenverwaltung, jetzt mit Filder für Aufgaben
- UPDATE: Mehrfachbearbeitung mit Kennzeichnung wenn Abwesend
- FIX: ePUB Import der neuen WTs war fehlerhaft

##### Trolley

- NEU: Datumsauswahl, um direkt zu einem Tag zu springen
- NEU: Gast-Auswahl, um Eintragungen mit einem Benutzer zu ermöglichen. Der Gast wird in der Info eingetragen
- NEU: Statistik mit Filter für Versammlungen
- FIX: Kalender Eintrag nachträglich ändern funktionierte nicht
- FIX: Info konnte nicht bearbeitet werden

##### Technik

- PD Berichte auf Vue3 aktualisiert
- Docker Container aktualisiert, nginx 1.29, php 8.4
- Veralteten Code aktualisiert

## [7.5.1] — 2025-01-08

### Neu

- Import von ePUB Dateien des Wachtturms für die Planung der Wochenend-Versammlung

### Geändert

- Hinweise zur ePub Verwendung aktualisiert

## [7.5.0] — 2025-01-03

### Neu

- Aufgabenplanung, Abwesenheit wird bei der Mehrfachbearbeitung angezeigt
- Aufgabenplanung, Personen können per Suche hervorgehoben werden
- Gebiete, neuer Menüpunkt für Dienstewochen
- Gebiete, Dienstwochen Markierung zur Selektion von Gebieten im neuen Menüpunkt

### Geändert

- Trolley, Person 2 kann die Schicht bearbeiten und löschen

### Behoben

- Instandhaltung, Anzeige von Planungen mit 2 Gruppen

## [7.4.1] — 2024-12-31

### Neu

- Schedule Type nachträglich änderbar
- Schedule Aufgabenbeschreibung editierbar
- Menüpunkt Gebiete > Freigaben, neue Option "Alle Gebiete freigeben"

### Geändert

- fehlerhafte Überschrift im Versammlungsplan entfernt

## [7.4.0] — 2024-12-29

### Neu

- Import von ePUB Dateien des Arbeitshefts zur automatischen Erstellung und Aktualisierung von Planeinträgen
- zusätzliche Felder für Aufgaben Infos
- automatischen Anzeige von zusätzlichen Infos für Aufgaben über den Titel oder per Tooltip

### Geändert

- Jahresplanung wurde wieder aktiviert, da die ePub Planung nur für deutsch verfügbar ist
- Feldnamen korrigiertm deutsch/englisch
- Umbenennung des Vorsitzes im WE Plan

### Behoben

- Reinigung hatte durch die Umstellung noch paar Fehler beim Speichern und Löschen von Einträgen

## [7.3.0] — 2024-11-28

##### Überarbeitung der Aufgabenplanung

- einzelne Parametrierung für jede Aufgabe in der Verwaltung
- Auswahlfelder beinhalten nur noch Personen der jeweiligen Aufgaben Rolle
- Unterteilung der Aufgaben von TPS und des Ordnungsdienstes
- Überarbeitete Statistik pro Auswahlfeld für M = letzten 30 Tage, Q = 120 Tage, Y = 365 Tage
- Separierte Statistik pro Aufgabentyp
- Übersucht aller Aufgaben pro Aufgabentyp
- Massenpflege für Woche, Wochenende und Ordnungsdienst

## [7.2.0] — 2024-11-23

### Neu

- Schedule Multi Edit für Woche, Wochenende, TPS und Service
- bessere Aufsplittung von Schedule Statistik für Woche, Wochenende, TPS und Service

### Geändert

- Schedule Multi Edit vereinheitlicht

### Behoben

- Schedule Statistik pro Auswahlbox

## [7.1.0] — 2024-10-18

### Neu

- Vortragsverwaltung neu strukturiert, Suche, Historie (2 Jahre)
- Trolleyplan, bei Routen verwalten kann ein Foto der Trolley Bestückung hinterlegt werden
- Trolleyplan, Menüpunkt Ausrüstung, Anzeige der Fotos der Trolley Bestückung

### Geändert

- Versammlungsplan, Textbezeichnungen für Info Startseite/Versammlungsplan korrigiert

### Behoben

- Ordnungsdienst Export, es werden jetzt alle geplanten Personen exportiert
- Wöchentliche Cron Jobs aktiviert (Wocheninfo, etc.)

## [7.0.0] — 2024-09-26

Die VAPP ist umgezogen und hat ein neues Zuhause :-)

- HomeServer mit Intel Core CPU, mehr RAM, schnelleren Speicher = schneller, besser, sicherer
- wenn euch etwas auffällt, dass nicht korrekt funktioniert, sagt bitte direkt bescheid

**Änderungen:**

- New: Instandhaltung, Link zu Arbeitsblättern kann hinterlegt werden
- New: Service Excel Export, mehr Einträge und Ausgabe von IDs für Aufgabentypen
- Change: Karte als Bild exportieren bei freien Gebieten hinzugefügt
- Change: Benachrichtigungen für Dienstplan korrekt übersetzt
- Update: System und Komponenten, Deprecated Meldungen bearbeitet, Symfony 6.4

## [6.5.0] — 2024-08-20

### Neu

- Anzeige auf der Startseite, wenn eine Abwesenheit einen Konflikt mit einer geplanten Aufgabe bewirkt

## [6.4.1] — 2024-08-06

### Neu

- Sotierung des Druckcontainers für Gebiete überarbeitet. Die Ausgabe erfolgt jetzt in der gleichen Reihenfolge, wie die Gebiete hinzugefügt wurden
- Druckcontainer, neue Liste für freie Gebiete basierend auf der Selektion

### Behoben

- QR Code auf Gebietskarten
- QR Code auf Public Gebieten

## [6.4.0] — 2024-07-24

### Neu

- Gebietsansicht kann besser umgeschaltet werden
- Standard Ansicht für freie Gebiete ist jetzt "Map"

### Geändert

- Gebiete - Vorschlag zur Weiterleitung zur NoteApp entfernt

### Behoben

- Öffentliche Gebiete, die per QR Code geladen werden
- Trolley Karte konnte aus der Routen Ansicht nicht geöffnet werden

## [6.3.1] — 2024-02-11

### Geändert

- Dependencies
- Symfony 6.4.x

### Behoben

- Anzeige von auswärtigen Vorträgen im Abwesenheitsplan
- Kalender, Dezember 24 wurde falsch berechnet

## [6.3.0] — 2023-12-22

##### NEU

### Neu

- 10 Uhr ist neue Standard Zeit für das Anlegen neuer Treffpunkte
- Diener können bei Abwesenheit jetzt auch eintragen, wenn sie auswärts einen öffentlichen Vortrag halten
- Anzeige der auswärtigen Öffentlichen Vorträge (Intern)
- Treffpunktplan, Filter für Treffpunktarten wie Alle, Versammlung oder einzelne Gruppen
- bei Änderungen der Bekanntmachung erhält der Vorsitzen eine Nachricht, dass diese aktualisiert wurden
- Anzeige von inaktiven Benutzern in der Datenbank (im Bereich Administration - Basusdaten). Berücksichtig werden letzte Anmeldung (1 Jahr) und Zuteilung bei Gebieten oder Trolley (2 Jahre)". ##### UDPATE

### Geändert

- Überschriften für das Arbeitsheft ab 2024 angepasst (russisch)
- aktuelle Termine auf der Startseite werden nicht mehr komplett gelb dargestellt. Highlight geht jetzt nur noch auf das Datum ##### FIX

### Behoben

- Raumplanung, Überprüfung der Verfügbarkeit hatte noch einen Fehler
- Anzeige im Abwesenheitsplan Liste vs. Kalender überprüft
- Änderungen in den Profil Benachrichtigungen wurden nicht korrekt gespeichert

## [6.2.3] — 2023-11-14

### Neu

- Bei Planungen von Terminen und Treffpunkten kann jetzt die Verfügbarkeit des Raums geprüft werden

### Behoben

- Speichern des Formulars im Bereich "Vorsitz WE" war fehlerhaft

## [6.2.2] — 2023-11-09

### Neu

- Parameter im Bereich Versammlung zum dauerhaften Anzeigen der Sprachgruppen Pläne

### Geändert

- Layout der Anzeige der 2. Klasse angepasst
- Eingabe der Pläne für die 2. Klasse überarbeitet
- Eingabe des Datums auf mobilen Geräten verbessert (Bitte testen!)

## [6.2.1] — 2023-10-26

### Geändert

- Dependencies
- Symfony 6.3.x

### Behoben

- Password Reset per Mail funktioniert jetzt endlich

## [6.2.0] — 2023-10-10

### Neu

- Parameter für Versammlungen, um den Zeitraum des Trolley Kalenders festzulegen
- Eigene Trolley Routen Zeiten für Erlangen-Russisch

### Behoben

- Filter für Benutzer in verschiedenen Bereichen wurde bei 0 Ergebnissen ausgeblendet. Ein Reset des Filters war nicht mehr möglich. Suchleiste wird jetzt immer angezeigt.
- Trolley Routen Bearbeitung hatte keine Unterteilung der Routen für Woche und Wochenende
- Abfangen von fehlerhaften E-Mail Adressen bei Push Benachrichtigungen
- Diverse kleinere Anpassungen

## [6.1.9] — 2023-09-12

### Geändert

- Berechnung der überfälligen Gebiete korrigiert. Meldung erfolgt jetzt erst, wenn ein Gebiet > X Tage nicht bearbeitet wurde und der Zeitpunkt der Zuweisung länger zurückliegt

### Behoben

- Gebietslayer waren nicht erreichbar, Routing korrigiert
- Vorsitz WE Berechtigungen korrigiert
- Versammlungsplan Berechtigungen korrigiert

## [6.1.8] — 2023-08-22

### Neu

- Predigtdienstbericht, neues Feld Bemerkung in der Monatsansicht für Urlaub, Krankheit, LDC Stunden

### Geändert

- Predigtdienstbericht, Reihenfolge der Felder für das Teilen der Daten an den offiziellen Bericht angepasst

### Behoben

- Parameter Aktionsbearbeitung war noch nicht an allen Stellen konsistent hinterlegt

## [6.1.7] — 2023-06-30

### Neu

- Ordnungsdienstplanung hat jetzt einen eigenen Menüpunkt. Dort können mehrere Einträge gleichzeitig angepasst werden. Zudem ist dort ein Export des Abwesenheitsplans sowie der geplanten Personen bei Zusammenkünften verfügbar

### Behoben

- Export von Kalendereinträgen enhält jetzt nicht mehr den Platzhalter "Zusammenkunft"
- wenn die Berechtigung Trolley Verwalten entfernt wird, erhält der Benutzer weiterhin als normaler Benutzer Zugriff auf den normalen Trolley Bereich
- Trolley Karten Änderungen wurden nicht gespeichert
- Gebietskarten konnten nicht mehr hochgeladen werden
- alter Begriff "Foyer" aus Benachrichtigungen entfernt

## [6.1.6] — 2023-06-17

### Neu

- Versammlung, neuer Parameter zum aktivieren der Gebeitsbearbeitung "Aktion". Beim deaktivieren, wird nur noch die "normale" Bearbeitung angezeigt.
- Schaltfläche zum aktualisieren des Trolley Kalenders. So bekommt man direkt neue Änderungen mit und muss die Seite nicht über den Browser neu laden.

### Behoben

- Versammlungs-History war nicht sichtbar
- Gebiete, Multi-Edit war defekt

## [6.1.5] — 2023-06-14

- Anpassungen der Benamung an das neue Sicherheitskonzept. Lüften und Ordner wurde zu Saal-Ordner. Sicherheit 1. und 2. Stunde wurden zu Eingangs-Ordnern.
- Fix: Eingabe von Anwensenden konnte nach dem Speichern nicht mehr gelöscht werden
- Fix: Pionierliste, letzte Bearbeitung zeigt jetzt das Bearbeitungsdatum anstelle des Erstellungsdatums

## [6.1.4] — 2023-04-05

- New: Lüften, Ordner und Zoom-Ordner als weitere Positionen für den Ordnungsdienst. Reserve wurde entfernt und kann jetzt bei Bedarf über die optionalen Felder hinzugefügt werden.
- New: Mobile Ansicht für Treffpunkte, Termine und Reinigung
- Fix: geplante Räume bei Terminen können beim Speichern abgewählt und so gelöscht werden
- Fix: Newsfeed, anzeige der default Versammlung korrigiert
- Fix: Newsfeed, Filter für persönliche Einträge erkennt jetzt default Versammlungen und blendet diese aus
- Dev: addresses und hipi tabelle umbenannt

## [6.1.3] — 2023-03-06

### Behoben

- Termine und Newsfeed zeigten keine eigenen Termine von Zusammenkünften mehr an. Dies funktioniert jetzt wieder zuverlässig.

## [6.1.2] — 2023-02-22

### Behoben

- Ordnungsdienst konnte nicht mehr gespeichert werden
- Eigene Termine exportieren konnte nicht aufgerufen werden
- Predigtdienstplan konnte nicht aufgerufen werden
- Trolley Schicht löschen, wenn schon Literatur eingetragen war, verursachte einen Fehler
- Trolley Teilnehmer verwalten konnte nicht mehr aufgerufen werden

## [6.1.1] — 2023-02-18

##### Änderungen

- Vorsitz Generator, Ausgabe aktualisiert
- E-Mail Benachrichtigungen enthalten jetzt einen Link zum jeweiligen Bereich
- Logout ist jetzt auch in der mobilen Ansicht sichtbar (oberes Menü)
- Raumplan, mobile Ansicht, extra Icon zum anzeigen des Tooltips
- Umbenennung von Mischpult zu Audio/Video
- Umbenennung von Foyer zu Sicherheit

##### Fehlerbehebung

- Admin User E-Mail ändern funktioniert jetzt wieder
- Trolley Plan war auf mobilen Geräten manchmal nicht sichtbar, DOM Observer deaktiviert
- Note App, Zahlen werden in der Statistik jetzt korrekt gerundet
- Meine Termine, Filter hat bei Versammlungs Einträgen nicht funktioniert
- Kalender Export hat teilweise html breaks als Inhalt ausgegeben
- Statistik, zeigte für manche Aufgaben keine korrekten Einzelzahlen

##### Systemaktualisierung

- Symfony 6.2, PHP 8.2
- Abhängigkeiten aufgeräume, veraltete Funktionen entfernt
- Code Cleanup, Umstellung von Annotations auf PHP Attribute
- Controller Funktionen komplett überarbeitet

##### Was kommt als nächstes?

- Ordnungsdienst, neue Rollen wie Zoom-Ordner und co. richtig implementieren
- Fehlende Übersetzungen finden und ersetzen
- Treffpunktplan, mobile Ansicht verbessern
- NoteApp in VueJS 3 neu schreiben

## [6.1.0] — 2022-12-29

- E-Mail Benachrichtigungen für System und Direktnachrichten
- E-Mail Benachrichtigungen für Wochenvorschau
- Einstellungen für Benachrichtigungen im Profil
- Modal zur Aktualisierung der eigenen Daten (einmalig)
- Lade Animation der Seiten ausgetausch (Loading Bar statt Spinner)
- Trolley Anzahl default auf 1, Hinweis wird jetzt immer nur angezeigt, wenn mehr als 1 Trolley verwendet werden
- Startseite, 7 und 30-Tage Vorschau
- Anzeige der nächsten Zusammenkunft in den Terminen, auch wenn man dort keine Aufgabe hat (Link zum Plan)
- Berechtigungen und Code aufgeräumt

## [6.0.10] — 2022-12-02

- Update PHP dependencies
- Fix Statistik für Anwesende, Wochenbeginn war Sonntag, weshalb Einträge um eine Woche verschoben dargestellt wurden
- Fix Statistik für HPV und APV, falsche Anzahl bei 0 Werten

## [6.0.9] — 2022-11-19

- Anwensendenstatistik, Zoom Teilnehmerzahl wurde nicht angezeigt
- Anwensendenstatistik, Mittelwert von Monats- und Jahreswerten wurde falsch berechnet
- Raumplan ist wieder auf der Startseite verlinkt

## [6.0.8] — 2022-10-29

- separate Berechtung zum Eintragen von Anwesendenzahlen für Zusammenkünfte
- Umbenennung der Eingabefelder für Anwesende

## [6.0.7] — 2022-09-11

- Trolley Teilnehmer werden jetzt für alle gefiltert angezeigt, nur aktive Personen mit einer zugewiesenen Route
- Trolley Admins können bei der Teilnehmerliste andere Versammlungen der Versammlungsgruppe auswählen
- Schiefstand der Trolleyberechtigungen zum neuen System bereinigt

## [6.0.6] — 2022-09-10

- Überarbeitung der Trolley Berechtigungen
  - In der User Einstellungen kann nur noch festgelegt werden, ob jemand den Trolley-Plan verwalten kann. Alle weiteren Zugriffe erfolgen im Trolleybereich.
  - Sobald einem Benutzer eine Route zugewiesen wurde, sieht er automatisch den Trolley Bereich.
  - Sobald keine Route mehr zugewiesen ist, kann der Trolley Bereich nicht mehr geöffnet werden (jeweils nach dem nächsten Login).

## [6.0.5] — 2022-08-21

### Behoben

- Schedule Excel Export Zugriffsberechtigung
- Trolley Kalender, null value exception
- php memory limit, custom.conf hatte falsche Berechtigungen

## [6.0.4] — 2022-07-29

### Geändert

- Sidebar Titel in uppercase

### Behoben

- Pagination bei Treffpunkten angepasst
- Gebiete mit fehlender Location wurden nicht geladen
- freie Gebiete wurden nicht geladen, wenn bestimmte Gebietsnamen vergeben wurden
- Trolleyrouten haben jetzt wieder die korrekten Karten zugeordnet

## [6.0.3] — 2022-07-06

- Trolleyplan Darstellung bei mehr als 4 Routen optimiert
- Neue Farbe für Trolley-Routen
- Neuer Parameter zur Sortierung von Trolley-Routen
- Optimiertes Verhalten, wenn Trolley-Routen für unterschiedliche Tage konfiguriert wurden

## [6.0.2] — 2022-07-01

### Behoben

- Versammlungsplan als PDF, falsche Formatierung
- Dateiupload speicherte Dateien mit falschen Berechtigungen, diese waren nicht mehr aufrufbar
- PD Bericht, Dropdown Menüs haben nicht funktioniert

## [6.0.1] — 2022-06-27

### Neu

- PHP Worker Supervisor hinzugefügt
- E-Mail Service aktiviert, Kennwort zurücksetzen per E-Mail funktioniert jetzt wieder

### Geändert

- Symfony Paket aktualisiert

### Behoben

- Modal zum Ändern der eigenen Daten und Info im Trolley Kalender erzeugten einen Fehler, der die Anzeige des Trolley Kalenders blockierte

## [6.0.0] — 2022-06-14

- Aktualisierung auf Symfony 6 und Twig 3
- Umzug der VAPP auf einen Mini-ITX Intel Server in einer Docker Umgebung
- HTML DOM Struktur bereinigt
- JS Erweiterungen aktualisiert
- Altlasten entfernt
- Startseite überarbeitet
- Home Button im Sub-Menü entfernt und Funktion zum Aufruf der Startseite ins Header Logo verlagert
- UI Aktualisierung, Header, Headlines, Farbschema

##### Versammlungsplan

- eigener Title für Versammlung
- Einheitliche Datstellung des Titels in allen Ansichten mit Ort und Datum/Uhrzeit
- "Highlight", "WT anzeigen" und "Anfangszeit" Parameter entfernt
- Anzeige so erweitert, dass Vortrag oder WT nicht angezeigt wird, wenn keine Personen in dem Bereich geplant sind. So kann z.B. bei Kongressen der Vortrag leer gelassen werden, um die Anzeige im Plan zu deaktivieren
- Planung der Sprachgruppen Einträge überarbeitet

##### ÄNDERUNG SPRACHGRUPPE

- Fremdsprachensystem mit Sprachgruppen, eigenen Gebieten, Adressen und co. entfernt
- Predigtdienstgruppen können als "Sprachgruppe" gekennzeichnet werden. Damit ist dann wieder die alte Versammlungsplanung möglich
- Sprachgruppen können Vortragsthemen in der eigenen Sprache selbst pflegen (innerhalb der Vortragsthemen umschalten)
- Gebiete für Sprachgruppen müssen über die normalen Versammlungsgebiete angelegt werden
- Versammlungsübergreifende Zugriffe auf die gleiche Sprachgruppe sind nicht mehr möglich. Ggfs. muss ein 2. Account für diese Person in der Versammlung der Gruppe angelegt werden

## [5.1.7] — 2021-09-26

- Verlorene Code Aktualisierung nachgeholt
- Vortragsthemen werden jetzt pro Versammlung gepflegt, nicht mehr zentralseitig über Sprachdateien
- Vortragsthemen werden im Klartext bei der Planung gespeichert. Änderungen der Vortragsthemen in der Verwaltung wirkt sich nur auf in Zukunft geplante Einträge aus

## [5.1.6] — 2021-06-04

- Treffpunkte, neuer Eintrag leitet nach dem Erstellen direkt zur Bearbeitung weiter
- Treffpunkte, Bearbeitung zeigt Statistik der Planung direkt in der Benutzerauswahl
- Treffpunkt Technik, separate Auswahl der Benutzer, die in der Versammlungsplanung aktiviert werden muss

## [5.1.5] — 2021-05-14

- Statistikanzeige bei der Planung von Aufgaben innerhalb der Auswahlfelder
- Aktualisierung der OneSignal Serviceworker
- Code Cleanup

## [5.1.4] — 2021-05-02

#### Update

- Vorsitz Export für alle Vorsitzenden verfügbar, nicht nur für den aktuell geplanten
- Freie Gebiete zeigt nicht mehr eigene Leihgebiete für andere Versammlungen an
- Gebietslayer zeigt jetzt keine deaktivierten Gebiete mehr an

#### Fix

- Leihgebiete Kachelanzeige funktionierte nicht
- Farbe der Freigabetext Hintergründe angepasst

## [5.1.3] — 2021-04-17

#### Fix

- Gebiete anlegen
- Eingabe der Gebietsgröße
- Treffpunkt Anwesende eintragen (Startseite)
- Trolleyplan öffnen
- Benutzer, Anzahl der Buchstaben für Vornamen war ohne Funktion

## [5.1.2] — 2021-03-13

#### Neu

- Versammlungsstatistik als Excel exportieren

#### Fix

- Korrektur der falschen Anwensendenzahlen
- Mobile Intersection Erkennung
- Versammlungsstatistik enhielt nicht TPS Aufgabe Nr 4

## [5.1.1] — 2021-03-06

#### Neu

- Treffpunkt Anwesende können nicht nur vom Treffpunkt Leiter eingetragen werden

#### Fix

- Treffpunktzahlen wurden nicht korrekt erfasst

## [5.1.0] — 2021-02-27

#### Neu

- Password Reset beim Login
- Password Reset Mail

#### Update

- PHP Pakete

## [5.0.5] — 2021-02-24

#### Neu

- Die originalen Dateinamen werden bei Uploads im Termin / Info Bereich gespeichert und nicht mehr durch eine ID ersetzt

#### Update

- Highlight der Technik im Treffpunktplan
- Bessere Beschreibung der Info-Texte im Versammlungsplan
- Aktuelisierung der JavaScript Pakete

## [5.0.4] — 2021-02-19

### Geändert

- Versammlungsplan Typen reduziert und Stream/Info/Nur Ordnungsdienst zusammengelegt
- Anzeige der Versammlungsplaninfos optimiert

## [5.0.3] — 2021-01-24

### Geändert

- Suche findet jetzt auch Leihgebiete

### Behoben

- Leihgebiete konnten nicht bearbeitet werden

## [5.0.1] — 2021-01-13

### Neu

- Technik Benutzer bei Treffpunkten auswählbar
- Benachrichtigung für Technik Benutzer auf der Startseite

### Geändert

- Layout des Info Bereichs auf der Startseite. Der Info Bereich hat jetzt die Funktion des digitalen "Anhangs", der sonst in der Versammlung verfügbar war

### Behoben

- Zweite Klasse konnte nicht abgewählt werden, sobald diese einmal aktiviert war

## [5.0.0] — 2020-12-27

- Update der Systembasis von Symfony 4.2 auf Symfony 5.2
- Rewrite des Codes, php types und Datenbank Update

  

#### Bitte beachten!

Angepinnte Informationen wie "Zoom Zugangsdaten" befinden sich jetzt nicht mehr auf der Startseite unter "Termine" sondern richtigerweise im Tab "Infos"

  

##### Funktions-Aktualisierung

- Neu: App Name von VMS in VAPP geändert (Versammlungs-App)
- Neu: Versammlungs-Option zum deaktivieren der Prüfung für doppelte Aufgaben bei Sprachgruppen
- Änderung: Umbenennung von der Menübenennung "Versammlung" in "Zusammenkunft", um die Pläne besser abzugrenzen
- Fix: Kalender Januar wurde falsch angezeigt
- Fix: Leihgebiete wurden falsch dargestellt, Statistik korrigiert
- Fix: Leihgebiete hatten teilweise einen falschen Datenbank-Status

## [4.5.5] — 2020-06-12

### Neu

- NoteApp unbenannt zu "PD Bericht"
- Verknüpfungen auf der Startseite aufgeräumt, neuer Bereich "Weitere Apps"

## [4.5.4] — 2020-04-30

### Neu

- NoteApp, beim Bericht kann jetzt zusätzlich eine Bemerkung eingetragen werden
- NoteApp, beim Bericht kann jetzt nachträglich das Datum verändert werden

### Geändert

- Fremdsprachen Verknüpfung auf die Startseite unabhängig von der Versammlungs-Option anzeigen

### Behoben

- Berechtigung zum Bearbeiten von Fremdsprachen Versammlungsplänen angepasst

## [4.5.3] — 2020-04-17

### Neu

- Freitextfeld zum Eintragen eines Zooms-Meetings etc. für den Versammlungsplan und Treffpunkte
- Anzeige von Versammlungsplan Einträgen im Dashboard Newsfeed, wo diese Infos hinterlegt wurden
- Anzeige diese Infos bei Treffpunkten im Dashboard Newsfeed

## [4.5.2] — 2020-04-16

### Neu

- Fremdsprachen Gruppen haben jetzt alle Aufgaben für die LuD zur Verfügung, die auch die normale Versammlung hat
- Info Feld zum Eintragen der Zoom Einladung bei allen Zusammenkünften (Freitext mit Markdown Editor)

### Geändert

- Download Darstellung im Newsfeed

## [4.5.1] — 2020-02-13

### Neu

- Excel Export der Statistik "Versammlung Anwesende"

### Geändert

- Excel Export des Versammlungsplans
- Farbschema

## [4.5.0] — 2020-02-09

### Neu

- Dark Mode

### Geändert

- Zeite im Versammlungsplan an die neuen Aufgaben angepasst

## [4.4.4] — 2020-01-02

- Neu: Stream Typ für Versammlungsplan, Info Feld + Ordnungsdienst
  - Anpassung der Anzeige in Datenbank
  - Anpassung der Exporte
- Update: Sprachdatei
- Fix: Benutzer hinzufügen mit ausgewählter Gruppe
- Fix: PDF Erstellung funktioniert wieder, allerdings kein QR Code Export. Das wird evtl. in Zukunft wieder laufen.

## [4.4.3] — 2019-12-08

### Neu

- Gebiete duplizieren. Erstellt eine Kopie der Daten, Straßen, Layer und Historie. Nützlich z.B. für Gebietsteilungen

### Geändert

- Downloads im Newsfeed, Ansicht verbessert
- Newsfeed, zeigt nur noch Events, die man auch regulär im Plan sehen würde
- Startseite, zeigt nur noch Verknüpfungen, für die man freigeschaltet ist

## [4.4.2] — 2019-11-15

### Neu

- Dateien bei "Wichtigen Infos" anhängen
- Anzeige von Downloads in den Listen und Newsfeed auf der Startseite

### Behoben

- Diverse Fehler im Bereich Gebiete, Vorsitz etc.

## [4.4.1] — 2019-10-07

### Neu

- Tabellen-Version des Versammlungsplan-Exports

### Geändert

- Neue Übersetzungen hinzugefügt
- Treffpunkt-Planer haben Zugriff auf den Abwesenheitsplan

### Behoben

- IntersectionObserver weiter optimiert, da sich die alten iOS Geräte weiter quer stellen

## [4.4.0] — 2019-10-06

### Neu

- Historie für den Bereich Termine

### Geändert

- Übersetzung der Standardtexte, die bei neuem Versammlungsplänen hinterlegt sind
- Fremdsprachige Adressen komplett aus dem system entfernt
- Menüs, Anzeigen und Statistiken zur Adressenverwaltung etc. entfernt
- Plugins etc auf den neusten Stand gebracht

### Behoben

- IntersectionObserver führte auf älteren iOS System zu fehlerhaften Darstellungen

## [4.3.9] — 2019-09-13

### Neu

- IntersectionObserver zum optimierten Laden von Inhalten (Gebiete, Trolleylisten)

### Geändert

- Trolleyplan Geschwindigkeit optimiert
- NoteApp hat jetzt Bericht als Startseite
- NoteApp Bericht hinzufügen geht jetzt auch aus der Detail Ansicht heraus
- Vorsitz Export zeigt jetzt auch die 2. Klasse, wenn die Verso entsprechend konfiguriert ist

### Behoben

- Trolley Routen bearbeiten, leere Routenzeiten wurde nicht gespeichert

## [4.3.8] — 2019-06-30

### Neu

- Auswahl der Sprache ist direkt über die obere Menüleiste möglich

### Geändert

- Übersetzungen für Russisch aktualisiert
- Versammlungsplan Export für Verwendung mit 2 Klassen angepasst

## [4.3.7] — 2019-05-20

### Abschaltung des Bereich "Fremdsprachen"

Aufgrund der aktuellen Änderungen bzgl. Datenschutz, werden in den kommenden Tagen sowohl der Bereich der fremdsprachigen Gruppen als auch die Adressen (bis auf Verbote) deaktiviert und gelöscht.

##### Folgende Funktionen sind noch in diesem Bereich für Gruppen verfügbar:

- eigene Versammlungpläne parallen zur normalen Versammlung
- versammlungsübergreifende Zuteilung von Personen zu einer Gruppe

Falls dies nicht mehr aktiv genutzt wird, werde ich das ganze Modul aus der Datenbank entfernen. Bitte Rückmeldung an mich, wenn ihr von dieser Änderung betroffen sein und diese Funktionen weiter nutzen wollt.

Fremdsprachige Gruppen/Versammlungen die den "normalen" Versammlungsplan verwenden, sind davon nicht betroffen.

### Update auf v4.3.7

- Update: alle Adressen bis auf Verbote aus Ansichten und Ausdrucken der Gebiete entfernt
- Update: es können nur noch Verbote eingetragen werden
- Update: NoteApp Notizen deaktiviert. Es verbleibt die Gebietsansicht/Straßen als digitale Gebietskarte, die auch offline verfügbar ist. Die Eingabe des Berichts wird auch weiterhin möglich sein
- Update: Versammlungsplan Export, kleinere Anpassungen

## [4.3.6] — 2019-05-16

### Neu

- Export Layout für verschiedene Pläne aktualisiert (optional, Tabellenansicht)
- Historie für (Hilfs)Pionierliste

### Behoben

- Diverese Layouts und Formatierungen

## [4.3.5] — 2019-05-15

- Neu: 2. Klasse für Aufgaben im Bereich "Im Dienst verbessern"
  - erstmal nur die Verwaltung und Anzeige in der Datenbank, PDF Ausgabe kommt noch
  - Einstellung muss in der Verwaltung der Versammlung aktiviert werden
  - Dann siehst man einen Schalter im Bereich, wo die Pläne bearbeitet werden, um die 2. Klasse zu aktivieren
- Neu: Anwensende können jetzt in 3 Spalten eingetragen werden (Saal, Telefon, Gruppe)
- Fix: falsche Anzeige für Dienstwoche im Versammlungsplan
- Fix: Treffpunktanwesende konnten nicht mit leer oder 0 eingetragen werden
- Fix: Termine Exportieren hatte falsche Zeiten

## [4.3.4] — 2019-04-15

### Neu

- Trolley-Bereich Konfiguration komplett von einer externen Konfiguration in die Datenbank übertragen

### Geändert

- Trolley-Logik überarbeitet
- NoteApp Sortierung von Adressen überarbeitet
- Datums-Anzeige optimiert

### Behoben

- Verso-Plan Export zeigte keine Vortragsübersetzung
- Diverse Fehler...

## [4.3.3] — 2019-03-20

### Geändert

- Vortragsliste aktualisiert

### Behoben

- NoteApp, Adressen wurden in der Anzeige gelöscht, nicht aber in der Datenbank!
- NoteApp, korrekte Ausgabe von Fehlern, wenn eine Aktion nicht erfolgreich war (z.B. Session im Hintergrund beendet, etc)
- Verso Plan Fahrdienst wurde nicht geöffnet

## [4.3.2] — 2019-03-05

- Neu: Einführung von "Flash Nachrichten", die nur einmalig z.B. nach dem Speichern von Daten angezeigt werden
- Neu: Warnmeldung für die Raumplanung, falls Termine geplant werden, bei denen es Überschneidungen mit vorhandenen Buchungen gibt
  - Betriff alle Bereiche, bei denen Räume des Königreichsaals ausgewählt werden können
  - Die aktuelle Buchung wird trotz Überschneidung gespeichert und muss manuell korrigiert werden
  - Der Hinweis erfolgt nur **einmalig** nach dem Speichern
- Update: Weitere Übersetzungstexte...

## [4.3.1] — 2019-03-03

### Neu

- Anwesendenzahlen im Versammlungsplan eintragen
- Statistikanzeige für Anwesendenzahlen (Woche, WE, Treffpunkte)

### Geändert

- Formatierung der WebNotes "Teilen" Funktion
- Weitere Übersetzungstexte...

## [4.3.0] — 2019-02-25

Das Grundsystem wurde komplett aktualisiert und auf den neusten technischen Stand gebracht. Das betrifft vor allem die Sicherheit, Datenübertragung und Geschwindigkeit. Folgende Punkte sind zudem an der Oberfläche geändert worden:

- Neu: Wechsel vom Texteditor CKEditor auf Markdown
- Neu: Sprachsystem mit Übersetzungen der kompletten Seite in Russisch und Griechisch (fehlende Übersetzungen werden aktuell noch bearbeitet)
- Neu: "Versammlungsgruppe" wurde in "Saal" umfunktioniert, um dort standortspezifische Konfigurationen zu hinterlegen
- Neu: Raumplan ist jetzt nicht mehr in einer statischen Konfiguration sondern über den "Saal" einstellbar
- Neu: Im Versammlungsplan können vom Vorsitzenden oder KdÄ Bekanntmachungen direkt beim jeweiligen Tag hinterlegt werden. Der Zugriff ist entsprechend begrenzt.
- Neu: Alle Vorträge, Lieder und Schulungspunkte sind per Auswahl verfügbar und in die jeweiligen Sprachen übersetzt
- Neu: WebNotes hat einen Bereich für Rückbesuche, wo auch manuelle gebietsunabhängige Einträge wie Studien erfasst werden können
- Update: Trolleyplan ist nur noch mit 2 Personen buchbar
- Update: Gebietssuche führt immer in die Kartenansicht anstelle der Layer-Ansicht

#### Was ist für die Zukunft geplant?

- Übersetzungen vervollständigen und aktivieren
- Versammlungsplan komplett für ein Jahr anlegen
- Benachrichtigungen für Überschneidungen beim Raumplan und Abwesenheit
- Anwesendenzahl von Zusammenkünften
- Layout der PDF Pläne verbessern
- Import von GeoJSON Dateien aus dem Territory-Helper

## [4.2.5] — 2019-01-28

### Neu

- Gebiete, Import und Export von GeoJSON Dateien
- Karte der freien Gebiete, Farben entsprechend dem Bearbeitungsstand
- Vorträge im Plan per Dropdown auswählen

### Geändert

- PDF Daten des  Versammlungplan und der Hauptreinigung korrigiert
- doppelte Nachrichten bei Planänderungen behoben

## [4.2.4] — 2018-12-18

### Neu

- Layer Karte aller Gebiete in der Versammlungsgruppe
- Sprachgebiete haben jetzt auch OSM Layer. Sobald dort Daten hinterlegt werden, wird dies in der Detailansicht angezeigt
- Sprachgebiete Layer Übersichtskarte aller Gebiete

### Geändert

- Sprachgebiete Gebietskarten Layout optimiert. Bestes Ergebnis erzielt man mit Karten, die im Layer-Format erstellt wurden
- Berechtigungen im Sprach-Bereich angepasst
- Layer Basisdaten wie Versammlung und Zentrierung können im Bereich Versammlung hinterlegt werden

## [4.2.3] — 2018-12-08

### Neu

- Adressen direkt in der Gebietskarte eintragen (online Update)
- Vorhandene Adressen aus der Gebietskarte löschen
- Kennzeichnung von Adressen, die auch online in der Gebietskarte vorhanden sind

### Geändert

- Setup/Backup überarbeitet und an neue Felder angepasst
- Excel-Vorlagen aktualisiert **Web-NotesApp**

## [4.2.2] — 2018-12-05

- Neu: Verso-Plan hat beim 2. Teil jetzt 4 Aufgaben (wird ab Januar benötigt)

- Neu: Lehrpunkte aus der neuen Broschüre hinzugefügt (wird ab Januar benötigt)

- Aktuell befinden sich die Punkte ganz unten in der Auswahl

- Update: altes Lehrpunktsystem entfernt, keine Vorauswahl oder manuell Eintragen mehr nötig

- Update: Ansicht der Adressen überarbeitet, Datenschutzhinweis bzgl. Namen bei Adressen hinterlegt

- Update: Überall in den Adressen "Namen" durch "Eingang" ersetzt

- Es sollte in Zukunft nur noch eine Beschreibung hinterlegt werden, um die Klingel/Eingang eindeutig zu identifizieren

**Web-NoteApp**

- Update: direktes Öffnen direkt aus den Gebieten in der Datenbank (Eigene- und Gruppengebiete)

- Fix: Übertragen von Zeiten in den aktuellen Monat

## [4.2.1] — 2018-11-28

### Neu

- Layer Karten haben eine neue Kartenquelle mit größeren Straßennahmen als OMS
- Gebiets-Massenpflege
- Möglichkeit Gebiete anderen Versammlungen zuzuweisen
- Gebiete können deaktiviert werden um z.B. im Voraus zu planen und dann zu veröffentlichen
- Im Gebiet mit Nr. 0 kann die Versammlungs-Gebietsgrenze hinterlegt werden. Diese wird dann in anderen Layer Karten farbig angezeigt

### Geändert

- NoteApp, "eigene Gebiete hinzufügen" gibt diese direkt frei, falls noch keine Freigabe vorhanden war
- Layer Karten Export optimiert

### Behoben

- Gebiet hinzufügen hat nicht funktioniert, geht jetzt aber wieder

## [4.2.0] — 2018-11-22

Die Umstellung der NoteApp auf die Webversion ist jetzt komplett. Jetzt stehen alle Funktionen nicht nur Android Usern sondern überall da zur Verfügung, wo ein Browser verfügbar ist. Folgende Funktionen sind integriert:

- **Notizen für den Predigtdienst**

- Automatisches Importieren der eigenen Gebiete und der Adressen, die nicht besucht werden sollen

- Bearbeitungshistorie

- Vordefinierte Aktionen für schnelle Eingaben

- Teilen der Daten als Text oder als Datei über die Share Funktion des Smartphones

- Importieren von geteilten Daten um Notizen aus verschiedenen Quellen zusammenzuführen

- Filtern nach Status (NH, RB, etc.)

- **Predigtdienst Bericht**

- Zeiten und Daten eintragen

- Monatsansicht (kumuliert) und Einzelansicht der Einträge

- Teilen des Berichts über die Share Funktion des Smartphones

- Setzen von Monats- und Jahreszielen

- Statistiken zu Zeiten und anderen Daten

- Alle Daten werden lokal gepspeichert und optional verschlüsselt in der Datenbank abgelegt

- Manuelle Synchronisation zwischen den Geräten ist möglich

**Folgende Änderungen betreffen die Datenbank**

- Update: Zugriffsrechte auf Gebiete eingeschränkt

- Update: Anzeige der "Nicht besuchen" Adressen eingeschränkt

- Update: Layer-Sandbox kann jetzt Daten exportieren und importieren, um mehrere Versionen oder Projekte zu bearbeiten

- Update. Gebiete können anderen Versammlungen zugeteilt werden

## [4.1.7] — 2018-11-20

### Neu

- WebNotes Filter
- WebNotes Bericht Chart Ansicht
- WebNotes Layout farblich vom Rest der Datenbank getrennt

### Geändert

- WebNotes Speicher und Aktualisierungen optimiert

## [4.1.6] — 2018-11-16

- Neu: Webversion der NoteApp freigeschaltet

- Erste Version, weitere Funktionen folgen (Sortierung, Filter)

- Daten werden komplett lokal auf dem Handy gespeichert

- Hilfe für Notizen und Bericht

- Update: Share Code wird jetzt jeweils unterhalb des QR-Codes bei den Gebietsfreigaben angezeigt

## [4.1.5] — 2018-11-14

### Geändert

- Gebiete haben jetzt einen kürzeren Freigabe-Link. Dieser wird zusätzlich unterhalb des Barcodes dargestellt
- Vorbereitungen für die Integration der Web-NotesApp durchgeführt
- Versammlungsplan-Export mit Lehrpunkten zeigt jetzt den kompletten Lehrpunkt an

### Behoben

- Datumsauswahl hat unter gewissen Umständen ein falsches End-Datum berechnet

## [4.1.4] — 2018-10-15

- Neu: OSM Kartenansicht kann im Menü oben rechts unter "Ansicht" in folgenden Bereichen aktiviert werden

- Meine Gebiete

- Meine Gruppe (Gebiete)

- Freie Gebiete

- Alle Gebiete

- Leihgebiete

- Neu: Gebietsoption "Leihgebiet" um manuell erstellte Gebiete als Leihgebiet zu kennzeichnen. Diese werden dann in manchen Ansichten nicht mehr zusammen mit den anderen Gebieten angezeigt

- Update: Zoom Faktor bei der OSM Karte

- Update: Link zu OSM Karten angepasst

- Update: Neue Benutzer haben jetzt Standard-Berechtigungen

- Fix: Vorsitz bearbeiten, Lied ändern funktioniert wieder

## [4.1.3] — 2018-10-10

- Neu: Gebietsübersicht und Freie-Gebiete in OpenStreetMap als Karte mit allen jeweiligen Gebieten (Gebietsnummern und Links kommen noch demnächst)

- Neu: Freihandzeichnen der Gebiets-Layer per Shift-Taste

- Neu: Eigenen Standort innerhalb der Gebietskarte anzeigen lassen (Standard-Abfrage des Browsers bitte bestätigen)

v4.1.2

- Neu: Schriftgröße kann im Profil in 3 Stufen verändert werden

- Neu: Für Gebiete können Gebietsdiener jetzt Layer in OpenStreetMap erstellen

- Gebiet öffnen, neuer Tab Layer

- Eine Anleitung ist in diesem Bereich hinterlegt, Feedback ist erwünscht

- Für Listenansichten und Ausdrucke wird weiterhin ein Bild verwendet

- In der Detailansicht der Gebiete wird jedem die Karte in OSM angezeigt, sobald dort Daten hinterlegt wurden

- Update: Diverese optimierungen und Fehlerbehebungen

**Hinweis**

Solltet ihr Probleme mit der Darstellung haben oder Listen z.B. nicht mobile nicht horizontal scrollen können, verwendet bitte Google Chrome, da dort alle Funktionen wie geplant laufen

## [4.1.1] — 2018-09-29

### Geändert

- Schriftgröße aller Tabellen und Listen angepasst

### Behoben

- Verso Statistik der Aufgaben zeigte falsche Werte
- Trolley Info kann jetzt wieder eingetragen werden
- Trolley Abgaben Statistik war falsch verlinkt
- Aufgabenplan für TPS konnte nicht gespeichert werden

## [4.1.0] — 2018-09-24

- Neu: Benutzeroberfläche aktualisiert

- Neu: Berechtigungen korrigiert und neu definiert. Ggfs. müssen diese jetzt manuell angepasst werden

- Neu: HiPi Liste zum Drucken der Pioniere und Hilfspioniere als PDF

- Neu: Plugins, Icon-Font und Packager auf den neusten Stand gebracht

- Neu: Ungenutzte Funktionen entfernt und Menüs aufgeräumt

- u.v.m.

## [4.0.4] — 2018-05-22

### Neu

- Gruppengebiete, kann auf dem 2. Tab bei Gebieten aktiviert werden. Diese werden dann farbig markiert und können von allen Personen aus der Gruppe unter "Meine Gebiete" gesehen werden. Nur der Inhaber kann das Gebiet aber bearbeiten/verwalten
- Anwesende nach Treffpunkten eintragen. Funktioniert ähnlich wie die Trolley Abgaben. Die Anzahl wird anschließend im Bereich Treffpunkte - Historie angezeigt. Diese Funktion kann in den Einstellungen für die Versammlungen ggfs. deaktiviert werden
- Mobile Navbar
- Farbige Unterteilung der einzelnen Bereiche der Datenbank

### Geändert

- Gebietsdarstellung optimiert, Nicht besuchen, QR Code und Info umformatiert
- Public Header richtig formatiert
- Counter bei geteilten Gebieten wird jetzt korrekt in beiden Versammlungen aktualisiert
- Berechtigungen für Gebiets/Straßen-Suche angepasst

## [4.0.3] — 2018-05-18

### Neu

- Web Pushbenachrichtigungen eingebaut. Man bekommt im Browser ein Popup, dass nach den Berechtigungen für die Benachrichtigungen fragt. In Zukunft wird es noch eine Möglichkeit geben, zu entscheiden, welche Benachrichtigungen man erhalten will

### Geändert

- Mobilte UI angepasst

## [4.0.2] — 2018-05-07

### Neu

- Datenschutzerklärung und Impressum erstellt und im Footer der Seite eingefügt. Da es eine private Seite mit eingeschränktem Zugang ist, wäre dies eingentlich nicht nötig. Aber sicher ist sicher...

## [4.0.1] — 2018-04-27

### Neu

- Erweiterung der Seite zur Nutzung als PWA (Progressive Web App). Sobald man die Seite „zum Startbildschirm“ hinzufügt, stehen alle Funktionen zur Verfügung. Weitere Funktionen wie Push-Nachrichten folgen noch. Bitte ggfs vorhandene Verknüpfungen löschen und neu erstellen
- VBS und Schlussgebet im Plan für die Sprachgruppen. Die Überprüfung für Aufgaben in der Hauptversammlung wurde für diese beiden Felder deaktiviert. Es muss also manuell geschaut werden, ob diese Personen in der 2. Stunde verfügbar sind
- Gebietsfreigaben können als Gast-Gebiete in anderen Versammlungen hinzugefügt werden. Ansichten wurden entsprechend angepasst

### Geändert

- UI Anpassungen als Vorbereitung für PWA Nutzung
- Berechtigungen für Unterbereiche wurden in der Verwaltung verlinkt, damit alles an einer Stelle ist

### Behoben

- Benachrichtigungen werden jetzt korrekt zugestellt

## [4.0.0] — 2018-04-20

### Neu

- Komplett überarbeitetes Berechtigungssystem für Fremdsprachen und Adressen. Es ist jetzt eine Prüfung auf objektbasis möglich. Zudem sollte der Bereich performanter geworden sein
- Neue URLs für den Fremdsprachenbereich, um Wechsel zwischen Sprachgruppen besser zu handhaben

### Geändert

- Trolleybereich, Layout der Übersicht, diverse Fehlerbehebungen
- Trolleyeinträge haben jetzt eine Uhrzeit. Das ermöglicht genauere Benachrichtigung und Erinnerung an das Eintragen der Abgaben

### Behoben

- Doppelte Einträge im Trolleyplan werden jetzt abgefangen **Achtung:** Da sich sehr viele Dinge in Bezug auf Sprachgruppe und Adressen geändert hat, kann es sein, dass manche Dinge jetzt anders sind. Solltet ihr auf Daten nicht mehr zugreifen können oder andere Fehler auftreten, bitte direkt Rückmeldung an mich. Ich konnte im Vorfeld leider nicht alles testen. Alle vorhandenen Gebietsfreigaben, die müssen ggfs. neu ausgedruckt werden, da sich auch dort die URL verändert hat.

## [3.10.0] — 2018-04-05

### Neu

- Infos auf der Startseite und Benachrichtigungen im Posteingang getrennt/überarbeitet
- Trolley Abgaben vorbereitet, wird am Sonntag oder so aktiviert

### Geändert

- Beim Klick auf Benachrichtigungen landet man jetzt beim korrekten Datum

## [3.9.22] — 2018-04-03

### Neu

- Benachrichtigungen für Änderungen beim Treffpunkte-Leiter, Aufgaben und Buchungen im Trolley-Kalender
- Startseite aufgeräumt
- Erinnerungen an Gebietsbearbeitung/-tausch und Trolley-Infos werden jetzt auf der Startseite unter Nachrichten angezeigt
- der Vorsitzende am WE kann die Daten (Thema, Name und Lied) im Vorsitz-Export direkt bearbeiten, unabhängig der Berechtigungen

### Geändert

- besseres Feedback beim Aktualisieren der Gebietsbearbeitung
- Mobile-Layout für Benachrichtigungen optimiert

## [3.9.21] — 2018-03-27

- Neu: Benachrichtigungssystem auf Redis Basis integriert

- Counter für : freie Gebiete, Gebietsfreigaben, Feedback

- Notifications für: Trolley, Versammlungsplan

- Neu: Dashboard Nachrichten für Changelog und Notifications (weitere Bereiche folgen)

- Neu: Statistiken für den Versammlungsplan und Treffpunkte

- Update: Dashboard Mobile Menü angepasst

- Update: besseres Feedback beim Aktualisieren der Gebiete, damit Bearbeitungen nicht mehrfach eingetragen werden

- Update: Vorsitz Export Layout angepasst

- Update: Dashboard aufgeräumt, Changelog ausgelagert

## [3.9.20] — 2018-02-28

### Neu

- Dashboard Layout
- Raumplan Kalender Agenda

### Geändert

- Vorsitz Export, Aufgabennamen sind individuell anpassbar
- Vorsitz Export Layout

## [3.9.19] — 2018-02-27

### Neu

- Vorsitz Export kann jetzt per Formular optionale Daten bekommen, die ins fertige Manuskript direkt eingefügt und formatiert werden

### Geändert

- Vorsitz Export Ansicht optimiert
- Raumplanung zeigt jetzt alle übergreifenden Einträge korrekt
- Raumplanung kann jetzt auch für den ganzen Saal gebucht werden
- Verso-Plan Ansicht optimiert, leere Reihen in Einträgen werden nicht mehr dargestellt
- iOS standalone App Layout Fix

## [3.9.18] — 2018-02-23

### Neu

- Hinweis, wenn das Gebiet länger als 8 Jahre zugewiesen wurde
- Login-Daten sind jetzt in der Verwaltung als Karten druckbar, um Personen, die bis jetzt keinen Zugang haben, anzumelden

### Geändert

- Übergaberreinigung wird jetzt korrekt im Newsfeed angezeigt

## [3.9.17] — 2018-01-29

### Neu

- Liednamen werden automatisch zu den ausgewählten Liednummern im Plan angezeigt (Mouseover)

### Geändert

- Vorsitz Export und Vorsitz WE Export zeigen jetzt die entsprechenden Liednamen an, wenn diese gepflegt wurden

## [3.9.16] — 2018-01-28

### Geändert

- QR Code bei Gebietsexport etwas vergrößert und besser platziert (oben rechts)
- Name der Hauptreinigung wurde angepasst
- Einträge im Versammlungsplan der Sprachsprachgruppe werden entsprechend gekennzeichnet (Name im Titel)

### Behoben

- Vorsitz am Sonntag zeigt jetzt wieder den korrekten Vortrag der nächsten Woche an

## [3.9.15] — 2017-12-30

### Geändert

- Farbschema angepasst. Gelb ist jetzt immer der aktuelle Tag
- Farbschema vom Raumplan angepasst. Neben- und Besprechungsraum sind jetzt grau und dunkelgrau
- Fremdsprachengruppen Personenfilter optimiert
- Trolleystatistik Formatierung bei kleinen Auflösungen

### Behoben

- Versammlungsplan, Speichern von Inhalten die innhalb einer Massenpflege erfasst oder aktualisiert werden

## [3.9.14] — 2017-12-29

### Neu

- Statistik für den Trolleydienst (Tag, Route und Person)

### Geändert

- Getrennte Anzeige für den Versammlungsplan für Sprachgruppen, aufgeteilt je nach Versammlung. Betrifft die arabische/kurdische Gruppe
- Versammlungsplaneinträge für Sprachgruppen werden für die Plan-Admins zusätzlich zu den deutschen Einträgen angezeigt

## [3.9.13] — 2017-12-28

### Neu

- Abwesenheitsplan Kalenderansicht
- Fremdsprachengruppen haben jetzt eine überarbeitete Verwaltung der Personen und Berechtigungen

## [3.9.12] — 2017-12-25

### Neu

- Fremdsprachen Adressen Volltextsuche für Name, Straße, PLZ, Stadt, Sprache

### Geändert

- Fremdsprachen Suche überarbeitet und Optionen hinzugefügt

## [3.9.11] — 2017-12-20

### Neu

- Raumplan PDF Export
- User Filter erweitert, Suche optimiert

### Geändert

- Datumsauswahl von/bis optimiert
- Suche nach Adressen gefixt

## [3.9.10] — 2017-12-19

### Neu

- Profile als eigene Seite
- Profil Statistiken über eigene Aktivitäten
- Alternatives Theme für die Website ist auswählbar. Ggfs. muss man sich einmal neu anmelden, um den Zwischenspeicher zu leeren
- Zoom für mobile Geräte
- Support für Gebietskarten im PDF Format. Bevorzugt soltle allerdings ein Image verwendet werden, da nur die Anzeige möglich ist, nicht aber die Ausgabe als PDF Karte

### Geändert

- UI und Menü Anpassungen
- Fehlerbehebungen in diversen Bereichen

## [3.9.9] — 2017-12-18

### Neu

- Plan für die Raumbelegung

### Geändert

- Userverwaltung und UI überarbeitet
- Suchformular der Submodule vereinheitlicht

## [3.9.8] — 2017-12-06

### Neu

- Bei der Reinigung können 2 Gruppen eingetragen werden
- Ort bei Treffpunkten per Config vorgegeben, um Termine automatisch im Raumbelegungsplan einzutragen

### Geändert

- Menüs aufgeräumt, Trolley in einen eigenen Bereich ausgelagert, etc

## [3.9.7] — 2017-12-05

### Neu

- Mobile Menü auf der Startseite
- Termin Export frei an- und abwählen
- Termin Ansicht mit Monaten, nicht mehr Wochen

### Geändert

- Dashboard UI, Menüs entschlackt
- Interne optimierung der Session und Services

### Behoben

- User in der Plan Verwaltung anzeigen

## [3.9.6] — 2017-10-29

### Neu

- Newsfeed Management überarbeitet
- Dashboard Newsfeed UI angepasst

## [3.9.5] — 2017-10-28

### Neu

- Export der eigenen Termine selektierbar
- Fremdsprachen können jetzt auch unter der Woche eigene Versammlungspläne erstelle. Benutzer werden jeweils im Verso Plan oder anders herum blockiert, um doppelte Belegung zu vermeiden
- Adresse hinzufügen ist in den Gebieten prominenter platziert

### Geändert

- Hauptreinigung im Reinigungsplan kann jetzt auch versammlungsübergreifend geplant werden
- Angepasste Darstellung für die Hauptreinigung
- Trolley Teilnehmer zeigt jetzt auch die Telefonnummern der Teilnehmer an, damit so vorher schon Termine vereinbart werden können
- Vorsitz-Daten anzeigen/exportieren wurde jetzt direkt im Plan integriert (Blauer Button)
- Lehrpunkt eintragen wurden direkt bei dem jeweiligen Lehrpunkt im Plan hinterlegt (Blauer Button)

## [3.9.4] — 2017-08-30

### Neu

- Wenn jemand für eine bestimmte Trolleyroute nicht freigegeben wurde, taucht diese erst garnicht in der Ansicht mit auf

### Geändert

- Trolley Kalendar Layout angepasst, Buttons sind jetzt direkt links von der Uhrzeit
- Vorsitzt Exportieren im Verso-Plan gibt jetzt auch die nächste Zusammenkunft mit aus. So können z.B. die Personen zu den Aufgaben der nächsten Woche mit ausgegeben werden

## [3.9.3] — 2017-08-28

### Neu

- Trolley Info hat jetzt eine Lese-Bestätigung
- Trolleykonfiguration erweitert. Jetzt kann festgelegt werden, welche Route an welchen Tagen verfügbar sein soll etc.
- Verso-Plan, Vorsitz am WE hat jetzt eine kompakte Ansicht mit den Daten, die man zum Vorsitzt benötigt

### Geändert

- 2. lvl Cache und Redis Configuration angepasst und optimiert

### Behoben

- Gebeitskartendruck, Fehlerhafte Darstellung des Straßennamens behoben

## [3.9.2] — 2017-08-02

### Neu

- Trolley History

### Geändert

- Versoplan Benutzer verwalten ist jetzt übersichtlicher
- Sortierung der Adressen in Gebieten
- Adressen bearbeiten entfernt nicht ausversehen nicht genutzte Daten
- Abwesenheit wird auch bei Treffpunkt verwalten markiert
- Beim Reinigungsplan werden alle Gruppen des Verso Verbunds angezeigt

## [3.9.1] — 2017-07-24

### Neu

- Vorlagen für Adressen und Fremdsprachen Adressen beinhalten jetzt Felder für "Sprache" und "Wird besucht von"
- Versammlungsplan hat jetzt im Ordnungsdienst 8 optionale Freitextfelder

### Geändert

- VBS Name wird wieder korrekt dargestellt
- Anzeige der Adressbeschreibung überarbeitet, "Besucht von" wird jetzt auch bei Fremdsrachen Adressen automatisch übernommen, sobald eine Person hinterlegt wurde

## [3.9.0] — 2017-07-22

### Neu

- Fremdsprachen Gebiete, Adressen können jetzt als "Besuch von"  markiert werden. Anzeige in der Liste und im Gebiet
- Versammlungsplan, neue Berechtigungen für Gebet, Vorsitz am WE, Freitextfeld für sonstige Sachen. Berechtigungen müssen einmalig neu gesetzt werden
- Versammlungsplan, neues Feld für Sonstiges im Ordnungsdienst

### Geändert

- Fremdsprachen Gebiete Layout optimiert

## [3.8.28] — 2017-07-21

### Neu

- 2. Lvl Cache für Datenbankabfragen

### Geändert

- Adress Update, nach dem Speichern kommt man wieder auf die zuvor aufgerufene Seite
- Datenbankabfragen optimiert
- Geänderte Berechtigungen im Fremdsprachen Bereich, um allen Datenschutzanforderungen nachzukommen

## [3.8.27] — 2017-07-20

### Geändert

- Farben der Gebietsupdate-Button überarbeitet
- Straßen Import im Setup geht jetzt zusätzlich auf den Key "Seite"
- Fremdsprachengebiete haben jetzt eine direkte Adressverwaltung (Anzeigen, Bearbeiten, Löschen). Es muss nicht extra erst die Adresse geöffnet werden
- Treffpunktplan, Konflikte mit dem Urlaub werden auch bei eigenen Einträgen rot angezeigt

## [3.8.26] — 2017-07-19

### Neu

- Versionierung für Downloads um den Zwischenspeicher zu erneuern
- Import von Adressen für die deutschen Gebiete

### Geändert

- Import und Export Excel Listen überarbeitet
- Import und Export DB System überarbeitet, Prüfung von Feldern und Usernamen gefixt
- Page Loading wird nicht mehr bei Tab Navigation aktiviert
- Jeder kann den Schulungspunkt bei seiner eigenen Aufgabe sehen
- User Status System überarbeitet. Dieser ist jetzt global und kann nicht mehr einzeln pro Versammlung gepflegt werden
- Straßen Beschreibungen, Anzeige der Infos anders priorisiert
- Vorsitzt exportieren, Formatierung aktualisiert
- Events haben jetzt ein Feld das festhält, wer den Eintrag erstellt hat

## [3.8.25] — 2017-07-18

### Geändert

- Setup für Benutzer, Fehlerkorrektur
- Setup für Straßen, Felder und Logik erweitert

## [3.8.24] — 2017-07-15

### Geändert

- Trolley Layout für Tablets und co. optimiert
- Trolleyrouten können jetzt nur für die eigene Versammlung freigegeben werden. Es tauchen dort nur Personen der eigenen Versammlung in der Auswahl auf

## [3.8.23] — 2017-07-14

### Neu

- Trolley Mobile Ansicht
- Trolleyplan für die Russische Versammlung
- Trolley Konfig zum einstellen der Routen, Namen, Farben etc.
- Option zum Aktivieren und Deaktivieren des Trolleybereichs

### Geändert

- Setup Excel Files aktualisiert
- Backup User exportiert jetzt die gleichen Felder, die auch beim Import verwendet werden
- recaptcha assets von der Login Page entfernt

## [3.8.22] — 2017-07-08

### Geändert

- Export und Public Anzeige von Gebieten überarbeitet. Namen werden nicht mehr gekürtzt, Sprachen werden nicht angemeldeten Personen nicht mehr angezeigt

## [3.8.21] — 2017-07-07

### Behoben

- Usernamen wurden beim speichern des Profils willkürlich geändert

## [3.8.20] — 2017-07-04

### Neu

- Versammlungsplan Historie
- Custom Error Pages

### Behoben

- Username nach der ersten Anmeldung ändern
- Datum beim löschen im Trolley Kalender
- Newsfeed Trolley Ausgabe
- Adresse eintragen, Datum hat den Straßennamen entfernt

## [3.8.19] — 2017-06-21

### Neu

- Jeder kann seinen Benutzernamen selbst ändern, wenn dieser noch nicht vergeben ist
- Online Validierung vom Usernamen und der Email Adresse, damit diese einmalig bleiben
- Adressen per Excel Liste aktualisieren
- Form Validation in fast allen Formularen
- Loading Animation oben recht, wenn die Page neu lädt

### Geändert

- Speed Fix bei größenänderung der Inhalte

## [3.8.18] — 2017-06-18

### Neu

- 2 Gruppen pro Treffpunkt wählbar
- Lehrpunkte, die vom Vorsitzenden eingetragen werden, aktualisieren automatisch das Update Datum, auch wenn kein Punkt geändert wurde

### Geändert

- Fehlerbehebung

## [3.8.17] — 2017-06-16

### Neu

- Feedbackbereich für Rückmeldung und Probleme, Button ist auf der Startseite
- Password Reset Button

### Geändert

- Massenpflege angepasst
- IE Fixes eingebunden; muss noch getestet werden

## [3.8.16] — 2017-06-14

### Neu

- Modal zum Aktualisieren der eigenen Daten und des Kennworts
- Form Validation

### Geändert

- Performance Fix für Firefox Benutzer
- Adress Handling optimiert

## [3.8.15] — 2017-06-13

### Neu

- Eigenen Vorsitz der letzten 4 Wochen anzeigen, um Lehrpunkte nachträglich einzutragen

### Geändert

- Datumsauswahl optimiert
- Modal System erneuert
- Dropdowns und andere Plugins auf den neusten Stand gebracht, UI angepasst
- Darstellung und Nachladen von Responsive Tabellen optimiert
- Von/Bin Datumsauswahl auf Daterange umgestellt
- Performance verbessert

## [3.8.14] — 2017-06-12

### Neu

- Fahrerplan für den Ordnungsdienst, Berechtigung und Anzeige im Plan und der Verwaltung

### Geändert

- Performance der Website
- Plugins ausgetauscht und nicht benötigte Daten entfernt

## [3.8.13] — 2017-06-08

### Neu

- Technik Update im Backend, Switch von grunt/bower/requirejs auf webpack

### Geändert

- Trolleyplan Fehlerbehebung
- Menüpunkte als Dropdown, wenn mehr als 2 Auswahlmölichkeiten in der Navi Leiste angezeigt werden
- Layout der Startseite
- Erweiterung der Massenpflege für User und Berechtigungen

## [3.8.12] — 2017-05-29

### Neu

- Trolley Berechtigungen für Innenstadt und Bahnhof
- Versammlungsplan Lehrpunkte

### Geändert

- Option, die selbständige Gebietsbearbeitung zu deaktivieren
- Adressen, die als PDF ausgegeben werden, haben gekürtze Namen (Datenschutz)
- Vorsitz (Fremdsprache) wird wieder dauerhaft angezeigt

## [3.8.11] — 2017-05-21

### Neu

- Benutzer können bei ihren Gebieten den Bearbeitungsstand selber eintragen
- Benutzer sehen alle freien Gebiete, nur anschauen, nicht zuweisen
- Benutzer können für ihr eigenes Gebiet Freigaben erstellen, um die per App einzuscannen

### Geändert

- Angepasst Berechtigungen für Menüansichten
- Gebietsansichten auf TWIG Templates umgestellt, Code reduziert
- Trolleykalender Eingaben optimiert, Berechtigungen angepasst
- Eigene Termine sind jetzt für alle freigeschaltet

## [3.8.10] — 2017-04-30

### Neu

- Angepasste Berechtigungen, damit Gruppenleiter die Bearbeitungsstände ihrer Gruppe eintragen können
- Abwesenheitsplan, ein bestimmtes Datum kann abgefragt werden, standardmäßig wird jetzt oberhalb der Liste angezeigt, wer aktuell nicht anwesend ist

## [3.8.9] — 2017-04-26

### Neu

- Trolley Erfahrungen
- Trolley Teilnehmer verwalten
- Hinweis in der Timeline für Gebiete, deren Bearbeitung überfällig ist

### Geändert

- Menüstruktur bei Gebieten und Plänen aufgeräumt
- Freie Gebiete haben per Default die Kachelansicht aktiviert
- Admin Benutzerabfragen optimiert, Darstellung von deaktivierten Accounts

## [3.8.8] — 2017-04-25

### Neu

- Trolleyplan mit Richtlinien und News
- Berechtigungen für Trolleyplan Verwaltung und Freischaltung von Personen

### Geändert

- Changelog hat jetzt eine bessere Text Formatierung

## [3.8.7] — 2017-04-20

### Neu

- Treffpunkte können jetzt versammlungsübergreifend erstellt werden

### Geändert

- Darstellung der Mobile Ansicht korrigiert
- Personen können wieder als Treffpunktleiter entfernt werden
- Darstellung der Startseite, App Link ist jetzt in der Leiste

## [3.8.6] — 2017-04-20

### Neu

- Raspberry Pi 3 als Server, neuste Software Updates
- Gebietsstatistik, Fremdsprachen Adressen anzeigen, Verbote anzeigen

### Geändert

- Mobile Ansicht optimiert
- Adressen können jetzt wieder von der zugeordneten Versammlung bearbeitet werden

## [3.8.5] — 2017-04-13

### Neu

- Layout in der Mobile Ansicht optimiert
- Straßennamen der Gebiete können per Geocoding korrigiert werden
- API zum download der Gebietsinformationen (Name, Straßen, Adressen) in die NoteApp

### Geändert

- Kennzeichnung der Adressen in den Gebieten in "Zugeteilt zu" für Adressen der Fremdsprachengruppen und "Sprache" für Adressen, die noch nicht aktiv bearbeitet werden

## [3.8.4] — 2017-03-16

### Neu

- App Download Bereich

### Geändert

- Ausgabe des PD Treffpunkt Orts auf der Startseite und im Newsfeed

## [3.8.3] — 2017-02-17

### Neu

- einmal täglich läuft jetzt ein Skript, dass die offenen Adressen einem Versammlungsgebiet zuweist, solange eine Straße mit Start- und Endhausnummer angegeben ist

### Geändert

- Optimierte Adresszuordnung
- Straßen Pflege in den Gebieten überarbeitet
- Straßenseite als weiteres Feld, zum besseren Zuordnen von Adressen zu Gebieten

## [3.8.2] — 2017-02-16

### Neu

- Meine Gebiete
- Jeder User kann in seinen eigenen Gebieten Verbote und Adressen eintragen, die nicht besucht werden sollen

### Geändert

- Fix beim automatischen setzen der Straßennamen bei Adressen

## [3.8.1] — 2017-01-22

### Neu

- Vorsitz für Fremdsprache im Hauptplan der Versammlung (zB für Vorgruppen)
- Reinigung und Instandhaltung, versammlungsübergreifend

### Geändert

- Anpassung der automatischen Zeiten im Verso-Plan
- Reduzierung der Termine auf der Startseite auf 6
- Rote Hervorhebungen im Plan haben jetzt höhere Prio als rote

## [3.8.0] — 2017-01-06

### Neu

- Versammlungsgruppen für versammlungsübergreifende Informationen wie Reinigung oder Termine
- verschiedene Bereiche der DB sind konfigurierbar (ein und ausblenden)
- Auswahl der Versammlung oder Versammlungsgruppe im Reinigungs und Terminplan

## [3.7.7] — 2017-01-03

### Neu

- Sprachadressen direkt in Gebieten eintragen, die dann als "unzugeordnet" gelistet werden

### Geändert

- Gruppeninfo Treffpunkte und Reinigungen limitiert und abwählbar gemacht
- Fremdsprachen Bugfixes

## [3.7.6] — 2016-12-30

### Neu

- Adressvorschläge in Gebieten für Adressen, die noch nicht zugeordnet wurden

### Geändert

- Layout von freigegebenen öffentlichen Gebieten
- Fehlerbehebungen
- Fremdsprachen Gebietslayout

## [3.7.5] — 2016-12-29

### Neu

- Fremdsprachen Gebiet Layout an das deutsche Layout angeglichen
- Fremdsprachen Statistik

### Geändert

- Fremdsprachen Layout und Konzept Anpassungen
- Verso Plan Attribute wie Dienstwoche sind jetzt auch änderbar
- Diverse Fehlerbehebungen

## [3.7.4] — 2016-12-28

### Neu

- Fremdsprachen Berechtigungssystem
- Parallele Zuweisung von mehreren Fremdsprachen Gruppen für eine Person. Auswahl erfolgt über die Top Navbar
- Fremdsprachen Adressen ohne Gruppe, als Vorbereitung auf Spätere Sprachgruppen

### Geändert

- Layout und Menü Anpassungen
- Alte Berechtigungen entfernt

## [3.7.3] — 2016-12-27

Neu: Top Suche markiert den gespeicherten Suchtext beim öffnen, damit er direkt überschrieben werden kann
Neu: Fremdsprache hat wieder den Filter "Sprachen", um Adressen ohne passende Sprachgruppe bereits jetzt zuordnen zu können
Update: QR Code Link beim teilen von Gebieten wurde gefixt
Update: Einträge auf der Startseite auf 10 reduziert
Update: Datums Format bei Gebieten korrigiert

## [3.7.2] — 2016-12-09

Neu: Icon Update, sollte jetzt selbsterklärender sein
Neu: Termine auf der Startseite auf 15 limitiert
Neu: Plan - Eigene Pläne - Meine Termine
Update: Gebiets Export gefixt, hatte ein Limit von 20 gesetzt
Update: UTF8 Fix bei substr im Plan
Update: Termine Enddatum wurde nicht gesetzt

## [3.7.1] — 2016-12-07

Versammlungsplan:

### Neu

- Wichtige Termine mit verschiedenen Stufen, wer die Termine sehen kann (Alle, Diener, Älteste). Die Berechtigungen dafür werden in den Einstellungen des Users gesetzt.
- Newsfeed auf der Startseite
- Termindarstellung auf der Startseite
- Termin Export als PDF Allgemein:

### Geändert

- Globale Suche optimiert
- UI aktualisiert
- Setup Vorlagen überarbeitet. Fremdsprachengebiete können jetzt direkt Bearbeitungsstand und eine Person setzen

## [3.7.0] — 2016-12-06

Allgemein:

### Neu

- Globale Suche in der oberen Leiste Versammlungsplan:
- schickere Timeline auf dem Dashboard
- Counts in Session ausgelagert, DB Abfragen minimiert

### Geändert

- Urlaubserkennung korrigiert
- DB Abfragen optimiert, Performance verbessert Gebiete / Fremdsprache:
- Ajax Calls korrigiert

## [3.6.8] — 2016-12-05

Versammlungsplan

### Neu

- Verbote direkt beim jeweiligen Straßennamen hinzufügen
- Druck Warteschlange
- Druck als A4 und Gebietskarte

### Geändert

- Formatierung der Spalten in der Dienstwoche
- Zeiten der Versammlung jetzt auch bei weiteren Aufgaben Gebiete:
- Share/Druck erfolgt jetzt über Ajax, kein Reload mehr nötig
- Automatisches aktualisieren des Share Counts Fremdsprachen:
- Menü aufgeräumt
- Berechtigungen angepasst

## [3.6.7] — 2016-11-16

Versammlungsplan

- Neu: Titel der Aufgaben sind jetzt frei editierbar

System

- reCaptcha Abfrage testweise deaktiviert, da diese unter verschiedenen Situationen die Bilderabfrage nicht angenommen hat

## [3.6.6] — 2016-10-27

Gebiete:

### Geändert

- Gebietsmappe kann wieder aufgerufen werden, DB Fehler korrigiert
- Druck der Gebietskarten Inlays mit den vorhandenen Adressen hat eine einheitliche Größe, selbst wenn Inhalte mehrzeilig sind

## [3.6.5] — 2016-10-21

Versammlungsplan

### Neu

- Startzeit der einzelnen Aufgaben für die Versammlung unter der Woche. Beim Anlegen des Tages muss nur die entsprechende Uhrzeit zusammen mit dem Datum angegeben werden

### Geändert

- Datum ist nachträglich änderbar
- Plan Export Layout überarbeitet, Leser wird jetzt mit dargestellt

## [3.6.4] — 2016-10-20

Versammlungsplan

### Neu

- Ordnungsdienstplan online und als Export

### Geändert

- Leser taucht jetzt in der Online Anzeige und Bearbeitung unterhalb des Programmpunkts (VBS, WT) auf, nicht mehr beim Ordnungsdienst. PDF Export kommt noch, da eine Layout Anpassung erfolgen muss
- Personen die eine Abwesenheit eingetragen haben, nachdem sie bereits im Plan gesetzt wurden, werden jetzt in allen Plänen rot markiert Gebiete:
- Alle Gebietslisten sind jetzt sortierbar. Die Sortierung wird beim Export der Liste über das PDF Symbol oben rechts berücksichtigt
- Suchergebnisse können als Liste exportiert werden

## [3.6.3] — 2016-10-16

Gebiete

### Neu

- Gebietskarten Inlays für "Nicht besuchen". Blanko Vorlagen sowie im Druckcontainer und für alle Gebiete. Bereits eingetragene Adressen werden mit aufgedruckt.

### Geändert

- Gebietsbearbeitung umbenannt. Vorher "Update", jetzt "Bearbeitet"

## [3.6.2] — 2016-10-14

Sicherheit / System

### Neu

- Erweiterte Online-Anzeige

### Geändert

- "Angemeldet bleiben" läuft jetzt endlich
- reCaptcha läuft und triggert nur beim ersten mal, nicht bei remember_me
- Excel Vorlagen im Setup Bereich aktualisiert
- Optionale Parameter im Setup-Bereich gesetzt

## [3.6.1] — 2016-10-13

Sicherheit / System

### Geändert

- Bugfixes für reCaptcha und co.
- Fehlerhafte libxml ausgetauscht und manuellen Bugfix vorgenommen

## [3.6.0] — 2016-10-12

Sicherheit / System

- Sicherheit: reCaptcha Integration beim Login
- Sicherheit: "Angemeldet bleiben" sollte jetzt funktionieren

## [3.5.9] — 2016-10-10

Fremdsprachen

### Neu

- Bearbeitungsstatistik bei Fremdsprachen-Gebieten
- Prozentuale Bearbeitung eines Fremdsprachen-Gebiets

### Geändert

- Adressbearbeitung und Ansicht Versammlungsplan
- Versammlungsplan Menü aktualisiert

## [3.5.8] — 2016-10-05

### Neu

- Verbote als Adressen in den Gebieten hinterlegen und verwalten
- Anzeige aller Verbote der Versammlung

### Geändert

- Versammlungs-Statistik, Status Abfragen entfernt und Anzahl Verbote/Fremdsprachige Adressen hinzugefügt
- Layout Anpassungen der PDF Ausgaben der Gebietskarten/A5 Drucke

## [3.5.7] — 2016-10-04

### Neu

- Export aller Gebietskarten für den Gebietsdruck als PDF
- Gebietskarten mit QR Code, wenn Gebiete freigegeben sind

### Geändert

- Fremdsprachen Gebiete beim Druck mit QR Code

## [3.5.6] — 2016-10-02

### Neu

- Versionierung im Deployment um Browser Cache zu umgehen
- Fremdsprachen Gebietsfreigaben per QR-Code
- Fremdsprachen Gebietsausdruck mit Karte
- Versammlungsplan Gruppeninfo Editor um mehr Optionen erweitert

### Geändert

- Versammlungsplan Gruppeninfo Layout anpasst

## [3.5.5] — 2016-09-29

### Neu

- Filter für die Termine auf der Startseite

### Geändert

- Fremdsprachen Gebiete Bearbeitung mit Historie
- Unnötige Einträge für Sprach- und Versammlungsauswahl aus Fremdsprache entfernt

## [3.5.4] — 2016-09-23

### Neu

- Vorlage zum Druck von Gebietskarten

### Geändert

- Abhängigkeit der Zuordnung von Benutzern zu Gruppen und Status entfernt. Gruppen und Status sind optional.

## [3.5.3] — 2016-09-21

### Neu

- Update der Gebietsbearbeitung per Ajax Request im Bereich "Statistik - Bearbeitung"
- Fremdsprachen Gebiete haben jetzt wie im normalen Gebiet eine Bearbeitungshistorie
- Update der Fremdsprachen-Gebietsbearbeitung per Ajax Request im Bereich "Fremdsprachen - Gebiete - Anzeigen"

## [3.5.2] — 2016-09-19

### Neu

- Versammlungsplan für Sprachgruppen
- Export aller Daten per Excel Dokument
- Auswahl der Personen Treffpunkte leiten können
- Anzeige der eigenen Treffpunkte auf dem Startbildschirm
- Konflikte der eigenen Termine mit Einträgen im Abwesenheitsplan werden auf dem Startbildschirm rot hervorgehoben

### Geändert

- Einträge in der Termin-Übersicht können jetzt angeklickt werden und öffnen den entsprechenden Eintrag im jeweiligen Plan
- Unnötige Felder aus Fremdsprachen-Adressen entfernt (Herkunft/Sprache)
- Anzeige der Datumsauswahl korrigiert und auf deutsch angepasst

## [3.5.1] — 2016-09-17

### Geändert

- einheitliches Layout der Aktions-Buttons innerhalb von Tabellen
- einheitliches Tabellen Layout und Verhalten bei vielen Spalten auf kleinen Bildschirmen
- Verknüpfung und Links zu Gebiete/Adressen visuell durch Buttons kenntlich gemacht

## [3.5.0] — 2016-09-15

### Neu

- Setup-Wizard zum Import der Versammlungs-Stammdaten per Excel
- Setup-Wizard zum Import von Gebieten und Adressen im Fremdsprachen Bereich

### Geändert

- Leserplan Bearbeitung berichtigt jetzt den Abwesenheitsplan für jeden Eintrag in der Massenpflege
- Gruppeninfo hat jetzt die Auswahl, ob zusätzlich die Versammlungstreffpunkte mit angezeigt werden sollen
- Security Update der Route durch setzen der richtigen HTTP Methode
- Vendors auf die aktuelle Version angehoben

## [3.4.2] — 2016-09-09

- Berechtigungsmodel für Fremdsprachen optimiert um die Vergabe und Pflege der Zugriffe zu vereinfachen
- Aufteilung in fremdsprachigen Gruppen mit Zugehörigkeit zu einer Versammlung und Fremdsprachen als Filter
- eigene Gebietskarten für Fremdsprachige Gebiete
- Problem beim Dateiupload für Gebieskarten (Normal/Fremdsprache) behoben

## [3.4.1] — 2016-09-07

- Fremdsprachen "Sprache" zu "Gruppen" geändert, da das System noch nicht aufgeht
- unnötige Felder in Adressen entfernt
- Datenbankfelder nach dem neuen Schema umbenannt und Felder neu gesetzt

## [3.4.0] — 2016-09-01

Zusätze wie `:1234/app.php` müssen nicht mehr eingegeben werden.

## [3.3.4] — 2016-08-21

- Reinigungsplan integriert
- Reinigungsplan PDF Export
- Anzeige der Reinigungstermine für die eigene Gruppe auf dem Startbildschirm

## [3.3.3] — 2016-08-14

- Adressen werden jetzt per Update dazugehörigen Versammlungs-Gebieten zugewiesen
- Aktualisierung der Gebiets-PLZ per Geocoding
- "Meine Termine" direkt auf der Startseite anzeigen
- Layout Fixes

## [3.3.2] — 2016-08-06

- Sprachgebiete als PDF exportieren
- Sprachsystem Lese-, Schreib- und Admin-Berechtigungen
- Fehlerbehebung

## [3.3.1] — 2016-07-19

- Einträge im Versammlungsplan werden ROT hervorgehoben, falls es einen Konflikt mit einer nachträglich eingetragenen Abwesenheit gibt
- Fremdsprachen können mit allen Adressen als PDF exportiert werden
- DB Abrufe optimiert (Performance)

## [3.3.0] — 2016-06-15

- Fremdsprachen System
- Verbot-System in den Gebieten (basierend auf dem Adress-System)
- Pflege der Stadt/PLZ bei den Gebieten um erweiterte Abfragen durchführen zu können
- Google Maps Integration für die Adress-Anzeige
- Google Reverse-Geocoding für setzen von fehlenden PLZ in den Adressen
- Fix für die Gebietsfreigabe
- Minimierung von Stylesheets und Kompression beim Ausliefern der Daten
- Neues Logo (Ganz wichtig :D)

## [3.2.0] — 2016-05-23

- Fremdsprachen System
- Urlaubsplan umbenannt in Abwesenheitsplan

## [3.1.0] — 2016-05-05

- Urlaubsplan / -verwaltung
- Benutzer können eigenen Urlaub eintragen
- Urlaub sperrt den User für das Setzen im Versammlungsplan

## [3.0.0] — 2016-04-02

- Datenbank System neu entwickelt
- Multi DB zu einer DB migriert
- Admin DB in User DB migriert

## [2.1.1] — 2016-03-19

- aktualisierte Layouts für den Vortrags- und Predigtdienstplan
- Option zum hervorheben für Vorträge
- Fehlerbehebung bei paralleler Benutzung von mehreren Versammlungen

## [2.1.0] — 2016-01-19

- neue Berechtigungen für "Versammlungsplan mi Lehrpunk"
- Verknüpfung des Admin Kontos mit einem DB User
- Farbige Markierung der eigenen Versammlungsplan Einträge
- Farbiger Versammlugsplan parallel zum Arbeitsheft
- Fehler beim seletierten PDF Export behoben
- Usernamen Formatierung korrigiert

## [2.0.0] — 2015-12-27

- Versammlungs Admins können weitere Admins anlegen und Rechte verteilen
- weitere Gebeitsberechtigung für Gruppenleiter (Daten durchsuchen, Gebiete zuweisen und als bearbeitet markieren)
- einzel PDF Export eines Gebiets
- Admin pflege optimiert
- Vortragsliste als PDF exportieren
- alle 3 Module (Gebiete, Plan, Treffpunkte) können per Berechtigung ein und ausgeblendet werden

## [1.9.0] — 2015-12-13

- Dienstplan Layout
- Dienstvortrags Thema
- Anfangs und Schluss Gebet pflegbar
- Berechtigung zur Darstellung des Lehrpunkts

## [1.8.0] — 2015-12-01

- Tootip Beschriftung der Titel im Bereich "Versammlungsplan > Benutzer verwalten"
- Änderung der Berechtigung zum pflegen der Gesprächvorschläge

## [1.7.0] — 2015-11-29

- Versammlungsplanverwaltung
- Berechtigungssystem
- Bibellesung wird jetzt vom Leben und Dienst Aufseher verwaltet
- Treffpunkte können jetzt mit einer eigenen Berechtigung verwaltet werden

## [1.6.0] — 2015-08-03

- Aktion Bearbeitungsstatus
- Gebietswechsel Quotient für priorisierte Ausgaben

## [1.5.0] — 2015-07-06

- Gebietsfreigaben über QR Codes oder Link
- Berechtigungssystem erweitert
- Aufdruck des QR Codes auf den A5 Gebietskarten
- Systemwechsel auf Debian Jessie

## [1.4.0] — 2015-06-23

- JS optimierung
- Performance optimierung
- APC Cache

## [1.3.0] — 2015-06-18

- Security Update
- Image Upload optimierung
- Layout Fixes

## [1.2.0] — 2015-06-16

- Berechtigungssystem
- Karteikarten Bericht als View und PDF
- Versammlungen als DB Objekt
- User Management
- Layout Updates
- Performance Updates

## [1.1.0] — 2015-06-07

Daten laufen jetzt auf dem neuen Server

## [1.0.3] — 2015-06-05

- Neues Feld: Gebiets Koordinaten
- Beim Klick auf das Gebietsbild wird die Adresse aus den Koordinaten bei Google Maps gesucht
- Fix JS, Stabilität
- Fix Image Update Bug

## [1.0.2] — 2015-06-04

- Image Upload in der Gebietsansicht
- Placeholder Image für Gebiete ohne Karte

## [1.0.1] — 2015-06-03

- Daten / Übersicht (Karteikarten) mit einer Ansicht wie in den Papierkarten für den KA

## [1.0.0] — 2015-06-02

- Gast Modus
- Gebiete können Beschreibungen bekommen, die bei der Suche mit einbezogen werden (Gebäude, PLZ, Stadtteil)
- mobile Optimierung
- PDF Export
