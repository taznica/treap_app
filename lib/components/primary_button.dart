import 'package:flutter/material.dart';
import 'package:treap_app/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.title,
    @required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 64.0,
          right: 64.0,
        ),
        child: FlatButton(
          onPressed: onPressed,
          color: treapColor,
          splashColor: treapAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 50,
          minWidth: 200,
          child: Align(
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
