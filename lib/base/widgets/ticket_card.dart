import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/layout_builder.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child:  Column(
            children: [
              //to be continue later
              Container(
                color: AppStyles.ticketBlue,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Nyc", style: AppStyles.headlineStyle3.copyWith(color: Colors.white))
                          ],
                        ),
                        Expanded(child: Container()),
                        BigDot(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                child: AppLayoutBuilder(spaceAddjustNum: 7),
                              ),
                              Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Colors.white, size: 23)),
                            ],
                          ),
                        ),
                        BigDot(),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Text("Nyc", style: AppStyles.headlineStyle3.copyWith(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text("New-York", style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text("8H 30M", style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text("London", style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: AppStyles.ticketBlue,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Nyc", style: AppStyles.headlineStyle3.copyWith(color: Colors.white))
                          ],
                        ),
                        Expanded(child: Container()),
                        BigDot(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                child: AppLayoutBuilder(spaceAddjustNum: 7),
                              ),
                              Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Colors.white, size: 23)),
                            ],
                          ),
                        ),
                        BigDot(),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Text("Nyc", style: AppStyles.headlineStyle3.copyWith(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text("New-York", style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text("8H 30M", style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text("London", style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}