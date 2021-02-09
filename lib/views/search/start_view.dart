import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';

import '../home_tab_view.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/treap_logo_icon.png',
            height: 160,
          ),
          Text(
            '積立が始まりました！',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80.0,
              left: 24.0,
              right: 24.0,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.black87,
                    ),
                children: [
                  TextSpan(text: '積立状況の確認・変更は\n'),
                  TextSpan(
                    text: 'つみたてタブ',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: treapColor,
                        ),
                  ),
                  TextSpan(text: 'から行うことができます。'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 32.0,
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 64.0,
                right: 64.0,
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return HomeTabView();
                  }));
                },
                color: Colors.white,
                splashColor: treapAccentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: treapColor)),
                height: 50,
                minWidth: 150,
                child: Align(
                  child: Text(
                    '戻る',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: treapColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
