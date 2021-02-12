import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/message.dart';

import 'chat_message_from_friend.dart';
import 'chat_message_from_me.dart';
import 'chat_message_from_treap.dart';

class ChatTimeline extends StatelessWidget {
  const ChatTimeline({
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
              return ChatMessageFromFriend(
                messages: messages,
                index: index,
              );
            } else if (messages[index].sender == "treap") {
              return ChatMessageFromTreap(
                messages: messages,
                index: index,
              );
            } else {
              return ChatMessageFromMe(
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
