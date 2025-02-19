import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home/widgets/ticket_card.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((ticket) {
                return TicketCard(
                  ticket: ticket,
                );
              }).toList()
            ) 
          )
        ],
      ),
    );
  }
}