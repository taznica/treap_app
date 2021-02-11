import 'package:flutter/material.dart';
import 'package:gohoubi_app/constants.dart';

class PlanSettingView extends StatelessWidget {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                    'このプランを選ぶ',
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
    );
  }
}
