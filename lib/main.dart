import 'package:flutter/material.dart';

class NablamathApplication extends StatelessWidget {
  const NablamathApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nablamath',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nablamath'),
          backgroundColor: const Color(0xff5c8c93),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

void main() => runApp(const NablamathApplication());
