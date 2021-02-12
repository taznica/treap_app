import 'package:flutter/material.dart';

class FriendsListTile extends StatelessWidget {
  const FriendsListTile({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      leading: Image.asset(
        image,
        height: 40,
      ),
      tileColor: Colors.grey.withOpacity(0.1),
    );
  }
}
