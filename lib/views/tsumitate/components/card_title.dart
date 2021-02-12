import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle2.copyWith(
            color: treapColor,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
