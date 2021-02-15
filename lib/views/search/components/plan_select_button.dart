import 'package:flutter/material.dart';
import 'package:treap_app/constants.dart';
import 'package:treap_app/models/accommodation.dart';

import '../friend_select_view.dart';

class PlanSelectButton extends StatelessWidget {
  const PlanSelectButton({
    Key key,
    @required this.accommodation,
    @required this.term,
  }) : super(key: key);

  final Accommodation accommodation;
  final int term;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 64.0,
          right: 64.0,
        ),
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FriendSelectView(
                    accommodation: accommodation,
                    term: term,
                  );
                },
                // fullscreenDialog: true,
              ),
            );
          },
          color: treapColor,
          splashColor: treapAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 100,
          minWidth: 200,
          child: Align(
            child: Column(
              children: [
                Text(
                  term.toString() + 'ヶ月プラン',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '1ヶ月あたり' +
                        (accommodation.price / term).ceil().toString() +
                        '円',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
