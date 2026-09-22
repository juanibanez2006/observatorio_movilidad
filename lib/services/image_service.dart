import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class ImageService {
  final ImagePicker _picker = ImagePicker();
  static const _uuid = Uuid();

  /// Abre la cámara para tomar una fotografía
  /// Retorna la ruta local del archivo guardado
  Future<String?> takePicture() async {
    try {
      final XFile? photo = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 85,
      );

      if (photo == null) {
        return null;
      }

      return await _saveImageLocally(File(photo.path));
    } catch (e) {
      print('Error al tomar fotografía: $e');
      return null;
    }
  }

  /// Selecciona una imagen de la galería
  /// Retorna la ruta local del archivo guardado
  Future<String?> pickImageFromGallery() async {
    try {
      final XFile? photo = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );

      if (photo == null) {
        return null;
      }

      return await _saveImageLocally(File(photo.path));
    } catch (e) {
      print('Error al seleccionar imagen: $e');
      return null;
    }
  }

  /// Guarda la imagen en el directorio de aplicación
  Future<String> _saveImageLocally(File originalFile) async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final imagesDir = Directory('${appDir.path}/observatorio_movilidad/images/original');
      
      if (!await imagesDir.exists()) {
        await imagesDir.create(recursive: true);
      }

      // Generar nombre único basado en UUID
      final uniqueFileName = '${_uuid.v4()}.jpg';
      final savedFile = File('${imagesDir.path}/$uniqueFileName');

      // Copiar archivo
      await originalFile.copy(savedFile.path);

      return savedFile.path;
    } catch (e) {
      print('Error al guardar imagen: $e');
      rethrow;
    }
  }

  Future<String> persistForReport(String sourcePath, String reportId) async {
    final appDir = await getApplicationDocumentsDirectory();
    final imagesDir = Directory('${appDir.path}/observatorio_movilidad/images/original');
    await imagesDir.create(recursive: true);
    final destination = File('${imagesDir.path}/$reportId.jpg');
    if (sourcePath != destination.path) {
      await File(sourcePath).copy(destination.path);
      final source = File(sourcePath);
      if (await source.exists()) await source.delete();
    }
    return destination.path;
  }

  /// Verifica si un archivo de imagen existe
  Future<bool> imageExists(String imagePath) async {
    return File(imagePath).exists();
  }

  /// Obtiene el archivo de imagen
  File? getImageFile(String imagePath) {
    final file = File(imagePath);
    if (file.existsSync()) {
      return file;
    }
    return null;
  }

  /// Elimina una imagen guardada
  Future<void> deleteImage(String imagePath) async {
    try {
      final file = File(imagePath);
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      print('Error al eliminar imagen: $e');
    }
  }
}
