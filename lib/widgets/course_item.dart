// Import
import 'package:flutter/material.dart';
import 'package:nablamath/api/pdf_access.dart';
import 'package:nablamath/constants/dimensions.dart';
import 'package:nablamath/screens/pdf_view_screen.dart';
import 'package:nablamath/widgets/primary_button.dart';

/* ------------------------ division ------------------------ */

// Course item widget
class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({
    Key? key,
    required this.code,
  }) : super(key: key);

  final int code;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: paddingDefault),
    child: PrimaryButtonWidget(
      text: 'MATH$code',
      onPressed: () async {
        final file = await PdfAccessApi.loadFile('https://github.com/nablamath/notes/raw/master/pdf/math$code.pdf');
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => PDFViewScreen(file: file)),
        );
      },
    ),
  );
}
