# vapp

**Everything a congregation runs on, in one place it owns.** The weekly and weekend meeting
schedules with their assignments, the territories and who has which one out, the public-witnessing
cart with its routes and shifts, appointments, notes, and the reports that fall out of all of it —
instead of a spreadsheet that one person maintains and everybody else asks about.

It is built for **one congregation running its own instance**. There is no tenant switch, no
sign-up, no account with anyone: one deployment, one congregation, its own database on its own
machine. Nobody else can read it, because nobody else has it.

It installs like an app — on a phone, on a tablet, on a laptop — and it can send a push notification
when a shift needs somebody. Signing in can use a **passkey**, so there is nothing to type and
nothing to leak; that is also why the domain name and the certificate below are not optional.

![The cart calendar, with the section switcher and the area menu on the left](docs/screenshots/trolley-calendar.png)

## The images

| Image | What it is |
| --- | --- |
| `ghcr.io/ruba-de/vapp-app` | the application — PHP-FPM, the Symfony app, the console, and the deployment bundle under `/opt/vapp-bundle` |
| `ghcr.io/ruba-de/vapp-web` | nginx in front of it, with the built assets and Brotli precompression |

Both are published for **`linux/amd64` and `linux/arm64`** — a rented x86 box and a Raspberry Pi
work equally well.

| Tag | Meaning |
| --- | --- |
| `latest` | the current release. This is the one to pull. |
| `<commit-sha>` | an exact build, for pinning and for going back to one |

MySQL 8.4 and Redis are not in these images. They come up beside them, from the compose file in the
bundle.

## Getting it running

You need a Linux machine with **Docker** and the **Compose plugin**, a **domain name** pointing at
it, a TLS certificate (a reverse proxy in front, or the bundled Caddy), and an **SMTP account** —
without one vapp runs, but it can invite nobody and reset no password. About twenty minutes.

Everything needed to run it — the compose file, the setup script, the backup and restore scripts and
the full guide — travels **inside the image**, so the deployment files and the application are the
same version by construction:

```bash
mkdir -p ~/vapp && cd ~/vapp
docker run --rm ghcr.io/ruba-de/vapp-app:latest tar -C /opt/vapp-bundle -cf - . | tar -xf -
./setup.sh
```

`setup.sh` asks what it needs, generates every secret itself, and writes the two environment files.
It never invents a value you are supposed to remember: what has to be kept, it prints and tells you
to keep.

**Then read `SELFHOST.md`**, which you have just unpacked. It is the whole guide — the five steps,
the backups, what to do when something goes wrong — and it is the one that is kept up to date. This
page is only the front door.

> **One key you must keep.** `NOTES_ENCRYPTION_KEY` encrypts the notes in the database. A dump
> restored without it has notes nobody can read again — not the congregation, not the author, not
> anyone. `setup.sh` says so at the moment it generates it.

## Built with

| Layer | What |
| --- | --- |
| Backend | Symfony 8.1, PHP 8.5, Doctrine ORM 3 |
| Frontend | Twig server-side rendering + Stimulus controllers, TypeScript, SCSS, Bootstrap 5.3 |
| Delivery | PWA — installable, service worker, web push. No native wrapper. |
| Database | MySQL 8.4, Doctrine Migrations |
| Cache / queue | Redis (Predis), Symfony Messenger |
| PDF | Gotenberg (Chromium) |

## Licence

vapp is **source-available**, not open source: [PolyForm Noncommercial 1.0.0](LICENSE) with two
additional terms. In short —

- **Use it, change it, pass it on.** The limit is on the *purpose*, not on copying.
- **Noncommercial only** — but *recovering your actual costs* of hosting for other congregations is
  expressly permitted. That is the main case, and it is written into the licence.
- **Selling it, sublicensing it, or offering it as a for-profit service is not permitted.**

The noncommercial limit excludes a field of endeavour, so the licence is not OSI-approved and GitHub
shows it as "Other". That is normal for PolyForm, and "source-available" is the accurate word.

## Source code

<!--
  STEP 2 (§S84), when the source code arrives in this repository: replace this
  section with a pointer to CONTRIBUTING.md and the devcontainer. Until then it
  must stay true — a `git clone` line here would point at a repository that
  holds this page and the licence and nothing else.
-->

The source is **not published yet** — for now the images go out and the repository follows. Until
then this page, the `LICENSE` and `SECURITY.md` are all that lives here, and the guide that matters
ships inside the image.

Found a security problem? **Please do not open a public issue.** Use the *Report a vulnerability*
button on this repository's Security tab — it opens an advisory only the maintainer can read. If you
cannot see the button, write to the address in the `Required Notice:` line of the `LICENSE` with
`vapp security` in the subject. Details in [SECURITY.md](SECURITY.md).
