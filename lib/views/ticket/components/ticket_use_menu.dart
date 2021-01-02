import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/ticket.dart';

class TicketUseMenu extends StatelessWidget {
  final Ticket ticket;

  const TicketUseMenu({
    Key key,
    this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.amber),
      //   borderRadius: BorderRadius.circular(6),
      // ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 64.0,
            right: 64.0,
          ),
          child: FlatButton(
            onPressed: () {},
            color: Colors.amber,
            splashColor: Colors.amberAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 50,
            minWidth: 200,
            child: Align(
              child: Text(
                'チケットを使う',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
