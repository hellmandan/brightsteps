BRIGHTSTEPS MVP RELEASE PACKAGE

Files
- index.html: the application
- manifest.webmanifest: install metadata
- service-worker.js: basic offline cache

Run locally
For a simple preview, open index.html in a modern browser. Browser speech output depends on device/browser support.

Install as an app / enable offline caching
A Progressive Web App must be hosted from HTTPS (or localhost for development). Put all three files in the same directory on an HTTPS web host. The service worker is registered by index.html only if hosted on HTTPS or localhost.

Important limitations
- This is a front-end MVP/prototype, not a production child-data platform.
- Learner profiles and activity records are stored in browser localStorage on this device. They are not encrypted, backed up automatically, or synchronised between devices.
- There are no authenticated parent, teacher or therapist accounts, role-based access controls, cloud database, AI model connection, clinical assessments or certified curriculum.
- Do not store sensitive health, diagnostic, school or identifying information.
- Before use with children in a real service, commission privacy/security review, accessibility testing with neurodivergent users, safeguarding review, professional content review and legal compliance assessment.
- Activities are examples and must be adapted to each learner; they are not therapy or diagnosis.
