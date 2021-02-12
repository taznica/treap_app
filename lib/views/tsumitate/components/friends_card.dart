import 'package:flutter/material.dart';

import 'card_title.dart';
import 'friends_list_tile.dart';

class FriendsCard extends StatelessWidget {
  const FriendsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardTitle(
            title: '一緒に積立をしているフレンド',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 4.0,
              left: 4.0,
              right: 4.0,
            ),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
              height: 170,
              child: ListView(
                children: [
                  FriendsListTile(
                    title: 'Eika',
                    image: 'assets/images/1_friend_eika.png',
                  ),
                  FriendsListTile(
                    title: 'Moeno',
                    image: 'assets/images/2_friend_moeno.png',
                  ),
                  FriendsListTile(
                    title: 'Mirei',
                    image: 'assets/images/5_friend_mirei.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
