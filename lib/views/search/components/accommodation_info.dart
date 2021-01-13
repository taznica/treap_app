import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

class AccommodationInfo extends StatelessWidget {
  const AccommodationInfo({
    Key key,
    @required this.accommodation,
  }) : super(key: key);

  final Accommodation accommodation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            accommodation.type,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            accommodation.address,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            accommodation.url,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
