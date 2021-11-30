import 'package:flutter/material.dart';
import 'package:nablamath/constants/strings.dart';
import 'package:nablamath/screens/main_screen.dart';
import 'package:nablamath/theme.dart';

class NablamathApplication extends StatelessWidget {
  const NablamathApplication({Key? key}) : super(key: key);

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

void main() => runApp(const NablamathApplication());
