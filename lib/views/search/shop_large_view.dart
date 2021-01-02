import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/shop.dart';

import 'components/item_small_card.dart';
import 'components/shop_info.dart';
import 'item_large_view.dart';

class ShopLargeView extends StatelessWidget {
  final Shop shop;

  const ShopLargeView({
    Key key,
    this.shop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(true);
      },
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 80.0,
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              floating: false,
              expandedHeight: 400,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  shop.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image.asset(
                  shop.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  ShopInfo(shop: shop),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ItemSmallCard(
                    item: shop.items[index],
                    press: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ItemLargeView(
                            shop: shop,
                            item: shop.items[index],
                          );
                        },
                      ));
                    },
                  );
                },
                childCount: shop.items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
