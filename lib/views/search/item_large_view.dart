import 'package:flutter/material.dart';
import 'package:gohoubi_app/components/tsumitate_menu.dart';
import 'package:gohoubi_app/models/item.dart';
import 'package:gohoubi_app/models/shop.dart';

import '../../components/item_large_card.dart';

class ItemLargeView extends StatelessWidget {
  final Shop shop;
  final Item item;

  const ItemLargeView({
    Key key,
    this.shop,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          shop.name,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ItemLargeCard(item: item),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: TsumitateMenu(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
