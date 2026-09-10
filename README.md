<div align="center">

<!-- BILD: bilder/logo.png — public/new_logo.png auf ~160 px verkleinert -->

# VAPP

**Alles, was eine Versammlung braucht**

Zusammenkünfte, Gebiete und der Trolley — geplant in einer Anwendung,
die auf eurem eigenen Server steht.

![Lizenz](https://img.shields.io/badge/Lizenz-PolyForm_Noncommercial_1.0.0-0b7285)
![Plattform](https://img.shields.io/badge/Plattform-amd64%20%C2%B7%20arm64-495057)
![Technik](https://img.shields.io/badge/Symfony_8.1-PHP_8.5-6741d9)
![Betrieb](https://img.shields.io/badge/Betrieb-selbst%20gehostet-2b8a3e)

</div>

<!-- BILD: bilder/zusammenkuenfte.png — eine geplante Woche im Zeitplan, Aufgaben besetzt -->

VAPP ist die Datenbank einer Versammlung: Gebiete, Versammlungsplan, Trolley, Bericht und
Fremdsprachengruppe an einer Stelle, auf einem eigenen Server und ohne fremden Dienst dazwischen.
Es hält fest, was sonst auf Zetteln und in Tabellen liegt — und es gehört der Versammlung, weil es
auf ihrem Rechner läuft und nirgendwo sonst.

> _English: VAPP is a self-hosted application for planning a congregation's meetings, territories
> and public-witnessing cart. The interface ships in German, English, Greek and Russian; this page,
> the setup guide and the planning documents are German. Images:
> `ghcr.io/rbnet-apps/vapp-app` and `…/vapp-web`, for `linux/amd64` and `linux/arm64`._

## In zwanzig Minuten steht die Versammlung

Kein Konto bei irgendwem, keine Anmeldung, kein Vertrag. Ein Rechner mit Docker, ein Befehl, der die
Dateien holt, ein Einrichtungsskript, das jede Frage einzeln stellt und **jeden Schlüssel selbst
erzeugt** — danach führt ein Assistent durch die Ersteinrichtung: Versammlung, Zusammenkunftszeiten,
Personen, Bereiche. Niemand muss vorher wissen, wie Docker, Symfony oder eine Datenbank funktioniert.

## Für wen

- **Eine Versammlung, die ihre Planung selbst in der Hand behalten will.** Ein Rechner, eine
  Datenbank, eine Versammlung — es gibt keinen Mandantenumschalter und keinen Anbieter dahinter.
- **Die, die einteilen**: Koordinator, Dienstaufseher, Gebietsdiener, Trolley-Verantwortliche.
- **Alle anderen**, die nur nachschlagen wollen, wann sie dran sind — auf dem Handy, als App
  installiert, mit Benachrichtigung.

**Wofür nicht:** VAPP ist **kein offizielles Werkzeug der Organisation** und ersetzt keins. Und es
ist keine Verwaltung für einen ganzen Kreis aus einer Hand — mehrere Versammlungen teilen sich
höchstens einen Saal, nicht eine Anlage.

## Was es kann

### 🔐 Eigener Betrieb, eigene Daten

**Selbst gehostet.** Die Anlage läuft auf einem Rechner der Versammlung oder einem kleinen gemieteten
Server. Es gibt keinen Dienst dazwischen, der mitliest, und keine Rechnung.

**Anmeldung mit Passkey.** Fingerabdruck, Gesicht oder Geräte-PIN statt Passwort. Den ersten Zugang
bekommt jeder als Einladung auf einem Zettel — ein QR-Code, der einmal gilt.

**Jeder sieht, was er braucht.** Berechtigungen hängen an Rollenvorlagen und lassen sich je Person
abweichen; wer einer Trolley-Route zugewiesen wird, sieht den Bereich dadurch schon.

<!-- BILD: bilder/berechtigungen.png — Berechtigungsmatrix einer Person, Vorlage und Abweichung -->

### 🗓️ Zusammenkünfte planen

**Der Arbeitsheft-Import.** Das ePub wird eingelesen und legt die Zusammenkünfte der Wochen mit
ihren Teilen an — gelesen wird die **Struktur** des Hefts, nicht seine Wörter, damit ein geänderter
Wortlaut den Import nicht zerlegt.

**Der Planungsassistent.** Für Ordnungsdienst und die wiederkehrenden Aufgaben schlägt VAPP eine
ganze Woche auf einmal vor; ändern kann man jede Zeile einzeln.

**Vorschläge, die schon sortiert sind.** Vorne steht, wer lange nicht dran war und die passende
Qualifikation hinterlegt hat — die Liste kennt den letzten und den nächsten Einsatz jeder Person.

### 🗺️ Gebiete

**Karten selbst zeichnen.** Gebietsgrenzen werden im Kartenwerkzeug gezogen, nicht in einem
Grafikprogramm — mit Anschriftenliste daneben.

**Der Kartenanbieter ist eine Wahl.** OpenStreetMap weltweit oder das Bundesamt für Kartographie und
Geodäsie für Deutschland. Wer die Karte liefert, steht namentlich in der Datenschutzerklärung.

**Verkündiger übernehmen selbst.** Wer will, gibt den Verkündigern die eigene Gebietsansicht: sehen,
was sie haben, Bearbeitung eintragen, zurückgeben. Optional — es geht auch alles über den
Gebietsdiener.

<!-- BILD: bilder/gebietskarte.png — Gebietskarte mit gezeichneter Grenze und Anschriftenliste -->

### 🏛️ Rund um den Saal

**Abwesenheitsplan.** Wer weg ist, trägt es ein; die Einteilung merkt den Konflikt, bevor er im Plan
steht.

**Raumbelegung, Reinigung, Instandhaltung.** Haupt-, Zwischen- und Übergabereinigung, wer welchen
Raum wann hat, und was zu tun ist.

**Geteilter Saal, geteilter Plan.** Versammlungen, die sich einen Saal teilen, treten einer Gruppe
bei und stellen Reinigungspläne und allgemeine Angaben versammlungsübergreifend bereit.

<!-- BILD: bilder/raumplan.png — Raumbelegung oder Reinigungsplan über mehrere Wochen -->

### 🛒 Öffentliches Zeugnisgeben

**Eigene Routen und Standorte.** Schichten werden einmal eingerichtet und laufen danach von selbst
weiter; Literatur und Ausstattung hängen an der Route.

**Selbst eintragen.** Wer mitmacht, bucht seine Schicht selbst — die Verantwortlichen sehen den Stand,
statt Listen zu führen.

**Dienstwochen mit allem, was dazugehört.** Die besondere Woche wird als Ganzes geplant, samt der
Ausdrucke, die sie braucht.

![Der Trolley-Kalender mit Bereichswechsler und Bereichsmenü](https://raw.githubusercontent.com/rbnet-apps/vapp/main/media/trolley-calendar.png)

### 📣 Erreichen und Überblick

**Push und E-Mail.** Beides einzeln im Profil einstellbar. Benachrichtigt wird, wen es betrifft.

**Eilmeldungen an alle.** Wenn es einmal wirklich alle angeht, geht die Ansage an alle — als
Nachricht, die man nicht übersieht.

**Auswertungen.** Wer wann zuletzt eingeteilt war, was offen ist, was sich häuft. Dazu ein
Kalender-Abo, das die eigenen Termine in die Kalender-App des Handys legt.

<!-- BILD: bilder/statistik.png — eine Auswertung mit letztem und nächstem Einsatz -->

**Alle Funktionen im Einzelnen: [FUNKTIONEN.md](FUNKTIONEN.md).**

## Was gebraucht wird

- Ein **Linux-Rechner mit Docker** und dem Compose-Plugin. Ein kleiner gemieteter Server oder ein
  Rechner im Versammlungsnetz reicht; x86-64 und arm64 laufen beide.
- Ein **Domänenname**, der auf diesen Rechner zeigt.
- Ein **TLS-Zertifikat**. VAPP bringt einen Reverse Proxy mit und holt es selbst bei Let's Encrypt —
  wer schon nginx oder Traefik davor hat, hängt es dahinter.
- Ein **SMTP-Zugang** — der Mailanbieter, den die Versammlung ohnehin benutzt.
- Etwa **zwanzig Minuten**.

> **Zwei Dinge entscheiden vorher über Ja oder Nein.**
>
> **Eine IP-Adresse genügt nicht.** Passkeys verlangen einen Domänennamen und eine gesicherte
> Verbindung — der Browser führt die Anmeldung sonst gar nicht erst aus.
>
> **Ohne SMTP keine Einladungen.** VAPP läuft, aber es kann niemanden per Mail einladen und kein
> Passwort zurücksetzen — auch nicht das eigene.

## Loslegen

Alles, was zum Betrieb gehört — Compose-Datei, Einrichtungs-, Start-, Sicherungs- und
Rückspielskript und die vollständige Anleitung — steckt **im Image**. So gehören Bündel und
Anwendung derselben Fassung an.

```bash
mkdir -p ~/vapp && cd ~/vapp
docker run --rm ghcr.io/rbnet-apps/vapp-app:latest tar -C /opt/vapp-bundle -cf - . | tar -xf -
./setup.sh
./start.sh
```

Danach im Browser **`https://<domäne>/commissioning`** aufrufen und das Betreiberkonto anlegen.

> **Jetzt, nicht später.** Solange kein Konto existiert, kann jeder, der die Adresse kennt, dieses
> Formular ausfüllen und damit Betreiber dieser Anlage werden. Das Fenster ist kurz, aber es
> schließt sich erst, wenn das Formular abgeschickt ist.

> ⚠️ **Ein Schlüssel muss aufbewahrt werden.** `NOTES_ENCRYPTION_KEY` verschlüsselt die Notizen in der
> Datenbank. Eine Sicherung, die ohne ihn zurückgespielt wird, hat Notizen, die niemand mehr lesen
> kann — nicht die Versammlung, nicht der Verfasser, niemand. `setup.sh` sagt das in dem Augenblick,
> in dem es ihn erzeugt.

**Die ganze Anleitung ist [SELFHOST.md](SELFHOST.md)** — die fünf Schritte, die Sicherungen, was zu
tun ist, wenn etwas klemmt. Sie liegt auch im entpackten Bündel und wird dort gepflegt.

## Die Images

| Image                         | Was darin ist                                                                        |
| ----------------------------- | ------------------------------------------------------------------------------------ |
| `ghcr.io/rbnet-apps/vapp-app` | die Anwendung — PHP-FPM, die Konsole und das Betriebsbündel unter `/opt/vapp-bundle` |
| `ghcr.io/rbnet-apps/vapp-web` | nginx davor, mit den gebauten Oberflächendateien                                     |

Beide für **`linux/amd64` und `linux/arm64`** — ein gemieteter x86-Server und ein Raspberry Pi laufen
gleich gut. `latest` ist die aktuelle Fassung; daneben steht jeder Bau unter seinem Commit, zum
Festnageln und zum Zurückgehen. MySQL und Redis sind nicht in diesen Images — sie kommen daneben
hoch, aus der Compose-Datei im Bündel.

## Womit es gebaut ist

| Schicht          | Was                                                                |
| ---------------- | ------------------------------------------------------------------ |
| Anwendung        | Symfony 8.1, PHP 8.5, Doctrine ORM 3                               |
| Oberfläche       | Twig serverseitig, Stimulus, TypeScript, SCSS, Bootstrap 5.3       |
| Auslieferung     | PWA — installierbar, Service Worker, Web Push. Keine native Hülle. |
| Datenbank        | MySQL 8.4                                                          |
| Zwischenspeicher | Redis, Symfony Messenger                                           |
| PDF              | Gotenberg (Chromium)                                               |

## Lizenz

VAPP ist **source-available**, nicht Open Source: [PolyForm Noncommercial 1.0.0](LICENSE) mit einem
Zusatz. Kurz gesagt —

- **Benutzen, verändern, weitergeben** ist erlaubt. Die Grenze liegt beim **Einsatz**, nicht beim
  Kopieren.
- **Nicht kommerziell** — aber die **eigenen Kosten zu decken**, wenn man für andere Versammlungen
  hostet, ist ausdrücklich erlaubt. Das ist der Hauptfall und steht in der Lizenz.
- **Weiterverkaufen, unterlizenzieren oder ein gewinnorientiertes Dienstangebot** daraus machen:
  nicht erlaubt.

Die Nutzungsgrenze schließt ein Einsatzgebiet aus, darum ist die Lizenz nicht OSI-anerkannt und
GitHub zeigt „Other". Das ist bei PolyForm normal, und **source-available** ist das zutreffende Wort.

## Quelltext

Der Quelltext ist **noch nicht veröffentlicht** — vorerst gehen die Images hinaus, das Repository
folgt. Bis dahin liegen hier diese Seite, die Lizenz und die Anleitung, und das Bündel im Image ist
der Weg zu den Betriebsdateien.

## Ein Sicherheitsproblem gefunden?

**Bitte kein öffentliches Issue.** Der Knopf _Report a vulnerability_ im Reiter _Security_ dieses
Repositorys öffnet eine Meldung, die nur der Betreuer lesen kann. Wer ihn nicht sieht, schreibt an
die Adresse aus der Zeile `Required Notice:` der [LICENSE](LICENSE), Betreff `vapp security`.
Einzelheiten in [SECURITY.md](SECURITY.md).

---

<div align="center">

VAPP wird von Brüdern in ihrer Freizeit entwickelt.
Es ist kein offizielles Werkzeug der Organisation.

</div>
