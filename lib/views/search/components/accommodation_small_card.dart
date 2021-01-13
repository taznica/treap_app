import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

class AccommodationSmallCard extends StatelessWidget {
  final Accommodation accommodation;
  final Function press;

  const AccommodationSmallCard({
    Key key,
    this.accommodation,
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
                      accommodation.image,
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
                        accommodation.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(accommodation.address),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
