import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

import 'components/plan_select_button.dart';

class PlanSelectView extends StatelessWidget {
  const PlanSelectView({
    Key key,
    @required this.accommodation,
  }) : super(key: key);

  final Accommodation accommodation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'プランを選ぶ',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PlanSelectButton(
            accommodation: accommodation,
            term: 6,
          ),
          PlanSelectButton(
            accommodation: accommodation,
            term: 12,
          ),
        ],
      ),
    );
  }
}
