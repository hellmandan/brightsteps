# BrightSteps

BrightSteps is an inclusive, browser-based learning prototype designed to support autistic, ADHD, dyslexic and other neurodivergent learners, with tools for families, educators and therapists.

## Run locally

1. Download or clone this repository.
2. Open `index.html` in a modern browser for a basic preview.
3. For installability and offline caching, serve the files over HTTPS (or `localhost` during development). Keep `index.html`, `manifest.webmanifest`, and `service-worker.js` together.

## Included files

- `index.html` — interactive application.
- `manifest.webmanifest` — Progressive Web App metadata.
- `service-worker.js` — basic offline cache.

## Current scope and limitations

This is a **front-end MVP/prototype**, not a production child-data platform. Learner profiles and activity records are stored in browser `localStorage` on the current device. They are not encrypted, automatically backed up, or synchronised between devices.

This repository does not include authenticated parent, teacher or therapist accounts, role-based access controls, a cloud database, a connected AI model, clinical assessments, or a certified curriculum. The learning activities are examples, not therapy, diagnosis, or a substitute for individual professional advice.

**Do not enter sensitive health, diagnostic, school, or identifying information.** Before real-world use with children, complete a privacy and security review, accessibility testing with neurodivergent users, safeguarding review, professional content review, and applicable legal compliance assessment.

## Contributing

Please open an issue before proposing substantial changes. Contributions should preserve learner dignity, avoid punitive mechanics, support different communication styles, and make sensory and accessibility preferences configurable.
