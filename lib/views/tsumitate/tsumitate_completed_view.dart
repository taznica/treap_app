import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';
import 'package:gohoubi_app/models/user.dart';
import 'package:gohoubi_app/views/ticket/components/ticket_use_view.dart';

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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '積立状況',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              color: treapColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Colors.grey.withOpacity(0.1),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    left: 16.0,
                                    right: 8.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '現在の合計積立額',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        '32000円',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/progress_100.png',
                                  height: 120,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 24.0,
                                    left: 0.0,
                                    right: 8.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '旅行予定日',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        '2021/11/3',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 24.0,
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        '残り日数',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        '2日',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         '一緒に積立をしているフレンド',
                //         style: Theme.of(context).textTheme.subtitle2.copyWith(
                //               color: treapColor,
                //               fontWeight: FontWeight.bold,
                //             ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(
                //           top: 8.0,
                //           bottom: 4.0,
                //           left: 4.0,
                //           right: 4.0,
                //         ),
                //         child: Container(
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(8.0)),
                //           height: 200,
                //           child: ListView(
                //             children: [
                //               ListTile(
                //                 title: Text(
                //                   'Eika',
                //                   style: Theme.of(context)
                //                       .textTheme
                //                       .subtitle1
                //                       .copyWith(
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                 ),
                //                 leading: Image.asset(
                //                   'assets/images/1_friend_eika.png',
                //                   height: 40,
                //                 ),
                //                 tileColor: Colors.grey.withOpacity(0.1),
                //               ),
                //               ListTile(
                //                 title: Text(
                //                   'Moeno',
                //                   style: Theme.of(context)
                //                       .textTheme
                //                       .subtitle1
                //                       .copyWith(
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                 ),
                //                 leading: Image.asset(
                //                   'assets/images/2_friend_moeno.png',
                //                   height: 40,
                //                 ),
                //                 tileColor: Colors.grey.withOpacity(0.1),
                //               ),
                //               ListTile(
                //                 title: Text(
                //                   'Mirei',
                //                   style: Theme.of(context)
                //                       .textTheme
                //                       .subtitle1
                //                       .copyWith(
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                 ),
                //                 leading: Image.asset(
                //                   'assets/images/5_friend_mirei.png',
                //                   height: 40,
                //                 ),
                //                 tileColor: Colors.grey.withOpacity(0.1),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
                              return TicketUseView();
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
