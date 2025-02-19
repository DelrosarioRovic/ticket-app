import 'package:flutter/material.dart';

class TicketCardTextStyle extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;

  const TicketCardTextStyle({
    super.key, 
    required this.text, 
    required this.textStyle,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: textAlign, style: textStyle.copyWith(color: Colors.white));
  }
}