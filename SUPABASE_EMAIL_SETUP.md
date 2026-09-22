# Supabase Email Auth Setup

## 1. Habilitar autenticación
En el panel de Supabase:
- Authentication > Providers
- Activar Email
- Configurar redirect URLs para la app móvil

## 2. Opción recomendada
- OTP por email para login sin contraseña.
- Usar `signInWithOtp` desde Flutter.

## 3. Políticas de seguridad
- Limitar usuarios a leer/escribir solo sus reportes.
- Proteger `profiles` con `auth.uid() = id`.

## 4. Importante
La app puede ejecutarse en modo local sin credenciales; la integración remota solo activa cuando `SUPABASE_URL` y `SUPABASE_ANON_KEY` existen.
