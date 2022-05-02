// Import
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

// PDF access API
class PdfAccessApi {
  // Load PDF file
  static Future<File> loadFile(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final bytes = response.bodyBytes;
    return storeFile(url, bytes);
  }

  // Store PDF file
  static Future<File> storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}
