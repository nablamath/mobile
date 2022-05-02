// Import
import 'package:flutter/material.dart';
import 'package:nablamath/constants/constants.dart';
import 'package:nablamath/widgets/widgets.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(paddingDefault),
            child: Column(
              children: courses.map((e) => CourseItemWidget(code: e['code'], name: e['name'])).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
