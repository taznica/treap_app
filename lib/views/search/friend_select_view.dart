import 'package:flutter/material.dart';
import 'package:gohoubi_app/components/primary_button.dart';
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

  List<String> friendPhotos = [
    'assets/images/1_friend_eika.png',
    'assets/images/2_friend_moeno.png',
    'assets/images/3_friend_yume.png',
    'assets/images/4_friend_keisuke.png',
    'assets/images/5_friend_mirei.png',
    'assets/images/6_friend_takatoshi.png',
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
                          secondary: Image.asset(
                            friendPhotos[index],
                          ),
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
            PrimaryButton(
              title: '積立を始める',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StartView();
                    },
                  ),
                );
              },
            ),
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
