import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

import 'accommodation_large_view.dart';
import 'components/accommodation_small_card.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: ListView.builder(
        itemCount: accommodations.length,
        itemBuilder: (context, index) => AccommodationSmallCard(
          accommodation: accommodations[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AccommodationLargeView(
                    accommodation: accommodations[index],
                  );
                },
                // fullscreenDialog: true,
              ),
            );
          },
        ),
      ),
    );
  }
}
