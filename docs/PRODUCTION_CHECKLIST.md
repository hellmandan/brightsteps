# BrightSteps production-readiness checklist

## Implemented in this repository
- [x] Inclusive learning prototype with communication, literacy, maths, life skills, social stories, sensory preferences, planner and progress summary.
- [x] Multiple local learner profiles and JSON export/import.
- [x] Optional Supabase email/password authentication.
- [x] Optional client-side AES-256-GCM encrypted personal backup.
- [x] Supabase owner-only Row Level Security migration for encrypted vault records.
- [x] Security, privacy and setup documentation.

## Still required before real child or school deployment
- [ ] Create and configure the production Supabase project; apply migration; configure email provider, redirect URLs, rate limits and monitoring.
- [ ] Implement verified parent/guardian relationships, consent and age-appropriate assent.
- [ ] Implement invitations, scoped teacher/therapist access, expiry, revocation and audit logs. Do not share encryption keys or learner data until this is designed and tested.
- [ ] Add server-side account recovery and a safe encryption-key recovery/rotation design that does not silently weaken encryption.
- [ ] Move from a single HTML file to a tested modular application with dependency pinning, build pipeline and automated tests.
- [ ] Add secure data deletion, retention controls, export, account deletion and incident response.
- [ ] Complete privacy impact assessment, child-safety/safeguarding review and Australian Privacy Act / APP / child-related legal review as applicable; assess overseas hosting and cross-border disclosures.
- [ ] Complete WCAG 2.2 AA audit plus testing with autistic, ADHD, dyslexic, AAC and non-speaking learners across age and developmental ranges.
- [ ] Have educators, speech pathologists, occupational therapists and relevant specialists review content and safety.
- [ ] Add content moderation, safeguarding escalation, abuse prevention and safe AI design before connecting generative AI.
- [ ] Perform independent penetration testing, RLS tests, backup/restore tests and disaster recovery drills.
- [ ] Establish support contact, status page, release process, backups and vulnerability disclosure process.

## Release rule
Do not market the current repository as a finished clinical, therapeutic, diagnostic or school-record platform. It is an MVP with an optional encrypted backup foundation. A production launch is blocked until the outstanding controls are implemented and independently reviewed.