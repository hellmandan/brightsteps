from pathlib import Path
root = Path(__file__).resolve().parents[1]
html = (root / 'index.html').read_text(encoding='utf-8')
sql = (root / 'supabase/migrations/202611020001_brightsteps_private_vault.sql').read_text(encoding='utf-8')
checks = {
    'main HTML document': '<!doctype html>' in html.lower(),
    'cloud backup UI': 'cloudBackup' in html and 'cloudRestore' in html,
    'AES-GCM encryption': 'AES-GCM' in html and 'PBKDF2' in html,
    'no service-role key in frontend': 'service_role' not in html.lower(),
    'vault table': 'public.brightsteps_vaults' in sql,
    'RLS enabled': 'enable row level security' in sql.lower(),
    'owner-only policies': '(select auth.uid()) = user_id' in sql,
    'no anonymous table access': 'revoke all on table public.brightsteps_vaults from anon' in sql,
    'privacy documentation': (root / 'PRIVACY.md').exists(),
    'security documentation': (root / 'SECURITY.md').exists(),
}
for name, ok in checks.items():
    print(('PASS' if ok else 'FAIL') + ' - ' + name)
if not all(checks.values()):
    raise SystemExit(1)