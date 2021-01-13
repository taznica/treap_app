import 'accommodation.dart';

class Plan {
  final int id, price;
  final String title, description, image;
  final Accommodation accommodation;

  Plan({
    this.id,
    this.price,
    this.title,
    this.description,
    this.image,
    this.accommodation,
  });

  String stringOfPrice() {
    return this.price.toString() + '円（税込）';
  }
}
