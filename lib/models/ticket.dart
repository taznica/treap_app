class Ticket {
  final int id, price;
  final String title, description, image;

  Ticket({
    this.id,
    this.price,
    this.title,
    this.description,
    this.image,
  });

  String stringOfPrice() {
    return this.price.toString() + '円（税込）';
  }
}
