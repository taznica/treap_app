import 'package:flutter/material.dart';

import 'card_title.dart';
import 'my_rule_history_list_tile.dart';
import 'my_rule_history_vertical_bar.dart';

class MyRuleHistoryCard extends StatelessWidget {
  const MyRuleHistoryCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardTitle(
            title: 'マイルール達成履歴',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 4.0,
              left: 4.0,
              right: 4.0,
            ),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
              height: 220,
              child: Stack(
                children: [
                  ListView(
                    children: [
                      MyRuleHistoryListTile(
                        date: '2/13',
                        title: 'おやつを我慢する',
                        tsumitateAmount: 200,
                      ),
                      MyRuleHistoryListTile(
                        date: '2/13',
                        title: 'おやつを我慢する',
                        tsumitateAmount: 200,
                      ),
                      MyRuleHistoryListTile(
                        date: '2/13',
                        title: 'おやつを我慢する',
                        tsumitateAmount: 200,
                      ),
                    ],
                  ),
                  MyRuleHistoryVerticalBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
