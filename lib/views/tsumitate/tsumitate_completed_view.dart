import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/user.dart';

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
                  progressImage: 'assets/images/progress_100.png',
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
                      color: treapColor,
                      splashColor: treapAccentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 50,
                      minWidth: 200,
                      child: Align(
                        child: Text(
                          'チケットを表示する',
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
