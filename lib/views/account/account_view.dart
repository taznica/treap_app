import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/user.dart';

import 'components/account_list_tile.dart';
import 'components/profile_image.dart';
import 'components/profile_name.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'アカウント',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
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
