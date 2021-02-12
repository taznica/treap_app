import 'package:flutter/material.dart';

class MyRuleHistoryVerticalBar extends StatelessWidget {
  const MyRuleHistoryVerticalBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      left: 29,
      child: Image.asset(
        'assets/images/progress_step_bar.png',
        height: 180,
      ),
    );
  }
}
