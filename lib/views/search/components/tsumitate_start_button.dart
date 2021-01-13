import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/plan.dart';

class TsumitateStartButton extends StatelessWidget {
  final Plan plan;

  const TsumitateStartButton({
    Key key,
    this.plan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 64.0,
            right: 64.0,
          ),
          child: FlatButton(
            onPressed: () {},
            color: Colors.amber,
            splashColor: Colors.amberAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 50,
            minWidth: 200,
            child: Align(
              child: Text(
                'このプランを選ぶ',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
