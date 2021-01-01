import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    Key key,
    @required this.context,
    @required this.name,
  }) : super(key: key);

  final BuildContext context;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline5.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
        ),
      ),
    );
  }
}
