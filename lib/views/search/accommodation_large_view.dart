import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

import 'components/accommodation_info.dart';
import 'components/plan_small_card.dart';
import 'plan_large_view.dart';

class AccommodationLargeView extends StatelessWidget {
  final Accommodation accommodation;

  const AccommodationLargeView({
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
              background: Image.asset(
                accommodation.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                AccommodationInfo(accommodation: accommodation),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PlanSmallCard(
                  plan: accommodation.plans[index],
                  press: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PlanLargeView(
                          accommodation: accommodation,
                          plan: accommodation.plans[index],
                        );
                      },
                    ));
                  },
                );
              },
              childCount: accommodation.plans.length,
            ),
          ),
        ],
      ),
    );
  }
}
