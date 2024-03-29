import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treap_app/constants.dart';

import 'account/account_view.dart';
import 'friend/friend_view.dart';
import 'search/search_view.dart';
import 'tsumitate/tsumitate_completed_view.dart';

const List<String> labels = [
  'さがす',
  'つみたて',
  'フレンド',
  'アカウント',
];

class HomeTabView extends StatefulWidget {
  @override
  _HomeTabViewState createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  int currentIndex = 0;

  final List<Widget> views = [
    SearchView(),
    // TsumitateView(),
    TsumitateCompletedView(),
    FriendView(),
    AccountView(),
  ];

  final List<BottomNavigationBarItem> barItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: labels[0],
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.money_yen_circle_fill),
      label: labels[1],
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person_3_fill),
      label: labels[2],
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person_fill),
      label: labels[3],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: treapColor,
        unselectedItemColor: Colors.black87,
        selectedFontSize: 12.0, // same as unselectedFontSize
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        items: barItems,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
