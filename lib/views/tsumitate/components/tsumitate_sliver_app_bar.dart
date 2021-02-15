import 'package:flutter/material.dart';
import 'package:treap_app/models/user.dart';

class TsumitateSliverAppBar extends StatelessWidget {
  const TsumitateSliverAppBar({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: 300,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(
          bottom: 16.0,
          left: 8.0,
        ),
        title: Text(
          user.tickets[0].plan.accommodation.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        background: Image.asset(
          user.tickets[0].plan.accommodation.images[0],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
