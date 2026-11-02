# Supabase setup — BrightSteps private vault

This provides optional account sign-in and a **private, client-side encrypted backup**. It is not the multi-user parent/teacher/therapist collaboration system.

## Setup
1. Create a Supabase project in an account controlled by the BrightSteps owner.
2. In Project Settings → API, copy the Project URL and publishable/anon client key. Never use a service_role key in the browser.
3. Open SQL Editor and run migrations/202611020001_brightsteps_private_vault.sql.
4. In Authentication → URL Configuration, add https://hellmandan.github.io/brightsteps/ as a Site URL / allowed redirect URL. Add localhost only for development.
5. Configure email confirmation and strong password rules in Supabase Auth. Use an email provider with appropriate deliverability before public launch.
6. Open BrightSteps → Grown-ups → Private encrypted cloud backup. Enter the project URL and publishable/anon key, connect, create an account or sign in, then choose a separate encryption passphrase of at least 12 characters.
7. Click Save encrypted backup. To move to another device, connect to the same project, sign in, enter the same encryption passphrase and click Restore encrypted backup.

## Encryption and recovery
- The browser derives an AES-256-GCM key from the passphrase using PBKDF2-SHA-256 (310,000 iterations) and a random per-backup salt.
- The encryption passphrase is not sent to Supabase and is not stored by BrightSteps.
- Supabase stores ciphertext, IV and salt. Row Level Security restricts each row to its authenticated owner.
- Losing the encryption passphrase means the backup cannot be decrypted. There is intentionally no server-side recovery key.
- This is an additional privacy control, not a guarantee of compliance or a substitute for security review. The browser and device remain part of the security boundary.

## Current boundaries
The current integration is single-account backup only. It does not implement shared learner workspaces, parent/guardian consent, teacher or therapist invitations, delegated permissions, audit trails, data-retention automation, or account recovery for encrypted data. Do not use it for identifiable clinical notes or sensitive health records. Do not add a service-role key to the website.