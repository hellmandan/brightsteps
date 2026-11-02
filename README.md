# BrightSteps

BrightSteps is an inclusive, browser-based learning prototype designed to support autistic, ADHD, dyslexic and other neurodivergent learners, with tools for families, educators and therapists.

## Run locally

1. Download or clone this repository.
2. Open `index.html` in a modern browser for a basic preview.
3. For installability and offline caching, serve the files over HTTPS (or `localhost` during development). Keep `index.html`, `manifest.webmanifest`, and `service-worker.js` together.

## Included files

- `index.html` — interactive learning application and optional encrypted-backup interface.
- `manifest.webmanifest` — Progressive Web App metadata.
- `service-worker.js` — offline cache.
- `supabase/migrations/` — owner-only encrypted vault table and Row Level Security policies.
- `supabase/README.md` — Supabase project setup.
- `SECURITY.md` and `PRIVACY.md` — development-stage security and privacy boundaries.
- `docs/PRODUCTION_CHECKLIST.md` — remaining production work.
- `tests/smoke_test.py` — repository smoke tests.

## Current scope and limitations

This is a **front-end MVP/prototype**, not a production child-data platform. Learner profiles and activity records are stored in browser `localStorage` on the current device. They are not encrypted, automatically backed up, or synchronised between devices.

The repository now includes an optional Supabase sign-in and client-side encrypted personal backup foundation. It still does **not** include an owner-configured Supabase project, shared parent/teacher/therapist accounts, learner invitations or delegated permissions, a connected AI model, clinical assessments, or a certified curriculum. The learning activities are examples, not therapy, diagnosis, or a substitute for individual professional advice.

To enable encrypted backup, the project owner must create a Supabase project and apply the SQL migration described in `supabase/README.md`. The website cannot connect to a backend until the owner supplies the project URL and publishable/anon key. Never use a service-role key in the browser. The cloud vault is single-account and encrypted in the browser; it is not a collaboration system.

**Do not enter sensitive health, diagnostic, school, or identifying information.** Local browser data is not encrypted at rest. The encrypted cloud backup is optional and requires owner setup; losing its passphrase makes the backup unrecoverable. Before real-world use with children, complete every item in `docs/PRODUCTION_CHECKLIST.md`, including privacy/security review, accessibility testing with neurodivergent users, safeguarding review, professional content review, and applicable legal compliance assessment.

## Contributing

Please open an issue before proposing substantial changes. Contributions should preserve learner dignity, avoid punitive mechanics, support different communication styles, and make sensory and accessibility preferences configurable.