import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';

class TicketUseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: treapColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(32.0),
              child: Image.asset('assets/images/sakan_qrcode.png')),
          Padding(
            padding: const EdgeInsets.only(top: 64.0, bottom: 64.0),
            child: Text(
              'フロントに提示してください',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
