import 'package:flutter/material.dart';

class InfoParagraph extends StatelessWidget {
  const InfoParagraph({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: Colors.black87,
            ),
      ),
    );
  }
}
