// Import
import 'package:flutter/material.dart';
import 'package:nablamath/api/pdf_access.dart';
import 'package:nablamath/constants/colors.dart';
import 'package:nablamath/constants/dimensions.dart';
import 'package:nablamath/screens/pdf_view_screen.dart';

/* ------------------------ division ------------------------ */

// Course item widget
class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({
    Key? key,
    required this.code,
    required this.name,
  }) : super(key: key);

  final int code;
  final String name;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: paddingDefault),
    child: InkWell(
      child: Container(
        width: double.infinity,
        height: 160,
        child: Padding(
          padding: const EdgeInsets.all(paddingDefault),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'MATH$code',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: colorPrimary.withOpacity(0.9),
          borderRadius: BorderRadius.circular(borderRadiusDefault),
        ),
      ),
      onTap: () async {
        final file = await PdfAccessApi.loadFile('https://github.com/nablamath/notes/raw/master/pdf/math$code.pdf');
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PDFViewScreen(file: file),
        ));
      },
    ),
  );
}
