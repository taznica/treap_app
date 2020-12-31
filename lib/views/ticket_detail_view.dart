import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/ticket.dart';

class TicketDetailView extends StatefulWidget {
  final Ticket ticket;

  const TicketDetailView({
    Key key,
    this.ticket,
  }) : super(key: key);

  @override
  _TicketDetailViewState createState() => _TicketDetailViewState();
}

class _TicketDetailViewState extends State<TicketDetailView> {
  double _sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    int pricePerDay = (widget.ticket.price / _sliderValue).ceil();

    return Scaffold(
      appBar: AppBar(
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.ticket.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            widget.ticket.image,
                            height: 240,
                            width: 240,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      widget.ticket.description,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.ticket.stringOfPrice(),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        children: [
                          Slider(
                              value: _sliderValue,
                              min: 50,
                              max: 500,
                              divisions: 45,
                              label: '1日あたり' +
                                  _sliderValue.round().toString() +
                                  '円',
                              activeColor: Colors.amber,
                              onChanged: (double value) {
                                setState(() {
                                  _sliderValue = value.roundToDouble();
                                });
                              }),
                          Text('獲得まで' + pricePerDay.toString() + '日'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
            ),
            Padding(
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
                    '積立をはじめる',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
