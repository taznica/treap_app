import 'accommodation.dart';

class Plan {
  final int id, term;
  final Accommodation accommodation;

  Plan({
    this.id,
    this.term,
    this.accommodation,
  });
}

Plan plan = Plan(
  id: 0,
  term: 6,
  accommodation: accommodations[2],
);
