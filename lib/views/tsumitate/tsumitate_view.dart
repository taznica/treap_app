import 'package:flutter/material.dart';
import 'package:treap_app/components/primary_button.dart';
import 'package:treap_app/models/user.dart';

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
                  progressImage: 'assets/images/progress/progress_823.png',
                  scheduledDate: '2021/11/3',
                  remainingDays: 80,
                ),
                FriendsCard(),
                MyRuleAchievementCard(
                    doughnutGraphImage:
                        'assets/images/progress/progress_myrule.png',
                    rate: 75,
                    days: '21 / 28'),
                MyRuleHistoryCard(),
                PrimaryButton(
                  title: 'マイルールを編集する',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
