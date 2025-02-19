import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketCardTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment crossAxisAlignment;

  const TicketCardTextLayout({
    super.key, 
    required this.topText, 
    required this.bottomText, 
    required this.crossAxisAlignment
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(topText, style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
        Text(bottomText, style: AppStyles.headlineStyle4.copyWith(color: Colors.white)),
      ],
    );
  }
}