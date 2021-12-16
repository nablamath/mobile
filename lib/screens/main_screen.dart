// Import
import 'package:flutter/material.dart';
import 'package:nablamath/constants/courses.dart';
import 'package:nablamath/constants/dimensions.dart';
import 'package:nablamath/constants/strings.dart';
import 'package:nablamath/widgets/course_item.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(paddingDefault),
          child: Column(
            children: courses.map((e) => CourseItemWidget(code: e['code'])).toList(),
          ),
        ),
      ),
    );
  }
}
