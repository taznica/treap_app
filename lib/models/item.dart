import 'shop.dart';

class Item {
  final int id, price;
  final String title, description, image;
  final Shop shop;

  Item({
    this.id,
    this.price,
    this.title,
    this.description,
    this.image,
    this.shop,
  });

  String stringOfPrice() {
    return this.price.toString() + '円（税込）';
  }
}
