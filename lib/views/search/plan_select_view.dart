import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/accommodation.dart';
import 'package:gohoubi_app/views/search/friend_select_view.dart';

class PlanSelectView extends StatelessWidget {
  const PlanSelectView({
    Key key,
    @required this.accommodation,
  }) : super(key: key);

  final Accommodation accommodation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'プランを選ぶ',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
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
                          term: 6,
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
                        '6ヶ月プラン',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '1ヶ月あたり' +
                              (accommodation.price / 6).ceil().toString() +
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
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 64.0,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FriendSelectView(
                          accommodation: accommodation,
                          term: 12,
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
                        '12ヶ月プラン',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '1ヶ月あたり' +
                              (accommodation.price / 12).ceil().toString() +
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
          ),
        ],
      ),
    );
  }
}
