# Security policy

## Data handling
- Local learner profiles currently live in browser localStorage; local data is not encrypted at rest by this application.
- The optional cloud vault encrypts the exported profile book in the browser with AES-256-GCM before upload. The database migration applies owner-only Row Level Security.
- Never place Supabase service-role keys, private API keys, AI provider keys, passwords, or encryption passphrases in this repository or browser source.
- The Supabase publishable/anon key is intended for browser use only when Row Level Security is correctly configured.
- Do not store medical diagnoses, therapy records, school identifiers, addresses, or other highly sensitive child information in this prototype.

## Reporting a vulnerability
Do not publish exploitable details in a public issue. Contact the repository owner privately and include reproduction steps, affected versions, and impact. Do not submit real children's data or credentials.

## Before production
A qualified security reviewer must test authentication, RLS, encryption, backup/restore, session handling, dependency supply chain, abuse cases, data deletion, consent and account recovery. Complete an independent privacy impact assessment and child-safeguarding review before collecting information about children.