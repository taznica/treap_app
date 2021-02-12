import 'package:flutter/material.dart';

class InfoPhoto extends StatelessWidget {
  const InfoPhoto({
    Key key,
    @required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(path),
      ),
    );
  }
}
