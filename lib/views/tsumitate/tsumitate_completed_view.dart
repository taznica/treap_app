import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treap_app/components/primary_button.dart';
import 'package:treap_app/models/user.dart';

import 'components/progress_card.dart';
import 'components/tsumitate_sliver_app_bar.dart';
import 'ticket_view.dart';

class TsumitateCompletedView extends StatelessWidget {
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
                  totalAmount: 32000,
                  progressImage: 'assets/images/progress/progress_100.png',
                  scheduledDate: '2021/11/3',
                  remainingDays: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 8.0,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '積立が完了しました！',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                PrimaryButton(
                  title: 'チケットを表示する',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TicketView();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
