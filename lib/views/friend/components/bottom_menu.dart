import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/message.dart';

import 'media_button.dart';
import 'message_field.dart';
import 'send_button.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key key,
    @required this.messages,
    @required this.textFieldController,
    @required this.onTappedSendButton,
  }) : super(key: key);

  final List<Message> messages;
  final TextEditingController textFieldController;
  final Function onTappedSendButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          bottom: 10.0,
        ),
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            MediaButton(),
            SizedBox(
              width: 15,
            ),
            MessageField(controller: textFieldController),
            SizedBox(
              width: 15,
            ),
            SendButton(
              onPressed: onTappedSendButton,
            )
          ],
        ),
      ),
    );
  }
}
