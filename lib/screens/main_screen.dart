// Import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nablamath/api/pdf_access.dart';
import 'package:nablamath/components/primary_button.dart';
import 'package:nablamath/constants/strings.dart';
import 'package:nablamath/screens/pdf_view_screen.dart';

/* ------------------------ division ------------------------ */

// Main screen
class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(stringTitle),
      ),
      body: Center(
        child: PrimaryButtonComponent(
          text: stringCode1010,
          onPressed: () async {
            final file = await PdfAccessApi.loadFile(stringUrl1010);
            openPDF(context, file);
          },
        ),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewScreen(file: file)),
  );
}