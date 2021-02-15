import 'package:flutter/material.dart';
import 'package:treap_app/models/accommodation.dart';

class HashtagText extends StatelessWidget {
  const HashtagText({
    Key key,
    @required this.accommodation,
  }) : super(key: key);

  final Accommodation accommodation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          '#' + accommodation.hashtags[0] + ' #' + accommodation.hashtags[1],
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
