import 'package:gohoubi_app/models/item.dart';

class Ticket {
  final int id;
  final bool used;
  final Item item;

  Ticket({
    this.id,
    this.used,
    this.item,
  });
}
