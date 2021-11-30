// Import
import "package:flutter/material.dart";
import 'package:nablamath/constants/strings.dart';

/* ------------------------ division ------------------------ */

// Main screen
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(stringTitle),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}