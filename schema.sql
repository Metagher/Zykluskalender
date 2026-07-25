-- Im Supabase-Dashboard unter "SQL Editor" ausführen.

create table if not exists period_days (
  date date primary key,
  created_at timestamptz default now()
);

-- Row Level Security aktivieren
alter table period_days enable row level security;

-- Einfache offene Policy, solange nur ihr beide den anon-Key kennt.
-- (Für mehr Sicherheit später durch echte Auth ersetzen, siehe README.)
create policy "Allow all access to period_days"
  on period_days
  for all
  using (true)
  with check (true);

-- Realtime für Live-Sync zwischen euren Geräten aktivieren
alter publication supabase_realtime add table period_days;
