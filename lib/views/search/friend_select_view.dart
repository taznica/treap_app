import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/accommodation.dart';
import 'package:gohoubi_app/models/user.dart';
import 'package:gohoubi_app/views/search/start_view.dart';

class FriendSelectView extends StatefulWidget {
  const FriendSelectView({
    Key key,
    @required this.accommodation,
    @required this.term,
  }) : super(key: key);

  final Accommodation accommodation;
  final int term;

  @override
  _FriendSelectViewState createState() => _FriendSelectViewState();
}

class _FriendSelectViewState extends State<FriendSelectView> {
  List<bool> friendStatus = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'フレンドを選ぶ',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: new ListView.builder(
                itemCount: friendStatus.length,
                itemBuilder: (context, index) => Container(
                  child: Card(
                    child: Column(
                      children: [
                        CheckboxListTile(
                          title: Text(
                            friends[index].name,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          value: friendStatus[index],
                          onChanged: (bool value) {
                            selectItem(value, index);
                          },
                          activeColor: treapColor,
                          contentPadding: const EdgeInsets.all(16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                      MaterialPageRoute(builder: (context) {
                        return StartView();
                      }),
                    );
                  },
                  color: treapColor,
                  splashColor: treapAccentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 50,
                  minWidth: 200,
                  child: Align(
                    child: Text(
                      '積立を始める',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     bottom: 16.0,
            //     left: 16.0,
            //     right: 16.0,
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //       left: 64.0,
            //       right: 64.0,
            //     ),
            //     child: FlatButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) {
            //             return StartView();
            //           }),
            //         );
            //       },
            //       color: Colors.white,
            //       splashColor: treapAccentColor,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8.0),
            //         side: BorderSide(color: treapColor),
            //       ),
            //       height: 50,
            //       minWidth: 200,
            //       child: Align(
            //         child: Text(
            //           'スキップして積立を始める',
            //           style: Theme.of(context).textTheme.bodyText2.copyWith(
            //                 color: treapColor,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void selectItem(bool value, int index) {
    setState(() {
      friendStatus[index] = value;
    });
  }
}
