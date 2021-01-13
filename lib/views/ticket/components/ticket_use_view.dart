import 'package:flutter/material.dart';

class TicketUseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 64.0),
              child: Text(
                'フロントに提示してください',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset('assets/images/sakan_barcode.png'),
            Image.asset('assets/images/sakan_qrcode.png'),
          ],
        ),
      ),
    );
  }
}
