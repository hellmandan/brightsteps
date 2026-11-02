-- BrightSteps private encrypted backup vault
-- Apply in Supabase SQL Editor. Browser encrypts learner profile data before upload.
-- This migration intentionally does NOT create public learner records or professional sharing.
create table if not exists public.brightsteps_vaults (
  user_id uuid primary key references auth.users(id) on delete cascade,
  ciphertext text not null,
  iv text not null,
  salt text not null,
  schema_version integer not null default 1 check (schema_version = 1),
  updated_at timestamptz not null default now(),
  constraint brightsteps_vault_ciphertext_size check (octet_length(ciphertext) <= 5000000)
);
alter table public.brightsteps_vaults enable row level security;
alter table public.brightsteps_vaults force row level security;
revoke all on table public.brightsteps_vaults from anon;
grant select, insert, update, delete on public.brightsteps_vaults to authenticated;
drop policy if exists "Users can read only their own encrypted vault" on public.brightsteps_vaults;
create policy "Users can read only their own encrypted vault" on public.brightsteps_vaults for select to authenticated using ((select auth.uid()) = user_id);
drop policy if exists "Users can create only their own encrypted vault" on public.brightsteps_vaults;
create policy "Users can create only their own encrypted vault" on public.brightsteps_vaults for insert to authenticated with check ((select auth.uid()) = user_id);
drop policy if exists "Users can update only their own encrypted vault" on public.brightsteps_vaults;
create policy "Users can update only their own encrypted vault" on public.brightsteps_vaults for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
drop policy if exists "Users can delete only their own encrypted vault" on public.brightsteps_vaults;
create policy "Users can delete only their own encrypted vault" on public.brightsteps_vaults for delete to authenticated using ((select auth.uid()) = user_id);
create or replace function public.brightsteps_set_updated_at()
returns trigger language plpgsql set search_path = '' as $$
begin new.updated_at = now(); return new; end;
$$;
drop trigger if exists brightsteps_vault_updated_at on public.brightsteps_vaults;
create trigger brightsteps_vault_updated_at before update on public.brightsteps_vaults for each row execute function public.brightsteps_set_updated_at();
comment on table public.brightsteps_vaults is 'Per-user encrypted BrightSteps backup. Payload encryption is performed in the browser; never store plaintext learner data.';