import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white, // Change this to your desired color
          width: 2.5, // Adjust border width
        ),
      ),
    );
  }
}