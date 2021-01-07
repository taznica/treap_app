import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/user.dart';

import 'components/ticket_large_view.dart';
import 'components/ticket_small_card.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TicketSmallCard(
            ticket: user.tickets[index],
            press: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return TicketLargeView(ticket: user.tickets[index]);
                },
              ));
            },
          );
        },
        itemCount: user.tickets.length,
      ),
    );
  }
}
