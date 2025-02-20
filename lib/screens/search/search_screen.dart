import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/home/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/promotional_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text("What are\nyou looking for?", style: AppStyles.headlineStyle1.copyWith(fontSize: 35)),
          SizedBox(height: 20),
          AppTicketTabs(),
          SizedBox(height: 25),
          AppTextIcon(icon: Icons.flight_takeoff_rounded, label: "Departure"),
          SizedBox(height: 20),
          AppTextIcon(icon: Icons.flight_land_rounded, label: "Arrival"),
          SizedBox(height: 25),
          FindTickets(),
          SizedBox(height: 40),
          const AppDoubleText(bigText: "Upcoming Flights", smallText: "View All", navigateTo: "/all_tickets",),
          SizedBox(height: 25),
          PromotionalContainer()
        ],
      ),
    );
  }
}