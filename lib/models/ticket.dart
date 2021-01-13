import 'package:gohoubi_app/models/plan.dart';

class Ticket {
  final int id;
  final bool used;
  final Plan plan;

  Ticket({
    this.id,
    this.used,
    this.plan,
  });
}
