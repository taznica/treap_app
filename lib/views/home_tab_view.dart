import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/components/top_app_bar.dart';

import 'account/account_view.dart';
import 'reserve/reserve_view.dart';
import 'search/search_view.dart';
import 'ticket/ticket_view.dart';

const List<String> labels = [
  'さがす',
  'つみたて',
  'チケット',
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
    ReserveView(),
    TicketView(),
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
      icon: Icon(CupertinoIcons.ticket_fill),
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
      appBar: TopAppBar(
        title: labels[currentIndex],
      ),
      body: views[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
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
