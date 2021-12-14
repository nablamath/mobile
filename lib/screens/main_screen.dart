// Import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nablamath/api/pdf_access.dart';
import 'package:nablamath/constants/courses.dart';
import 'package:nablamath/constants/dimensions.dart';
import 'package:nablamath/constants/strings.dart';
import 'package:nablamath/screens/pdf_view_screen.dart';
import 'package:nablamath/widgets/primary_button.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(paddingDefault),
        child: Column(
          children: generateMenu(context),
        ),
      )
    );
  }

  List<Widget> generateMenu(BuildContext context) => courses.map((e) => Padding(
    padding: const EdgeInsets.only(bottom: paddingDefault),
    child: PrimaryButtonWidget(
      text: 'MATH${e['code']}',
      onPressed: () async {
        final file = await PdfAccessApi.loadFile(urlFromCode(e['code']));
        openPDF(context, file);
      },
    ),
  )).toList();

  String urlFromCode(int code) => 'https://github.com/nablamath/notes/raw/master/pdf/math$code.pdf';

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewScreen(file: file)),
  );
}