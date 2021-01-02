import 'package:flutter/material.dart';
import 'package:gohoubi_app/components/top_app_bar.dart';
import 'package:gohoubi_app/models/shop.dart';

import 'components/shop_small_card.dart';
import 'shop_large_view.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: 'さがす',
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: shops.length,
          itemBuilder: (context, index) => ShopSmallCard(
            shop: shops[index],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ShopLargeView(
                      shop: shops[index],
                    );
                  },
                  // fullscreenDialog: true,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
