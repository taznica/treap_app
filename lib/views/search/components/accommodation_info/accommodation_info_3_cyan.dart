import 'package:flutter/material.dart';

class AccommodationInfo3Cyan extends StatelessWidget {
  const AccommodationInfo3Cyan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '本物の風格を醸す、わずか8部屋の私邸。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/0_cyan_1.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '全室スイートルーム、源泉掛け流しの露天風呂付き隠れ家。昔ながらの和の心地よさと、欧風の上質なおもてなし。旅慣れた達人にもひとクラス上の旅を見つけて頂けますよう、本物を知る大人だけが憩う新しいふる里として、青の都、THE CYAN RESORT IZUは誕生しました。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/0_cyan_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '遥か遠くまで広がる海を望み、水と戯れながら、心ゆくまでお寛ぎください。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
