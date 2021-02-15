import 'package:flutter/material.dart';
import 'package:treap_app/models/accommodation.dart';

import '../../accommodation_detail_view.dart';
import 'area_text.dart';
import 'hashtag_text.dart';
import 'name_text.dart';

class AccommodationCard extends StatelessWidget {
  final Accommodation accommodation;

  const AccommodationCard({
    Key key,
    this.accommodation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12.0,
        left: 12.0,
        right: 12.0,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AccommodationDetailView(
                  accommodation: accommodation,
                );
              },
              // fullscreenDialog: true,
            ),
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          child: SizedBox(
            height: 500,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: <Widget>[
                Hero(
                  tag: accommodation.id,
                  child: Image.asset(
                    accommodation.images[0],
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AreaText(text: accommodation.area),
                      NameText(text: accommodation.name),
                    ],
                  ),
                ),
                HashtagText(accommodation: accommodation),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
