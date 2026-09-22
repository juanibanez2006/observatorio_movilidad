# Geocoding Setup

## Objetivo
Preparar la app para geocodificación inversa y enriquecimiento de direcciones a partir de coordenadas.

## Recomendación
Usar un servicio como:
- Google Geocoding API
- Nominatim (open-source)
- Mapbox Geocoding

## Ejemplo de contrato
```dart
Future<String> reverseGeocode(double lat, double lng) async {
  // Implementar llamada HTTP y devolver direccion legible.
  return 'Calle principal, barrio central';
}
```

## Integración sugerida
- Ejecutarlo cuando se toma la ubicación.
- Guardar texto legible en el reporte local.
- Usarlo en la UI de validación profesional.
