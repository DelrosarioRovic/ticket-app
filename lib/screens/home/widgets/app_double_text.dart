import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.navigateTo});
  final String bigText;
  final String smallText;
  final String navigateTo;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText, style: AppStyles.headlineStyle2),
          InkWell(
            // Navigate to AllTickets screen
            onTap: () => Navigator.pushNamed(context, navigateTo),
            child: Text(smallText, style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor
            )),
          )
        ],
      );
  }
}