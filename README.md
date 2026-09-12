<div align="center">

<!-- BILD: bilder/logo.png — public/new_logo.png auf ~160 px verkleinert -->

# VAPP - die Versammlungs-App

**Alles, was eine Versammlung braucht**

Zusammenkünfte, Gebiete und Trolley — geplant in einer Anwendung, die auf eurem eigenen Server liegt.

![Lizenz](https://img.shields.io/badge/Lizenz-PolyForm_Noncommercial_1.0.0-0b7285)
![Plattform](https://img.shields.io/badge/Plattform-amd64%20%C2%B7%20arm64-495057)
![Technik](https://img.shields.io/badge/Symfony_8.1-PHP_8.5-6741d9)
![Betrieb](https://img.shields.io/badge/Betrieb-selbst%20gehostet-2b8a3e)

</div>

<!-- BILD: bilder/zusammenkuenfte.png — eine geplante Woche im Zeitplan, Aufgaben besetzt -->

VAPP ist die zentrale Anlaufstelle einer Versammlung:
Gebiete, Versammlungspläne, Trolley-Planung, PD Berichte und
Sprachengruppen.

Statt Zetteln und verteilten Tabellen — alles an einer Stelle; digital und immer aktuell. Und es gehört der Versammlung, weil es auf einem eigenen Server läuft und nirgendwo sonst.

> _English: VAPP is a self-hosted application for planning a congregation's meetings, territories
> and public-witnessing cart. The interface ships in German, English, Greek and Russian; this page,
> the setup guide and the planning documents are German. Images:
> `ghcr.io/rbnet-apps/vapp-app` and `…/vapp-web`, for `linux/amd64` and `linux/arm64`._

## In zwanzig Minuten ist die Versammlung erstellt

Kein Konto bei irgendwem, keine Anmeldung, kein Vertrag. Ein Rechner mit Docker, ein Befehl, der die
Dateien holt, ein Einrichtungsskript, das alles Benötigte abfragt und **jeden Schlüssel selbst
erzeugt** — danach führt ein Assistent durch die Ersteinrichtung: Versammlung, Zusammenkunftszeiten,
Personen, Bereiche. Niemand muss vorher wissen, wie Docker oder eine Datenbank funktioniert.

## Für wen

- **Selbstverwaltung, Datenhoheit.** Eine Versammlung, die ihre Planung selbst in der Hand behalten will.
- **Planer**: Koordinator, Dienstaufseher, Gebietsdiener, Trolley-Verantwortliche.
- **Alle anderen**, die schauen, wann sie eingeplant sind, ihr Gebiet bearbeiten wollen oder Trolleydienst eintragen — als WebApp installiert, mit Benachrichtigung und Kalender-Abo

**Wofür nicht:** VAPP ist **kein offizielles Werkzeug der Organisation** und ersetzt keins.

## Was die VAPP kann

### 🔐 Eigener Betrieb, eigene Daten

**Selbst gehostet**

- Die Anwendung läuft bei dir auf einem Rechner, bei einem Bruder der Versammlung oder einem beliebigen Server. Es gibt keinen kostenpflichtigen Dienst dazwischen, der mitliest, und keine Rechnung.

**Anmeldung mit Passkey**

- Fingerabdruck, Gesicht oder Geräte-PIN statt Passwort. Den ersten Zugang
  bekommt jeder als Einladung auf einem Zettel — ein QR-Code, der einmal gilt.

**Jeder sieht, was er braucht**

- Berechtigungen hängen an Vorrechten und Aufgaben und lassen sich indivuduell anpassen.

<!-- BILD: bilder/berechtigungen.png — Berechtigungsmatrix einer Person, Vorlage und Abweichung -->

### 🗓️ Zusammenkünfte planen

**Arbeitsheft/Wachtturm-Import**

- Das ePub wird eingelesen und legt die Zusammenkünfte an. Lieder, Themen und Programmteile werden automatisch erstellt. Es muss nur noch die Planung der Aufgaben erfolgen.

**Planungsassistent**

- Der Ordnungsdienstplan kann automatisiert erstellt werden. Die Planung erfolgt basierend auf der Verfügbarkeit der Personen und Häufigkeit der letzten Dienste.

**Vorsortierte Vorschläge**

- Oben steht, wer lange nicht dran war und für diese Aufgabe freigegeben ist. Die Auswahl kennt den letzten und den nächsten Einsatz jeder Person und zeigt es direkt mit an.

### 🗺️ Gebiete

**Karten erstellen**

- Gebietsgrenzen werden im Kartenwerkzeug gezeichnet. Es wird kein separates Grafikprogramm benötigt. Online Anzeige oder Druck per PDF als Gebietskarte.

**Kartenanbieter nach Wahl**

- OpenStreetMap weltweit oder das Bundesamt für Kartographie und Geodäsie für Deutschland. Jeder kann optional seinen eigenen Standort in der Gebietskarte anzeigen.

**Gebiet teilen**

- Scanne den QR Code des Gebiets und teile es temporär mit deiner Gruppe. Einfache und sichere Freigabe für eine gemeinsame Bearbeitung.

**Eigenständige Bearbeitung**

- Eigenes Gebiet sehen, Adressen eintragen oder die Bearbeitung aktualisieren. Optional — es geht auch alles über den Gebietsdiener. Einfach per Parameter einstellen.

**Dienstwochen mit allem, was dazugehört**

- Die besondere Woche wird als Ganzes geplant, samt der
  Ausdrucke, die sie braucht. Planung er verfügbaren Gebiete, benötigte Ausdrucke und einer Übersichtkarte - alles in einer eigenen Ansicht.

<!-- BILD: bilder/gebietskarte.png — Gebietskarte mit gezeichneter Grenze und Anschriftenliste -->

### 🏛️ Rund um den Saal

**Abwesenheitsplan**

- Wer weg ist, trägt es ein; die Planungsassistenten berücksichtigen es direkt bei den Vorschlägen.

**Raumbelegung, Reinigung, Instandhaltung**

- Haupt-, Zwischen- und Übergabereinigung, wer welchen
  Raum wann belegt und digitale Arbeitsblätter für die Instandhaltung.

**Geteilter Saal, geteilter Plan**

- Versammlungen, die sich einen Saal teilen, treten einer Versammlungs-Gruppe
  bei und stellen Reinigungspläne und allgemeine Angaben versammlungsübergreifend bereit.

<!-- BILD: bilder/raumplan.png — Raumbelegung oder Reinigungsplan über mehrere Wochen -->

### 🛒 Trolley-Planung

**Eigene Routen und Standorte**

- Schichten und Zeiten werden einmal eingerichtet und laufen danach von selbst weiter; optionales Eintragen von Abgaben.

**Selbständige Planung**

- Wer einer Route zugeteilt wurde, bucht seine Schicht selbst — die Verantwortlichen sehen den Stand, statt Listen zu führen.

**Statistik**

- Verschaffe dir schnell einen Überblick, welche Route wie oft gebucht wird, welche Zeite besonders gefragt sind oder in welchen Sprachen Abgaben erfolgen.

<!-- ![Der Trolley-Kalender mit Bereichswechsler und Bereichsmenü](https://raw.githubusercontent.com/rbnet-apps/vapp/main/media/trolley-calendar.png) -->

### 📣 Kommunikation und Überblick

**Push und E-Mail**

- Beides einzeln im eigenen Profil einstellbar. Benachrichtigt wird nur, wen es jeweils betrifft.

**Eilmeldungen**

- Versende eine Info an alle oder bestimmte Personengruppen — als Nachricht, die man nicht übersieht.

**Kalender-Abo**

- Verpasse keine Termine mehr. Aboniere die eigenen Einträge direkt in deiner Kalender-App des Handys oder Computers.

<!-- BILD: bilder/statistik.png — eine Auswertung mit letztem und nächstem Einsatz -->

**Alle Funktionen im Einzelnen: [FUNKTIONEN.md](FUNKTIONEN.md).**

## Die Technik - was gebraucht wird

- Ein **Linux-Rechner mit Docker** und dem Compose-Plugin. x86-64 und arm64 laufen beide.
- Eine eigene **Domain**, die auf diesen Rechner zeigt.
- Ein **TLS-Zertifikat**. VAPP bringt einen Reverse Proxy mit und holt es selbst bei Let's Encrypt —
  wer schon nginx oder Traefik davor hat, hängt es dahinter.
- Ein **SMTP-Zugang** zum versenden der Mails aus der VAPP.
- Etwa **zwanzig Minuten** für die Ersteinrichtung.

> **Hinweis:**
>
> **Eine IP-Adresse genügt nicht.** Passkeys verlangen einen Domänennamen und eine gesicherte
> Verbindung — der Browser führt die Anmeldung sonst gar nicht erst aus.
>
> **Ohne SMTP keine Einladungen.** VAPP läuft, aber es kann niemanden per Mail einladen und kein
> Passwort zurücksetzen — auch nicht das eigene.

## Loslegen

Alles, was zum Betrieb gehört — Compose-Datei, Einrichtungs-, Start-, Backup- und
Restorescript und die vollständige Anleitung — steckt **im Image**.

```bash
mkdir -p ~/vapp && cd ~/vapp
docker run --rm ghcr.io/rbnet-apps/vapp-app:latest tar -C /opt/vapp-bundle -cf - . | tar -xf -
./setup.sh
./start.sh
```

Danach im Browser **`https://<domain>/commissioning`** aufrufen und das Betreiberkonto anlegen.

> ⚠️ **Ein Schlüssel muss aufbewahrt werden.** `NOTES_ENCRYPTION_KEY` verschlüsselt die Notizen in der
> Datenbank. Eine Sicherung, die ohne ihn zurückgespielt wird, hat Notizen, die niemand mehr lesen
> kann — nicht die Versammlung, nicht der Verfasser, niemand. `setup.sh` sagt das in dem Augenblick,
> in dem es ihn erzeugt.

**Die ganze Anleitung ist [SELFHOST.md](SELFHOST.md)** — die fünf Schritte, die Sicherungen, was zu
tun ist, wenn etwas klemmt. Sie liegt auch im entpackten Paket und wird dort gepflegt.

## Die Images

| Image                         | Was darin ist                                                                 |
| ----------------------------- | ----------------------------------------------------------------------------- |
| `ghcr.io/rbnet-apps/vapp-app` | die Anwendung — PHP-FPM, die Konsole und die Dateien unter `/opt/vapp-bundle` |
| `ghcr.io/rbnet-apps/vapp-web` | nginx davor, mit der gebauten UI                                              |

Beide für **`linux/amd64` und `linux/arm64`** — ein gemieteter x86-Server und ein Raspberry Pi laufen
gleich gut. `latest` ist die aktuelle Fassung; daneben steht jeder Bau unter seinem Commit, zum
Festnageln und zum Zurückgehen. MySQL und Redis sind nicht in diesen Images — sie kommen daneben
hoch, aus der Compose-Datei im Bündel.

## Womit es gebaut ist

| Schicht          | Was                                                              |
| ---------------- | ---------------------------------------------------------------- |
| Anwendung        | Symfony 8.1, PHP 8.5, Doctrine ORM 3                             |
| Oberfläche       | Twig serverseitig, TypeScript, SCSS, Bootstrap 5.3               |
| Auslieferung     | PWA — installierbar, Service Worker, Web Push. Keine native App. |
| Datenbank        | MySQL 8.4                                                        |
| Zwischenspeicher | Redis, Symfony Messenger                                         |
| PDF              | Gotenberg (Chromium)                                             |

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
