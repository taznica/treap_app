import 'package:flutter/material.dart';
import 'package:treap_app/models/message.dart';

import 'components/bottom_menu.dart';
import 'components/timeline.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<Message> messages = [
    Message(
      text: 'あと2ヶ月頑張ろう！',
      sender: 'friend',
      icon: 'assets/images/friends/1_friend_eika.png',
    ),
    Message(
      text: '「御宿 かげろう」にあるガラス美術館が人気です！',
      image: 'assets/images/accommodations/2_kagerou_glass_1.jpg',
      sender: 'treap',
      icon: 'assets/images/treap_logo_icon.png',
    ),
    Message(
      text: 'ここよさそうだね👏',
      sender: 'friend',
      icon: 'assets/images/friends/2_friend_moeno.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'トーク',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: <Widget>[
          Timeline(messages: messages),
          BottomMenu(
            messages: messages,
            textFieldController: controller,
            onTappedSendButton: () {
              FocusScope.of(context).unfocus();
              setState(() {
                messages.add(
                  Message(
                    text: controller.text,
                    sender: 'me',
                  ),
                );
              });
              controller.clear();
            },
          )
        ],
      ),
    );
  }
}
