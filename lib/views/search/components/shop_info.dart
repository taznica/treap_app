import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/shop.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({
    Key key,
    @required this.shop,
  }) : super(key: key);

  final Shop shop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            shop.type,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            shop.address,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            shop.url,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
