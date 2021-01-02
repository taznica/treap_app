import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/shop.dart';

class ShopSmallCard extends StatelessWidget {
  final Shop shop;
  final Function press;

  const ShopSmallCard({
    Key key,
    this.shop,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      shop.image,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        shop.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(shop.address),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
