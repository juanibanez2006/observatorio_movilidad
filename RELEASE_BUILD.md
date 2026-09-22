# Compilación release

Desde la raíz del proyecto:

```powershell
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter build apk --release
```

El APK queda en `build/app/outputs/flutter-apk/app-release.apk`. Copia esa salida a una carpeta de entrega y renómbrala a `Observatorio_de_Movilidad.apk` sin modificarla.

El launcher usa `assets/images/logo_universidad.png` mediante `flutter_launcher_icons`; el archivo original no se modifica. Verifica la instalación en un Android físico antes de entregar.
