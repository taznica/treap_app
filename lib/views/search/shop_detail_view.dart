import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/shop.dart';
import 'package:gohoubi_app/views/search/components/ticket_card.dart';

class ShopDetailView extends StatelessWidget {
  final Shop shop;

  const ShopDetailView({
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
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shop.address,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        shop.url,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TicketCard(
                      ticket: shop.tickets[index],
                      press: () {},
                    ),
                  );
                },
                childCount: shop.tickets.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}