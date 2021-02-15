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
  image: 'assets/images/me/aya.png',
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
    image: 'assets/images/friends/1_friend_eika.png',
  ),
  User(
    id: 2,
    name: 'Moeno',
    image: 'assets/images/friends/2_friend_moeno.png',
  ),
  User(
    id: 3,
    name: 'Yume',
    image: 'assets/images/friends/3_friend_yume.png',
  ),
  User(
    id: 4,
    name: 'Keisuke',
    image: 'assets/images/friends/4_friend_keisuke.png',
  ),
  User(
    id: 5,
    name: 'Mirei',
    image: 'assets/images/friends/5_friend_mirei.png',
  ),
  User(
    id: 6,
    name: 'Takatoshi',
    image: 'assets/images/friends/6_friend_takatoshi.png',
  ),
];
