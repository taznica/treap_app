import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';
import 'package:gohoubi_app/models/plan.dart';

import 'components/plan_large_card.dart';
import 'components/tsumitate_start_button.dart';

class PlanLargeView extends StatelessWidget {
  final Accommodation accommodation;
  final Plan plan;

  const PlanLargeView({
    Key key,
    this.accommodation,
    this.plan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          accommodation.name,
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            PlanLargeCard(plan: plan),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TsumitateStartButton(plan: plan),
            ),
          ],
        ),
      ),
    );
  }
}
