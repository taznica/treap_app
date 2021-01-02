import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/home_tab_view.dart';

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
