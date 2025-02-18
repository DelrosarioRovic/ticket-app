import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/layout_builder.dart';

class TicketCardSeperatorLine extends StatelessWidget {
  const TicketCardSeperatorLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allow overflow outside parent
      children: [
        Container(
          color: AppStyles.ticketOrange,
          child: Row(
            spacing: 10,
            children: [
              BigCircle(isLeft: true),
              Expanded(
                child: AppLayoutBuilder(spaceAddjustNum: 13, color: Colors.white),
              ),
              BigCircle(isLeft: false),
            ],
          ),
        ),
      ],
    );
  }
}
