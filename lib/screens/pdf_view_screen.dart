// Import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

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
  late PDFViewController _controller;
  int _index = 0;
  int _pages = 0;
  bool _isReady = false;

  @override
  Widget build(BuildContext context) {
    final path = widget.file.path;
    final name = basename(path);
    final text = '${_index + 1} / $_pages';

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: _pages >= 2
          ? [
            Center(
              child: Text(text),
            ),
            IconButton(
              icon: const Icon(Icons.chevron_left, size: 32),
              onPressed: () {
                if (_index > 0) { _controller.setPage(_index - 1); }
              },
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right, size: 32),
              onPressed: () {
                if (_index < _pages - 1) { _controller.setPage(_index + 1); }
              },
            ),
          ]
          : null,
      ),
      body: Stack(
        children: [
          PDFView(
            filePath: path,
            autoSpacing: false,
            swipeHorizontal: true,
            onRender: (pages) {
              setState(() {
                _pages = pages!;
                _isReady = true;
              });
            },
            onViewCreated: (controller) {
              setState(() {
                _controller = controller;
              });
            },
            onPageChanged: (index, _) {
              setState(() {
                _index = index!;
              });
            },
          ),
          _isReady
            ? const Offstage()
            : const Center(child: CircularProgressIndicator()),
        ],
      )
    );
  }
}
