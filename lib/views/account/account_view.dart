import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/user.dart';

import 'components/account_list_tile.dart';
import 'components/profile_image.dart';
import 'components/profile_name.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40.0,
          bottom: 4.0,
          left: 4.0,
          right: 4.0,
        ),
        child: ListView(
          children: [
            ProfileImage(
              context: context,
              image: user.image,
            ),
            ProfileName(
              context: context,
              name: user.name,
            ),
            AccountListTile(
              context: context,
              title: Text('プロフィールの変更'),
              press: () {},
            ),
            AccountListTile(
              context: context,
              title: Text('支払い方法の変更'),
              press: () {},
            ),
            AccountListTile(
              context: context,
              title: Text('ヘルプ'),
              press: () {},
            ),
            AccountListTile(
              context: context,
              title: Text('利用規約'),
              press: () {},
            ),
            AccountListTile(
              context: context,
              title: Text('プライバシーポリシー'),
              press: () {},
            ),
            AccountListTile(
              context: context,
              title: Text('ログアウト'),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
