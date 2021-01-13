import 'accommodation.dart';
import 'ticket.dart';

class User {
  final int id;
  final String name, image;
  final List<Ticket> tickets;

  User({
    this.id,
    this.name,
    this.image,
    this.tickets,
  });
}

User user = User(
  id: 0,
  name: '竈門 炭治郎',
  image: 'assets/images/person.png',
  tickets: [
    Ticket(
      id: 0,
      used: false,
      plan: accommodations[0].plans[0],
    ),
  ],
);
