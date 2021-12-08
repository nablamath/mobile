// Import
import 'package:flutter/material.dart';

/* ------------------------ division ------------------------ */

// Primary button widget
class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
    ),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      )
    ),
    onPressed: onPressed,
  );
}