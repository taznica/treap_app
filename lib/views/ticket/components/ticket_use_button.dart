import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/ticket.dart';
import 'package:gohoubi_app/views/ticket/components/ticket_use_view.dart';

class TicketUseButton extends StatelessWidget {
  final Ticket ticket;

  const TicketUseButton({
    Key key,
    this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 64.0,
            right: 64.0,
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return TicketUseView();
                },
              ));
            },
            color: treapColor,
            splashColor: treapAccentColor,
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
