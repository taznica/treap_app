import 'package:flutter/material.dart';
import 'package:gohoubi_app/models/plan.dart';

class TsumitateMenu extends StatefulWidget {
  final Plan plan;

  const TsumitateMenu({
    Key key,
    this.plan,
  }) : super(key: key);

  @override
  _TsumitateMenuState createState() => _TsumitateMenuState();
}

class _TsumitateMenuState extends State<TsumitateMenu> {
  double _sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    int pricePerDay = (widget.plan.price / _sliderValue).ceil();

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Slider(
                    value: _sliderValue,
                    min: 50,
                    max: 500,
                    divisions: 45,
                    label: '1日あたり' + _sliderValue.round().toString() + '円',
                    activeColor: Colors.amber,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value.roundToDouble();
                      });
                    }),
                Text('獲得まで' + pricePerDay.toString() + '日'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 64.0,
                right: 64.0,
              ),
              child: FlatButton(
                onPressed: () {},
                color: Colors.amber,
                splashColor: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                height: 50,
                minWidth: 200,
                child: Align(
                  child: Text(
                    '積立をはじめる',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
