import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int spaceAddjustNum;
  final Color color;

  const AppLayoutBuilder({super.key, required this.spaceAddjustNum, required this.color});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          int dashCount = (constraints.maxWidth / spaceAddjustNum).floor(); // Adjust spacing
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dashCount, (index) => Text("-", style: TextStyle(fontSize: 16, color: color))),
          );
        },
      );
  }
}