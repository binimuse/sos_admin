// ignore_for_file: empty_catches

import 'dart:io';
import 'dart:math';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

class FilesUtil {
  static Future<String> getFileSize(String filepath, int decimals) async {
    var file = File(filepath);
    int bytes = await file.length();
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }

  static String byteToString(int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }

  static bool isFileImage(String filepath) {
    bool isFileImage = false;

    try {
      String fileType = filepath.split('.').last.toLowerCase();

      if (fileType == 'jpg' || fileType == 'png' || fileType == 'jpeg') {
        isFileImage = true;
      }
    } catch (e) {}

    return isFileImage;
  }

  static Future<File> compressImage(File file) async {
    var result = await FlutterImageCompress.compressWithFile(
      file.absolute.path,
      minWidth: 720,
      minHeight: 520,
      format: CompressFormat.jpeg,
      quality: 75,
      //rotate: 90,
    );

    final tempDir = await getTemporaryDirectory();
    final tempFile = await File(
            '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg')
        .create();
    tempFile.writeAsBytesSync(result!);

    return tempFile;
  }

  static isNetworkImage(String filepath) {
    bool isNetworkImage = false;

    try {
      String fileType = filepath.split('.').last.toLowerCase();

      if (fileType == 'jpg' || fileType == 'png' || fileType == 'jpeg') {
        isNetworkImage = true;
      }
      // ignore: empty_catches
    } catch (e) {}

    return isNetworkImage;
  }
}
