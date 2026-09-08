# Security Policy

## Reporting a vulnerability

**Please do not open a public issue for a security problem.**

Use GitHub's **"Report a vulnerability"** button on the [Security tab][advisories] of this
repository. It opens a private advisory that only the maintainer can read, and it stays private
until a fix is out.

If that button is not visible to you, write to the address in the `Required Notice:` line of
[LICENSE](LICENSE) and put `vapp security` in the subject.

Please include, as far as you can: what you did, what happened, what you expected, and the version
or image tag you were running (`/health` reports it).

[advisories]: ../../security/advisories/new

## What gets a fix

**The latest release, and nothing else.** vapp ships as a rolling container image
(`ghcr.io/<namespace>/vapp-app:latest`); there are no maintained release branches, no backports and
no LTS. A fix means: a new image, and an entry in [CHANGELOG.md](CHANGELOG.md).

If you run a self-hosted instance, updating is the whole remediation — see
[prod/SELFHOST.md](prod/SELFHOST.md).

## How long you wait

- **First answer: within 14 days.** vapp is maintained by one person in their spare time. That
  number is what one person can hold, and it is deliberately not "48 hours".
- After the first answer you get a plan or a question. A fix for something exploitable takes
  priority over everything else in [TODO.md](TODO.md).
- Once the fix is released, the advisory is published with credit, unless you ask otherwise.

## Scope

In scope: this repository and the image built from it — the application, its configuration
defaults, the deployment files under `prod/`, and the devcontainer.

Out of scope: a self-hoster's own infrastructure and configuration (their reverse proxy, their TLS
setup, their `.env.local`), findings that need physical or shell access to the host, and reports
from automated scanners without a working reproduction.
