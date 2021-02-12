import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/message.dart';

import 'message_balloon_from_friend.dart';
import 'message_balloon_from_me.dart';
import 'message_balloon_from_treap.dart';

class Timeline extends StatelessWidget {
  const Timeline({
    Key key,
    @required this.messages,
  }) : super(key: key);

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: ListView.builder(
          itemCount: messages.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            if (messages[index].sender == "friend") {
              return MessageBalloonFromFriend(
                messages: messages,
                index: index,
              );
            } else if (messages[index].sender == "treap") {
              return MessageBalloonFromTreap(
                messages: messages,
                index: index,
              );
            } else {
              return MessageBalloonFromMe(
                messages: messages,
                index: index,
              );
            }
          },
        ),
      ),
    );
  }
}
