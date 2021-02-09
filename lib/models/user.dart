import 'package:gohoubi_app/models/plan.dart';

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
  name: 'Aya',
  image: 'assets/images/person.png',
  tickets: [
    Ticket(
      id: 0,
      used: false,
      plan: plan,
    ),
  ],
);

List<User> friends = [
  User(
    id: 1,
    name: 'Eika',
    image: 'assets/images/person.png',
  ),
  User(
    id: 2,
    name: 'Moeno',
    image: 'assets/images/person.png',
  ),
  User(
    id: 3,
    name: 'Yume',
    image: 'assets/images/person.png',
  ),
  User(
    id: 4,
    name: 'Keisuke',
    image: 'assets/images/person.png',
  ),
  User(
    id: 5,
    name: 'Mirei',
    image: 'assets/images/person.png',
  ),
  User(
    id: 6,
    name: 'Takatoshi',
    image: 'assets/images/person.png',
  ),
  // User(
  //   id: 7,
  //   name: 'Takumi',
  //   image: 'assets/images/person.png',
  // ),
  // User(
  //   id: 8,
  //   name: 'Ryo',
  //   image: 'assets/images/person.png',
  // ),
  // User(
  //   id: 9,
  //   name: 'Ai',
  //   image: 'assets/images/person.png',
  // ),
  // User(
  //   id: 10,
  //   name: 'Kumiko',
  //   image: 'assets/images/person.png',
  // ),
];
