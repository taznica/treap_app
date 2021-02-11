import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/accommodation.dart';
import 'package:gohoubi_app/views/search/plan_select_view.dart';

import 'components/accommodation_info.dart';

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
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 56.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 64.0,
                      right: 64.0,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PlanSelectView(accommodation: accommodation);
                        }));
                      },
                      color: treapColor,
                      splashColor: treapAccentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 50,
                      minWidth: 200,
                      child: Align(
                        child: Text(
                          '積立を始める',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
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
