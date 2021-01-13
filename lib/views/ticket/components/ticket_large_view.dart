import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/ticket.dart';
import 'package:gohoubi_app/views/ticket/components/ticket_large_card.dart';
import 'package:gohoubi_app/views/ticket/components/ticket_use_menu.dart';

class TicketLargeView extends StatelessWidget {
  final Ticket ticket;

  const TicketLargeView({
    Key key,
    this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ticket.plan.accommodation.name + ' - ' + ticket.plan.title,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TicketLargeCard(ticket: ticket),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TicketUseMenu(ticket: ticket),
            ),
          ],
        ),
      ),
    );
  }
}
