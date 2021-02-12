import 'package:flutter/material.dart';

class MessageField extends StatelessWidget {
  const MessageField({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Write message...",
          hintStyle: TextStyle(color: Colors.black54),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
