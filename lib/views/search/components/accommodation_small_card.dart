import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/accommodation.dart';

class AccommodationSmallCard extends StatelessWidget {
  final Accommodation accommodation;
  final Function press;

  const AccommodationSmallCard({
    Key key,
    this.accommodation,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12.0,
        left: 12.0,
        right: 12.0,
      ),
      child: GestureDetector(
        onTap: press,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          child: SizedBox(
            height: 500,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: <Widget>[
                Image.asset(
                  accommodation.image,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        accommodation
                            .type, // TODO: accommodation's short description
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          accommodation.name,
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Text(
                        accommodation.address,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      accommodation.type, // TODO: accommodation's hash tag
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // child: Row(
        //   children: <Widget>[
        //     Padding(
        //       padding: const EdgeInsets.all(20.0),
        //       child: ClipRRect(
        //         borderRadius: BorderRadius.circular(12),
        //         child: Image.asset(
        //           accommodation.image,
        //           height: 150,
        //           width: 150,
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           Text(
        //             accommodation.name,
        //             style: Theme.of(context)
        //                 .textTheme
        //                 .headline6
        //                 .copyWith(fontWeight: FontWeight.bold),
        //           ),
        //           Text(accommodation.address),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
