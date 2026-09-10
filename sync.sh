#!/bin/sh
#
# Legt die abgeleiteten Dateien der öffentlichen Seite ab und prüft das Ergebnis.
#
# `showcase/` ist der Arbeitsbaum des öffentlichen Repositorys. Zwei Sorten Datei liegen darin:
# von Hand geschriebene (README.md, FUNKTIONEN.md) — die leben hier und werden hier geändert —
# und abgeleitete, die dieses Skript aus dem Baum darüber erzeugt. **Abgeleitete Dateien werden
# hier nie von Hand geändert; sie werden beim nächsten Lauf überschrieben.**
#
# Das Skript schreibt nur Dateien. Es committet nicht und pusht nicht, aus demselben Grund, aus
# dem `prod/setup.sh` nichts startet: ein Skript, das schreibt, ist nachvollziehbar; eins, das
# veröffentlicht, ist ein Knopf, den man versehentlich drückt.
#
# Zwei Kopien sind keine Kopien: `SELFHOST.md` verliert den Verweis auf den Betreiberweg (er zeigte
# hier neben dem Schaufenster-README auf das Falsche) und die Verlinkung dreier ADR, die nicht
# mitgehen. Beides steht unten an einer Stelle und bricht ab, wenn die Vorlage sich ändert — eine
# stillschweigend übersprungene Umschreibung wäre schlimmer als ein roter Lauf.
#
# POSIX sh, kein bash: dasselbe wie bei den Skripten im Betriebsbündel.

set -eu

cd "$(dirname "$0")"
ROOT=..
fail() { echo "sync: $*" >&2; exit 1; }

[ -f "$ROOT/prod/SELFHOST.md" ] || fail "Quelle fehlt — läuft das hier im Arbeitsbaum?"

# ---------------------------------------------------------------- ableiten

cp "$ROOT/LICENSE" LICENSE
cp "$ROOT/SECURITY.md" SECURITY.md
cp "$ROOT/CODE_OF_CONDUCT.md" CODE_OF_CONDUCT.md

mkdir -p bilder
for img in "$ROOT"/docs/screenshots/*.png; do
    [ -e "$img" ] || continue
    cp "$img" "bilder/$(basename "$img")"
done

# Die Anleitung. Drei Zeilen der Vorlage werden erwartet; fehlt eine, hat sich die Vorlage bewegt
# und die Umschreibung ist nicht mehr die, die hier beschrieben steht.
WEG_A='(Weg A, mit eigener Registry und CI), liest stattdessen \[README.md\](README.md).'
grep -q 'Wer für \*\*viele\*\* Versammlungen hostet' "$ROOT/prod/SELFHOST.md" \
    || fail "SELFHOST.md: der Satz über den Betreiberweg steht nicht mehr da, wo er stand."
grep -q "$WEG_A" "$ROOT/prod/SELFHOST.md" \
    || fail "SELFHOST.md: die Zeile mit dem Verweis auf den Betreiberweg hat sich geändert."

sed \
    -e 's/\*\* — Weg B\. Sie setzt/**. Sie setzt/' \
    -e 's/ Wer für \*\*viele\*\* Versammlungen hostet$//' \
    -e "/$WEG_A/d" \
    -e 's#\[ADR-0038\](\.\./docs/adr/[^)]*)#[ADR-0038](ADR-0038.md)#g' \
    -e 's#\[\(ADR-[0-9][0-9]*\)\](\.\./docs/adr/[^)]*)#\1#g' \
    -e 's#(\.\./LICENSE)#(LICENSE)#g' \
    "$ROOT/prod/SELFHOST.md" > SELFHOST.md

# Die eine ADR, die mitgeht: sie erklärt die Lizenzgrenze, und das ist die Frage, die ein Fremder
# sonst stellt. Ihr Status trägt einen Arbeitszeiger, ihr Vorgänger liegt nicht im Paket.
sed \
    -e 's/(§S[0-9]*, /(/' \
    -e 's#\[\(ADR-[0-9][0-9]*\)\]([0-9][^)]*\.md)#**\1**#g' \
    "$ROOT/docs/adr/0038-der-quelltext-wird-veroeffentlicht.md" > ADR-0038.md

{
    echo '<!-- Abgeleitet aus prod/SELFHOST.md — nicht hier ändern, sondern dort. -->'
    cat SELFHOST.md
} > SELFHOST.md.tmp && mv SELFHOST.md.tmp SELFHOST.md

{
    echo '<!-- Abgeleitet aus docs/adr/ — nicht hier ändern, sondern dort. -->'
    cat ADR-0038.md
} > ADR-0038.md.tmp && mv ADR-0038.md.tmp ADR-0038.md

# ---------------------------------------------------------------- prüfen
#
# Vier Riegel, und jeder bricht ab statt zu warnen: drüben gibt es keine Bauanleitung, die etwas
# merkt. Die Muster sind enger als die des Wächters im Hauptbaum — `Additional Terms §1` ist eine
# Lizenzklausel und gehört in einen öffentlichen Text, `§S84` ist ein Arbeitszeiger und nicht.

DOCS=$(ls ./*.md)

hits=$(grep -nE '§S[0-9]|TODO +§|TODO +[A-Z]?[0-9]|docs/work|TODO\.md|CHANGELOG\.md' $DOCS || true)
[ -z "$hits" ] || fail "Arbeitszeiger im Paket:
$hits"

hits=$(grep -nE 'git\.rbnet\.me|vapp_devcontainer|localhost:80|127\.0\.0\.1|vapp_db' $DOCS || true)
[ -z "$hits" ] || fail "Interne Adresse im Paket:
$hits"

missing=''
for target in $(grep -ohE '\]\([^)#][^)]*\)' $DOCS | sed 's/^](//; s/)$//' | grep -v '^http' | sort -u); do
    [ -e "$target" ] || missing="$missing $target"
done
[ -z "$missing" ] || fail "Relative Verweise ohne Ziel im Paket:$missing"

missing=''
for url in $(grep -ohE 'https://raw\.githubusercontent\.com/[^)" ]*' $DOCS | sort -u); do
    file=bilder/$(basename "$url")
    [ -e "$file" ] || missing="$missing $file"
done
[ -z "$missing" ] || fail "Bildadresse ohne Datei — im Baum sieht das niemand:$missing"

# ---------------------------------------------------------------- fertig

echo "sync: abgeleitet und geprüft."
echo
git status --short .
echo
echo "Zum Veröffentlichen:"
echo "  git -C $(pwd) add -A && git -C $(pwd) commit -m '…' && git -C $(pwd) push"
