import 'package:flutter/material.dart';
import 'package:gohoubi_app/components/item_small_card.dart';
import 'package:gohoubi_app/components/top_app_bar.dart';
import 'package:gohoubi_app/models/user.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: 'チケット',
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemSmallCard(
            item: user.tickets[index].item,
            press: () {},
          );
        },
        itemCount: user.tickets.length,
      ),
    );
  }
}
