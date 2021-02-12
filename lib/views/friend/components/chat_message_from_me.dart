import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/message.dart';

class ChatMessageFromMe extends StatelessWidget {
  const ChatMessageFromMe({
    Key key,
    @required this.messages,
    @required this.index,
  }) : super(key: key);

  final List<Message> messages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 14.0,
        right: 14.0,
        top: 10.0,
        bottom: 10.0,
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: treapTransparentColor,
          ),
          padding: EdgeInsets.all(16.0),
          child: Text(
            messages[index].text,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
