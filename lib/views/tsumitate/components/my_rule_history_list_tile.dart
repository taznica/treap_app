import 'package:flutter/material.dart';

class MyRuleHistoryListTile extends StatelessWidget {
  const MyRuleHistoryListTile({
    Key key,
    @required this.date,
    @required this.title,
    @required this.tsumitateAmount,
  }) : super(key: key);

  final String date;
  final String title;
  final int tsumitateAmount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        date,
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: Text(
        ' ' + title,
        style: Theme.of(context).textTheme.subtitle2.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Image.asset(
          'assets/images/progress_step_icon.png',
          height: 30,
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(
          tsumitateAmount.toString() + '円',
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      tileColor: Colors.grey.withOpacity(0.1),
    );
  }
}
