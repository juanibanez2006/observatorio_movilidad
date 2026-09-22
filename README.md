# Observatorio de Movilidad

Aplicación Flutter local-first para la recolección de información sobre deterioros viales en campo. El proyecto está orientado a estudiantes y profesionales de Ingeniería Civil de la Universidad Piloto de Colombia, Seccional Alto Magdalena, en colaboración con la Alcaldía de Girardot.

La aplicación permite registrar evidencia fotográfica, ubicación GPS y diagnóstico técnico sin depender de Internet. Cada dispositivo conserva sus datos localmente y puede exportar jornadas completas en un ZIP transferible a un computador.

## Objetivo

Facilitar una primera versión funcional para campañas reales de levantamiento vial:

1. Identificar al recolector y la campaña activa.
2. Capturar una fotografía original y su ubicación GPS.
3. Registrar tipo de deterioro, severidad, superficie, medidas y observaciones.
4. Persistir cada reporte en el teléfono.
5. Consultar y eliminar registros desde la aplicación.
6. Exportar copias de seguridad en CSV, JSON y fotografías.

La prioridad es conservar la información. La sincronización remota y el análisis automático quedan preparados para futuras fases, pero no son necesarios para la operación local actual.

## Funcionalidades

- Configuración persistente del recolector: nombre y código institucional.
- Identificador de instalación UUID, sin usar IMEI, MAC ni identificadores sensibles.
- Campaña inicial: `Girardot - Recolección vial 2026`.
- Captura de fotografías desde la cámara.
- Copia inmediata de fotografías al almacenamiento interno de la aplicación.
- Captura de latitud, longitud y precisión GPS.
- Diagnóstico de deterioro y mediciones opcionales.
- Listado ordenado por fecha, detalle y eliminación controlada.
- Indicadores reactivos: total, completos, incompletos y sin exportar.
- Exportación incremental o completa sin Internet.
- ZIP con `manifest.json`, `reportes.csv`, `reportes.json` e imágenes originales.
- Compartir el ZIP mediante las aplicaciones disponibles en Android.
- Identidad institucional y launcher configurado con los assets oficiales.

## Tecnologías

| Área | Tecnología | Uso |
| --- | --- | --- |
| Aplicación | Flutter / Dart | Interfaz y lógica multiplataforma |
| Persistencia | Drift + SQLite | Base local transaccional y reactiva |
| Fotografías | `image_picker` + `path_provider` | Captura y almacenamiento interno |
| Ubicación | `geolocator` | GPS y precisión de captura |
| Perfil local | `shared_preferences` | Identidad de instalación y recolector |
| Identificadores | `uuid` | IDs de instalación y reportes |
| Exportación | `archive` + `csv` | ZIP, CSV y JSON |
| Transferencia | `share_plus` | Compartir archivos desde Android |
| Fechas | `intl` | Fechas y nombres de exportación |
| Backend futuro | `supabase_flutter` | Integración opcional, no requerida en modo local |

## Arquitectura

El proyecto mantiene una separación sencilla por responsabilidades:

```text
lib/
├── core/                 # Tema y constantes institucionales
├── database/             # Drift, SQLite, migraciones y streams
├── models/               # Modelo de dominio Reporte
├── repositories/         # Operaciones de aplicación sobre reportes
├── screens/              # Home, captura, listado, detalle y configuración
├── services/             # Perfil, imágenes, GPS, exportación y sincronización
└── widgets/              # Componentes visuales reutilizables
```

Flujo principal:

```text
Captura → validación → copia de fotografía → SQLite/Drift → Streams de UI → exportación ZIP
```

La identidad del recolector se guarda en `SharedPreferences`. Al crear un reporte, nombre y código se copian en sus propias columnas para conservar trazabilidad histórica aunque el perfil cambie después.

Consulta más detalle en [ARCHITECTURE.md](ARCHITECTURE.md).

## Almacenamiento local

La base SQLite se crea en el directorio de documentos de la aplicación como `observatorio.db`. Las fotografías originales se guardan conceptualmente en:

```text
<documents>/observatorio_movilidad/images/original/<idLocal>.jpg
```

Los datos no dependen de variables en memoria. Cerrar la app o reiniciar el teléfono no debe eliminar los reportes.

## Formato de exportación

Cada exportación genera un archivo con el formato:

```text
Observatorio_<codigoUniversitario>_<yyyyMMdd_HHmmss>.zip
├── manifest.json
├── reportes.csv
├── reportes.json
└── images/
    └── original/
        └── <idLocal>.jpg
```

El UUID `idLocal` relaciona cada fila de datos con su fotografía. Los registros no se eliminan después de exportar; únicamente se marca `exportedAt` cuando el ZIP se genera correctamente. Consulta el contrato completo en [DATASET_EXPORT_FORMAT.md](DATASET_EXPORT_FORMAT.md).

## Requisitos

- Flutter compatible con Dart `^3.13.3`.
- Android Studio o Android SDK configurado.
- Un dispositivo Android físico o emulador para probar cámara y GPS.
- Windows, macOS o Linux para desarrollo Flutter.

## Instalación y desarrollo

Desde la raíz del proyecto:

```powershell
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
flutter run
```

El comando de generación se necesita cuando cambian las tablas Drift o sus modelos generados.

## APK release

```powershell
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter build apk --release
```

El resultado queda en:

```text
build/app/outputs/flutter-apk/app-release.apk
```

La guía de entrega está en [RELEASE_BUILD.md](RELEASE_BUILD.md). El APK y la carpeta `build/` no forman parte del repositorio Git.

## Guía de campo

Para el uso operativo consulta [FIELD_COLLECTION_GUIDE.md](FIELD_COLLECTION_GUIDE.md). El flujo recomendado es tomar fotografía, obtener GPS, diligenciar la información, guardar el reporte y realizar exportaciones periódicas durante la jornada.

## Alcance actual

Esta versión prioriza la captura offline y la recuperación de información. No incluye todavía:

- consolidación automática de ZIP de varios dispositivos;
- dashboard web;
- geocodificación automática;
- clasificación mediante inteligencia artificial;
- sincronización remota obligatoria;
- autenticación en la nube requerida para operar.

La integración opcional con Supabase se mantiene separada para futuras ampliaciones. Los detalles están documentados en [SUPABASE_SETUP.md](SUPABASE_SETUP.md).

## Calidad y seguridad de datos

- Las migraciones Drift son aditivas y no utilizan `destructiveMigration`.
- Las fotografías se copian fuera de la caché antes de guardar el reporte.
- Las exportaciones verifican que las fotografías existan.
- Los reportes históricos conservan la identidad registrada en el momento de creación.
- No se deben subir credenciales, bases locales, APKs ni carpetas de compilación al repositorio.

## Instituciones

- Universidad Piloto de Colombia – Seccional Alto Magdalena
- Alcaldía de Girardot

Los logos institucionales se encuentran en `assets/images/` y se utilizan sin modificar los archivos originales.
