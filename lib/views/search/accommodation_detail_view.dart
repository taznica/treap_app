import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/components/primary_button.dart';
import 'package:gohoubi_app/models/accommodation.dart';
import 'package:gohoubi_app/views/search/plan_select_view.dart';

import 'components/accommodation_info/accommodation_info.dart';

class AccommodationDetailView extends StatelessWidget {
  final Accommodation accommodation;

  const AccommodationDetailView({
    Key key,
    this.accommodation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 300,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                accommodation.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Hero(
                tag: accommodation.id,
                child: Image.asset(
                  accommodation.images[0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                AccommodationInfo(accommodation: accommodation),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: PrimaryButton(
                    title: '積立を始める',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return PlanSelectView(accommodation: accommodation);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
