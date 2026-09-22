# Formato de exportación

Cada exportación es un ZIP con `manifest.json`, `reportes.csv`, `reportes.json` e `images/original/<idLocal>.jpg`.

`idLocal` es un UUID y coincide con el nombre de la fotografía. `installationId` identifica de forma aleatoria y persistente la instalación; no usa IMEI ni identificadores sensibles. Cada fila conserva nombre y código institucional del recolector y `campaignId`.

El CSV es UTF-8 con BOM y usa el conversor CSV para escapar comas, comillas y saltos de línea. El JSON contiene `schemaVersion`, `exportedAt` y todos los campos disponibles. El manifest incluye versión de la app, schemaVersion 4, instalación, recolector, campaña, territorio y cantidades.

Exportar copia los datos: no elimina reportes ni fotografías. Solo marca `exportedAt` después de crear correctamente el ZIP. Los reportes modificados vuelven a quedar pendientes cuando se implemente la edición completa.
