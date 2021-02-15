import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';

class MediaButton extends StatelessWidget {
  const MediaButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: treapColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
