import 'package:flutter/material.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
    Key key,
    @required this.context,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final BuildContext context;
  final Text title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      trailing: Icon(
        Icons.arrow_forward_ios_sharp,
        size: 16.0,
      ),
      onTap: press,
    );
  }
}
