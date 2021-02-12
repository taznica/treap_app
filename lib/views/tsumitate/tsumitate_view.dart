import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/user.dart';

import 'components/friends_card.dart';
import 'components/my_rule_achievement_card.dart';
import 'components/my_rule_history_card.dart';
import 'components/progress_card.dart';
import 'components/tsumitate_sliver_app_bar.dart';

class TsumitateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          TsumitateSliverAppBar(user: user),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ProgressCard(
                  totalAmount: 25600,
                  progressImage: 'assets/images/progress_823.png',
                  scheduledDate: '2021/11/3',
                  remainingDays: 80,
                ),
                FriendsCard(),
                MyRuleAchievementCard(
                    doughnutGraphImage: 'assets/images/progress_myrule.png',
                    rate: 75,
                    days: '21 / 28'),
                MyRuleHistoryCard(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 24.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 64.0,
                      right: 64.0,
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      color: treapColor,
                      splashColor: treapAccentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 50,
                      minWidth: 200,
                      child: Align(
                        child: Text(
                          'マイルールを編集する',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
