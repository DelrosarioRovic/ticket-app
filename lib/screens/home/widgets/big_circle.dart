import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  final bool isLeft;
  const BigCircle({super.key, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: AppStyles.bgColor,
            borderRadius: BorderRadius.only(
              topRight: isLeft ? Radius.circular(20) : Radius.zero,
              bottomRight: isLeft ? Radius.circular(20) : Radius.zero,
              topLeft: !isLeft ? Radius.circular(20) : Radius.zero,
              bottomLeft: !isLeft ? Radius.circular(20) : Radius.zero,
            ),
          ),
      ),
    );
  }
}