import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/ticket.dart';

class TicketCard extends StatelessWidget {
  final Ticket ticket;
  final Function press;

  const TicketCard({
    Key key,
    this.ticket,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
          child: Column(
        children: [
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    ticket.image,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      ticket.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(ticket.description),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
