import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/account/account_view.dart';
import 'views/reserve/reserve_view.dart';
import 'views/search/search_view.dart';
import 'views/ticket/ticket_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gohoubi Alpha',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeTabView(),
    );
  }
}

class HomeTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: Colors.black87,
        inactiveColor: Colors.black26,
        items: const <BottomNavigationBarItem>[
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
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView tabView;
        switch (index) {
          case 0:
            tabView = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SearchView(),
              );
            });
            break;
          case 1:
            tabView = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ReserveView(),
              );
            });
            break;
          case 2:
            tabView = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: TicketView(),
              );
            });
            break;
          case 3:
            tabView = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AccountView(),
              );
            });
            break;
        }
        return tabView;
      },
    );
  }
}
