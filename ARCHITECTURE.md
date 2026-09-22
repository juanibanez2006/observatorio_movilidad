# Arquitectura de Observatorio de Movilidad

## 1. Objetivo
El sistema está diseñado como una app local-first para recolección técnica de información vial. La operación principal no depende de Internet: captura evidencia, guarda los datos en SQLite y permite exportar un dataset portable desde cada dispositivo.

## 2. Capa local
- SQLite con Drift como base principal de persistencia.
- Cada reporte se guarda localmente en el dispositivo antes de cualquier integración remota.
- Las fotografías se copian al almacenamiento interno permanente y se relacionan mediante `idLocal`.
- La UI se alimenta desde streams reactivos de Drift para reflejar cambios inmediatos.
- El perfil del recolector vive en `SharedPreferences` y se publica mediante `ValueNotifier`.

## 3. Capa de dominio
- `Reporte` representa el modelo de negocio.
- `SyncService` centraliza estados de sincronización y reintentos futuros.
- `ReporteRepository` encapsula acceso a datos y operaciones comunes.
- `CollectorProfileService` administra instalación, recolector y campaña local.
- `ExportService` construye y valida ZIP, CSV, JSON e imágenes.

## 4. Capa de sincronización
- La app admite el patrón local-first: guardar primero, sincronizar después.
- Supabase queda preparado para autenticación, reglas RLS y almacenamiento de reportes.
- Si no hay configuración, la app sigue funcionando en modo local sin romper la ejecución.

## 5. Flujo de datos

```text
Perfil local → captura de foto/GPS → ReporteRepository → AppDatabase
				      ↓
			      streams reactivos de UI
				      ↓
			      ExportService → ZIP portable
```

Cada reporte guarda una copia de `collectorName` y `collectorUniversityCode`. Editar el perfil no modifica reportes anteriores.

## 6. Límites y siguientes pasos

La versión actual no requiere backend, autenticación ni conexión para capturar o exportar. La sincronización remota y el análisis automático son extensiones futuras.
1. Crear base de datos en Supabase.
2. Habilitar Auth con email OTP o anon.
3. Configurar Storage para fotos.
4. Crear tablas: profiles, reportes, seguimientos.
5. Añadir políticas RLS y una sincronización por lotes.
