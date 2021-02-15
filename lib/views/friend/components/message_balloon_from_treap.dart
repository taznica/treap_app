import 'package:flutter/material.dart';
import 'package:treap_app/models/message.dart';

import '../glass_museum_article_view.dart';

class MessageBalloonFromTreap extends StatelessWidget {
  const MessageBalloonFromTreap({
    Key key,
    @required this.messages,
    @required this.index,
  }) : super(key: key);

  final List<Message> messages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return GlassMuseumArticleView();
          }),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 10.0,
          right: 72.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  messages[index].icon,
                  height: 40,
                ),
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.shade200,
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        messages[index].text,
                        style: TextStyle(fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Image.asset(
                          messages[index].image,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '詳細を見る',
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
