import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/user.dart';
import 'package:gohoubi_app/views/tsumitate/ticket_view.dart';

import 'components/progress_card.dart';

class TsumitateCompletedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 300,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 8.0, bottom: 16.0),
              title: Text(
                user.tickets[0].plan.accommodation.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.asset(
                user.tickets[0].plan.accommodation.images[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
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
