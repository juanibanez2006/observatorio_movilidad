# Supabase Setup

## 1. Crear proyecto
- Crear un proyecto en Supabase.
- Obtener `SUPABASE_URL` y `SUPABASE_ANON_KEY`.

## 2. Variables de entorno
Se recomienda usar `--dart-define` al arrancar la app:

```bash
flutter run \
  --dart-define=SUPABASE_URL=https://xxxxx.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=xxxxx
```

## 3. Esquema sugerido
```sql
create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  display_name text,
  role text not null default 'ciudadano',
  created_at timestamptz default now()
);

create table public.reportes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id),
  local_id text,
  photo_url text,
  status text default 'pendiente',
  created_at timestamptz default now()
);
```

## 4. RLS
```sql
alter table public.profiles enable row level security;
alter table public.reportes enable row level security;
```

## 5. Siguientes pasos
- Habilitar auth por email OTP.
- Subir fotos a Storage.
- Sincronizar localmente desde Drift hacia Supabase.
