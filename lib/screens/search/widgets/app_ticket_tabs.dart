import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String leftTabLabel;
  final String rightTabLabel; 
  const AppTicketTabs({super.key, required this.leftTabLabel, required this.rightTabLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.ticketTabColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTabs(isLeft: true, labels: leftTabLabel,),
          AppTabs(isLeft: false, labels: rightTabLabel,)
        ],
      )
    );
  }
}

class AppTabs extends StatelessWidget {
  final bool isLeft;
  final String labels;
  const AppTabs({super.key, required this.isLeft, required this.labels});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.horizontal(
          left: isLeft ? const Radius.circular(50) : Radius.zero,
          right: !isLeft ? const Radius.circular(50) : Radius.zero,
        ),
      ),
      child: Center(child: Text(labels),
      ),
    );
  }
}