// Import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

/* ------------------------ division ------------------------ */

// PDF view screen
class PDFViewScreen extends StatefulWidget {
  const PDFViewScreen({
    Key? key,
    required this.file,
  }): super(key: key);

  final File file;

  @override
  _PDFViewScreenState createState() => _PDFViewScreenState();
}

// PDF view screen state
class _PDFViewScreenState extends State<PDFViewScreen> {
  late PDFViewController controller;
  int index = 0;
  int pages = 0;

  @override
  Widget build(BuildContext context) {
    final path = widget.file.path;
    final name = basename(path);
    final text = '${index + 1} / $pages';

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: pages >= 2
          ? [
            Center(
              child: Text(text),
            ),
            IconButton(
              icon: const Icon(Icons.chevron_left, size: 32),
              onPressed: () {
                if (index > 0) { controller.setPage(index - 1); }
              },
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right, size: 32),
              onPressed: () {
                if (index < pages - 1) { controller.setPage(index + 1); }
              },
            ),
          ]
          : null,
      ),
      body: PDFView(
        filePath: path,
        autoSpacing: false,
        swipeHorizontal: true,
        onRender: (pages) {
          setState(() => { this.pages = pages! });
        },
        onViewCreated: (controller) {
          setState(() => { this.controller = controller });
        },
        onPageChanged: (index, _) {
          setState(() => { this.index = index! });
        }
      ),
    );
  }
}