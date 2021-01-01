import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget with PreferredSizeWidget {
  final String title;

  const TopAppBar({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _TopAppBarState createState() => _TopAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0,
    );
  }
}
