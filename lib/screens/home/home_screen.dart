import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home/widgets/app_double_text.dart';
import 'package:ticket_app/screens/home/widgets/hotel_card.dart';
import 'package:ticket_app/screens/home/widgets/ticket_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Good Morning", style: AppStyles.headlineStyle3),
                      const SizedBox(height: 5),
                      Text("Book Tickets", style: AppStyles.headlineStyle1)
                    ]),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                      width: 50,
                      height: 50,
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F6FD),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                        Text("Search")
                      ],
                  )
                ),
                const SizedBox(height: 40),
                const AppDoubleText(bigText: "Upcoming Flights", smallText: "View All", navigateTo: "/all_tickets",),
                const SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16,
                    children: ticketList.take(2).map((ticket) {
                      return TicketCard(
                        ticket: ticket,
                      );
                    }).toList()
                  ) 
                ),
                const SizedBox(height: 40),
                const AppDoubleText(bigText: "Hotels", smallText: "View All", navigateTo: "/all_hotels",),
                const SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16,
                    children: hotelList.take(2).map((hotel) {
                      return HotelCard(
                        hotel: hotel,
                      );
                    }).toList()
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}