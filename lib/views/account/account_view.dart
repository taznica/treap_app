import 'package:flutter/material.dart';
import 'package:gohoubi_app/components/top_app_bar.dart';
import 'package:gohoubi_app/models/user.dart';

import 'components/account_list_tile.dart';
import 'components/profile_image.dart';
import 'components/profile_name.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: 'アカウント',
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
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
