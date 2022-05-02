// Import
import 'package:flutter/material.dart';
import 'package:nablamath/constants/constants.dart';
import 'package:nablamath/screens/screens.dart';
import 'package:nablamath/theme.dart';

// Application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: stringTitle,
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: const MainScreen(),
    );
  }
}

// Main function
void main() => runApp(const MyApp());
