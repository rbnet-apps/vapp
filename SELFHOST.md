<!-- Abgeleitet aus prod/SELFHOST.md — nicht hier ändern, sondern dort. -->
# VAPP selbst hosten

Diese Anleitung ist für **eine Versammlung, die VAPP für sich selbst betreibt**. Sie setzt
keine Docker-, Symfony- oder Doctrine-Kenntnisse voraus.

> **Lizenz.** VAPP steht unter [PolyForm Noncommercial 1.0.0](LICENSE) und ist
> **source-available**: die Lizenz gilt dem Image und dem Quelltext gleichermaßen.
> Selbst hosten, verändern, weitergeben und die eigenen **Kosten decken** ist ausdrücklich erlaubt;
> weiterverkaufen und ein gewinnorientiertes Dienstangebot nicht. Die Grenze liegt beim **Einsatz**,
> nicht beim Kopieren ([ADR-0038](ADR-0038.md)).

## Was gebraucht wird

- Ein Linux-Rechner mit **Docker** und dem **Compose-Plugin**. Ein kleiner gemieteter Server oder ein
  Rechner im Versammlungsnetz reicht; x86-64 und arm64 laufen beide.
- Ein **Domänenname**, der auf diesen Rechner zeigt. Ohne ihn gibt es kein Zertifikat, und ohne
  Zertifikat funktionieren die **Passkeys** nicht (der Browser verlangt dafür eine sichere
  Verbindung) — eine IP-Adresse geht dafür ausdrücklich nicht.
- Ein **SMTP-Zugang** (der Mailanbieter, den die Versammlung ohnehin benutzt). Ohne ihn läuft VAPP,
  aber es kann niemanden per Mail einladen und kein Passwort zurücksetzen — auch nicht das eigene.
- Etwa **zwanzig Minuten**.

## Die fünf Schritte

### 1. Das Bündel holen

Es steckt **im Image**, und das ist der kürzeste Weg zu Dateien, die ohnehin zur Anwendung passen
müssen:

```bash
mkdir -p ~/vapp && cd ~/vapp
docker run --rm ghcr.io/rbnet-apps/vapp-app:latest tar -C /opt/vapp-bundle -cf - . | tar -xf -
```

Danach liegen hier: `compose.prod.yaml` · `setup.sh` · `Caddyfile` · `deploy.sh` · `backup.sh` ·
`restore.sh` · `mysql/` · `systemd/` — und diese Anleitung noch einmal.

Der Weg über das Image ist Absicht: so gehören Bündel und Anwendung **derselben Version** an. Ein
separater Download wäre eine zweite Sache, die fehlen oder zum Compose-File nicht passen kann.

> Der Quelltext ist **noch nicht** veröffentlicht — vorerst geht nur das Abbild hinaus, und dieses
> Bündel aus dem Image ist damit der einzige Weg zu den Dateien. Sobald er es ist, kommt ein
> `git clone` als zweiter Weg dazu, aber einer mit einem Haken: ein Checkout hat den Stand von
> `master` und **passt nicht automatisch zu dem Image, das hier gezogen wird**. Wer ihn dann nimmt,
> muss die Fassungen selbst gleichhalten.

### 2. Einrichten

```bash
./setup.sh
```

Das Skript **schreibt nur Dateien** — es startet nichts, migriert nichts und löscht nichts. Es fragt
in sieben Schritten nach der Domäne, ob VAPP sich selbst um TLS kümmern soll, nach dem SMTP-Zugang,
danach wer die Anlage betreibt, nach dem **Kartendienst**, nach einem **Auslagerungsziel für die
Sicherungen** (siehe unten, leer lassen heißt keins) und zuletzt nach der Bildquelle. Alle Passwörter
und Schlüssel erzeugt es selbst, das VAPID-Paar für die Push-Benachrichtigungen eingeschlossen.

Zur TLS-Frage:

| Antwort   | Was passiert                                                                                                                                                                                   |
| --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **caddy** | VAPP bringt seinen eigenen Reverse Proxy mit und holt sich ein Let's-Encrypt-Zertifikat selbst. Es belegt dann die Ports 80 und 443 dieses Rechners, und die Domäne muss schon hierher zeigen. |
| **own**   | Es läuft bereits nginx, Traefik oder ähnliches davor. VAPP veröffentlicht dann genau einen Klartext-Port, sonst nichts.                                                                        |

Wer nichts davon hat und nichts davon aufsetzen will, nimmt **caddy**.

Bei **own** kommt eine zweite Frage hinterher, und sie handelt nicht davon, was VAPP tut — zum
Proxy spricht VAPP immer Klartext —, sondern davon, was draußen ankommt: ob die Leute
`https://…` oder `http://…` eintippen. Die Antwort wird zu `APP_HOST_URL`, und damit fängt jede
Adresse an, die VAPP in Mails, Einladungen, Exporte und PDF-Verweise schreibt. Ohne https gibt es
außerdem keine Passkeys — der Browser verweigert die Zeremonie außerhalb eines sicheren Kontexts.

Zur Kartenfrage:

| Antwort     | Wer zeichnet                            | Abdeckung                                      |
| ----------- | --------------------------------------- | ---------------------------------------------- |
| **world**   | OpenStreetMap Foundation                | weltweit (Vorgabe)                             |
| **germany** | Bundesamt für Kartographie und Geodäsie | Deutschland vollständig, außerhalb fast nichts |

Der Dienst erfährt IP-Adresse und Kartenausschnitt jedes Nutzers und wird deshalb in der
Datenschutzerklärung **namentlich** genannt. Es ist eine Auswahl aus einer festen Liste und nie eine
Kacheladresse zum Eintippen (ADR-0042);
zu ändern ist sie später unter `/system/settings`.

### 3. Starten

```bash
./start.sh
```

Ein Befehl, drei Schritte in fester Reihenfolge: Images laden und Dienste starten, das
Datenbankschema anlegen, und danach `/health` fragen und die Antwort in einem Satz sagen. Die
Reihenfolge ist der Grund, warum es ein Skript ist — der Migrationsschritt einzeln zu übersehen war
der häufigste Fehlschlag dieser Anleitung.

Nachsehen geht jederzeit auch von Hand:

```bash
curl -s https://<domäne>/health
```

Drei Felder daraus zählen:

| Feld                        | Bedeutung                                                             |
| --------------------------- | --------------------------------------------------------------------- |
| `"status":"ok"`             | Datenbank, Cache, Migrationen und der Notizschlüssel sind beieinander |
| `"commissioned":false`      | es gibt noch kein Konto — Schritt 4                                   |
| `"settings_complete":false` | Betriebswerte fehlen noch — Schritt 5                                 |

### 4. Das Betreiberkonto anlegen

Im Browser **`https://<domäne>/commissioning`** aufrufen und das Formular ausfüllen: Name,
Mailadresse, Passwort, Name der ersten Versammlung.

> ⚠️ **Jetzt, nicht später.** Solange kein Konto existiert, kann **jeder**, der die Adresse kennt,
> dieses Formular ausfüllen und damit Betreiber dieser Anlage werden. Es gibt bewusst keinen
> Installationsschlüssel (ADR-0029) —
> das Fenster ist kurz, aber es schließt sich erst, wenn das Formular abgeschickt ist. Danach
> antwortet die Adresse mit „nicht gefunden".

Die Mailadresse ist hier Pflicht: über dem Betreiber steht niemand, der ihm eine Einladung
ausstellen könnte.

### 5. Die Betriebswerte prüfen

Nach dem Betreiberkonto übergibt `/commissioning` an **`/system/settings`**, _bevor_ die
Ersteinrichtung der Versammlung beginnt. Dort stehen zehn Werte, die vorher nur per SSH in die
`.env` zu tippen waren:

| Was                                                           | Schlüssel                         |
| ------------------------------------------------------------- | --------------------------------- |
| Öffentliche Adresse der Anlage                                | `APP_HOST_URL`                    |
| Absender und Absendername ausgehender Mails                   | `MAIL_SENDER`, `MAIL_SENDER_NAME` |
| Wohin Betriebsfehler gemeldet werden                          | `ADMIN_EMAIL`                     |
| Betreiber: Name, Anschrift, Kontaktadresse, eigenes Impressum | `OPERATOR_*`                      |
| Kartendienst der Gebietskarten                                | `MAP_TILE_PROVIDER`               |
| Fremde Anwendungen auf der Startseite (eine Zeile je App)     | `EXTERNAL_APPS`                   |

**Die Tabelle schlägt die `.env`** (ADR-0033):
was `setup.sh` geschrieben hat, steht hier bereits als Vorbelegung, und was hier eingetragen wird,
gilt ab dem Speichern — ohne Neustart und ohne SSH. Was noch fehlt, meldet `/health` als
`"settings_complete":false`.

Danach führt VAPP von selbst weiter — Personen und Gruppen kommen über die **Ersteinrichtung**
(`/onboarding`, eine Tabelle einfügen oder hochladen), jede weitere Person über eine **Einladung**
(ein Link, kein Passwort).

## Danach: die zwei Dinge, die man nicht vergessen darf

**Die Sicherung muss vom Rechner herunter.** Darin steckt beides zugleich: die `.env.local` enthält
`NOTES_ENCRYPTION_KEY`, der in **keinem** Datenbank-Backup steht — ohne ihn ist jede persönliche
Notiz dauerhaft unlesbar, auch aus einem vollständigen Dump. Und 31 Tage Sicherungen auf derselben
Platte helfen gegen einen Bedienfehler und gegen nichts sonst.

Beides beantwortet **ein** Schalter, nach dem `setup.sh` in Schritt 6 fragt:

```
OFFSITE_TARGET=user@backup.example.org:/srv/vapp/
OFFSITE_RECIPIENT=age1…
```

`backup.sh` verschlüsselt dann jede Sicherung **und die `.env.local`** mit
[age](https://age-encryption.org) an diesen öffentlichen Schlüssel und spiegelt sie auf das Ziel.
Zwei Dinge tragen das:

- Der **private** Schlüssel darf nicht auf diesem Rechner liegen — sonst ist die ausgelagerte Kopie
  nur so sicher wie die Platte, von der sie kommt. Das Paar wird dort erzeugt, wo später
  wiederhergestellt wird: `age-keygen -o key.txt`.
- Ein Ziel **ohne** Empfänger lässt `backup.sh` abbrechen. Es spiegelt nichts im Klartext, auch
  nicht versehentlich.

Nachträglich einschalten geht ohne erneutes `setup.sh`: die beiden Zeilen in die `.env.local`
schreiben, fertig.

**Die automatische Sicherung einschalten.** Sie läuft nicht von selbst:

```bash
sudo cp systemd/vapp-backup.* /etc/systemd/system/
sudo systemctl enable --now vapp-backup.timer
```

`backup.sh` sichert dann täglich Datenbank und hochgeladene Dateien, prüft jeden Dump vor dem
Aufbewahren und hält 31 Tage vor. Wiederherstellen: `./restore.sh` (fragt nach einer getippten
Bestätigung).

## Aktualisieren

```bash
./start.sh --update
```

Dieselben drei Schritte in derselben Reihenfolge, mit einem `docker compose pull` davor — und einem
`./backup.sh` davor, das das Skript selbst ausführt. Eine Aktualisierung, die eine Migration
mitbringt, ist **nicht** zurückzudrehen, indem man das alte Image wieder startet; dafür ist der Dump
da.

## Wenn etwas nicht geht

| Symptom                                         | Wahrscheinliche Ursache                                                                                                                                                                                                                                                    |
| ----------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Caddy bekommt kein Zertifikat                   | Die Domäne zeigt noch nicht hierher, oder Port 80 ist von außen nicht erreichbar. Die ACME-Prüfung kommt über Port 80 zurück, daran führt beim ersten Zertifikat kein Weg vorbei.                                                                                          |
| `/health` sagt `"migrations":{"status":"fail"}` | `./start.sh` ist nicht durchgelaufen. Es noch einmal aufrufen — die drei Schritte darin vertragen eine Wiederholung.                                                                                                                                                       |
| Passkeys lassen sich nicht anlegen              | Die Seite läuft über `http` oder unter einer IP-Adresse. Beides schließt WebAuthn aus.                                                                                                                                                                                     |
| `/imprint` sagt, es sei niemand hinterlegt      | Die drei `OPERATOR_*`-Felder sind leer. Der kurze Weg ist **`/system/settings`**, nicht die `.env.local`. Das ist eine Aussage, kein Fehler — aber eine, die jeder Besucher liest.                                                                                         |
| Mails kommen nicht an                           | `MAILER_DSN` in der `.env.local` prüfen (der einzige Wert der vier, der **nicht** auf `/system/settings` steht); dann `MAIL_SENDER` gegen den SPF-/DKIM-Eintrag der Domäne, zu der der SMTP-Zugang gehört. Ein Absender, der nicht zur Domäne passt, wird still verworfen. |
| Die Sicherung landet nicht am Auslagerungsziel  | `age` ist auf diesem Rechner nicht installiert, oder `OFFSITE_RECIPIENT` fehlt. `backup.sh` bricht in beiden Fällen ab, statt Klartext zu spiegeln — nachzulesen im Sicherungsprotokoll.                                                                                   |
