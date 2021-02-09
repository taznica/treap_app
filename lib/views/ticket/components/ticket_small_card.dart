import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/ticket.dart';

class TicketSmallCard extends StatelessWidget {
  final Ticket ticket;
  final Function press;

  const TicketSmallCard({
    Key key,
    this.ticket,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 4.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Card(
          // child: Column(
          //   children: [
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    ticket.plan.accommodation.images[0],
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // instead of Expanded comment outed
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 4.0,
                    bottom: 4.0,
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24.0,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            ticket.plan.accommodation.name,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 24.0,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            ticket.plan.accommodation.name,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        child: Text(
                          ticket.plan.accommodation.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 24.0,
                        child: Text(
                          ticket.plan.accommodation.stringOfPrice(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
