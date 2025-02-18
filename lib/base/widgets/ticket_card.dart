import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/layout_builder.dart';
import 'package:ticket_app/base/widgets/ticket_card_seperator_line.dart';
import 'package:ticket_app/base/widgets/ticket_card_text_layout.dart';
import 'package:ticket_app/base/widgets/ticket_card_text_style.dart';

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketCard({super.key, required this.ticket});
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child:  Column(
            children: [
              //blue part of the ticket
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TicketCardTextStyle(text: ticket["from"]["code"], textAlign: TextAlign.start, textStyle: AppStyles.headlineStyle3),
                        Expanded(child: Container()),
                        BigDot(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                child: AppLayoutBuilder(spaceAddjustNum: 7, color: Colors.white),
                              ),
                              Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Colors.white, size: 23)),
                            ],
                          ),
                        ),
                        BigDot(),
                        Expanded(child: Container()),
                        TicketCardTextStyle(text: ticket["to"]["code"], textAlign: TextAlign.end, textStyle: AppStyles.headlineStyle3),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TicketCardTextStyle(textAlign: TextAlign.start, text: ticket["from"]["name"], textStyle: AppStyles.headlineStyle4)
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TicketCardTextStyle(textAlign: TextAlign.center, text: ticket["flying_time"], textStyle: AppStyles.headlineStyle4)
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100, 
                          child: TicketCardTextStyle(textAlign: TextAlign.end, text: ticket["to"]["name"], textStyle: AppStyles.headlineStyle4)
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //seperator line
              SizedBox(
                height: 20,
                child: TicketCardSeperatorLine()
              ),
              //orange part of the ticket
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TicketCardTextLayout(
                          topText: ticket["date"], 
                          bottomText: "Date", 
                          crossAxisAlignment: CrossAxisAlignment.start
                        ), 
                        Expanded(child: Container()),
                        TicketCardTextLayout(
                          topText: ticket["departure_time"], 
                          bottomText: "Departure time", 
                          crossAxisAlignment: CrossAxisAlignment.center
                        ), 
                        Expanded(child: Container()),
                        TicketCardTextLayout(
                          topText: ticket["number"].toString(), 
                          bottomText: "Number", 
                          crossAxisAlignment: CrossAxisAlignment.end
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
}