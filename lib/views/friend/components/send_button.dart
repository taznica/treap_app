import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(
        Icons.send,
        color: Colors.white,
        size: 18.0,
      ),
      backgroundColor: treapColor,
      elevation: 0,
    );
  }
}
