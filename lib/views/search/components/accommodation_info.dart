import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

import 'accommodation_info_0_pariston.dart';
import 'accommodation_info_1_dipro.dart';
import 'accommodation_info_2_kagerou.dart';
import 'accommodation_info_3_cyan.dart';
import 'accommodation_info_4_matsuya.dart';
import 'accommodation_info_5_white.dart';

class AccommodationInfo extends StatelessWidget {
  const AccommodationInfo({
    Key key,
    @required this.accommodation,
  }) : super(key: key);

  final Accommodation accommodation;

  @override
  Widget build(BuildContext context) {
    switch (accommodation.id) {
      case 0:
        return AccommodationInfo0Pariston();
        break;
      case 1:
        return AccommodationInfo1Dipro();
        break;
      case 2:
        return AccommodationInfo2Kagerou();
        break;
      case 3:
        return AccommodationInfo3Cyan();
        break;
      case 4:
        return AccommodationInfo4Matsuya();
        break;
      case 5:
        return AccommodationInfo5White();
        break;
      default:
        return AccommodationInfo0Pariston();
    }
  }
}
