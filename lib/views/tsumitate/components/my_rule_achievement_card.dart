import 'package:flutter/material.dart';

import 'card_title.dart';

class MyRuleAchievementCard extends StatelessWidget {
  const MyRuleAchievementCard({
    Key key,
    @required this.doughnutGraphImage,
    @required this.rate,
    @required this.days,
  }) : super(key: key);

  final String doughnutGraphImage;
  final int rate;
  final String days;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardTitle(
            title: 'マイルール達成度',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 4.0,
              left: 4.0,
              right: 4.0,
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.grey.withOpacity(0.1),
              child: Container(
                height: 240,
                width: 400,
                child: Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    doughnutGraphImage,
                    height: 200,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        rate.toString() + '%',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        days + '日',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
