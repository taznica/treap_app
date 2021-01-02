import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account/account_view.dart';
import 'reserve/reserve_view.dart';
import 'search/search_view.dart';
import 'ticket/ticket_view.dart';

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
      label: 'さがす',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.money_yen_circle_fill),
      label: 'つみたて',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.ticket_fill),
      label: 'チケット',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person_fill),
      label: 'アカウント',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
