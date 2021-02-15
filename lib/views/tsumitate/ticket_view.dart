import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: treapColor,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        color: treapColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(32.0),
              child: Image.asset(
                'assets/images/codes/sakan_qrcode.png',
              ),
            ),
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
      ),
    );
  }
}
