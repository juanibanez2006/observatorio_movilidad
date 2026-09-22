# Arquitectura de Observatorio de Movilidad

## 1. Objetivo
El sistema está diseñado como una app local-first para reporte ciudadano de daños viales, con un flujo de captura de evidencia en dispositivo, almacenamiento local seguro y preparación para sincronización con Supabase.

## 2. Capa local
- SQLite con Drift como base principal de persistencia.
- Cada reporte se guarda localmente en el dispositivo antes de sincronizar.
- La UI se alimenta desde streams reactivos para reflejar cambios inmediatos.

## 3. Capa de dominio
- `Reporte` representa el modelo de negocio.
- `SyncService` centraliza estados de sincronización y reintentos.
- `ReporteRepository` encapsula acceso a datos y operaciones comunes.

## 4. Capa de sincronización
- La app admite el patrón local-first: guardar primero, sincronizar después.
- Supabase queda preparado para autenticación, reglas RLS y almacenamiento de reportes.
- Si no hay configuración, la app sigue funcionando en modo local sin romper la ejecución.

## 5. Mapa de roles
- Ciudadano: captura reportes y visualiza su estado.
- Profesional: valida, clasifica y ajusta severidad.
- Administrador: dashboard, supervisión y gestión.

## 6. Siguientes pasos recomendados
1. Crear base de datos en Supabase.
2. Habilitar Auth con email OTP o anon.
3. Configurar Storage para fotos.
4. Crear tablas: profiles, reportes, seguimientos.
5. Añadir políticas RLS y una sincronización por lotes.
