import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/user.dart';

import 'components/ticket_large_view.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TicketLargeView(ticket: user.tickets[0]);
  }
}
