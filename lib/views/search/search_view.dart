import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

import 'accommodation_detail_view.dart';
import 'components/accommodation_card.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 8.0,
        right: 8.0,
      ),
      child: ListView.builder(
          itemCount: accommodations.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 32.0,
                  bottom: 8.0,
                  left: 16.0,
                ),
                child: Text(
                  'さがす',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              );
            } else {
              return AccommodationCard(
                accommodation: accommodations[index - 1],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AccommodationDetailView(
                          accommodation: accommodations[index - 1],
                        );
                      },
                      // fullscreenDialog: true,
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
