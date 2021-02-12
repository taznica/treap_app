import 'package:flutter/material.dart';

import 'info_paragraph.dart';
import 'info_photo.dart';

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
          InfoParagraph(text: '本物の風格を醸す、わずか8部屋の私邸。'),
          InfoPhoto(path: 'assets/images/0_cyan_1.png'),
          InfoParagraph(
              text:
                  '全室スイートルーム、源泉掛け流しの露天風呂付き隠れ家。昔ながらの和の心地よさと、欧風の上質なおもてなし。旅慣れた達人にもひとクラス上の旅を見つけて頂けますよう、本物を知る大人だけが憩う新しいふる里として、青の都、THE CYAN RESORT IZUは誕生しました。'),
          InfoPhoto(path: 'assets/images/0_cyan_2.png'),
          InfoParagraph(text: '遥か遠くまで広がる海を望み、水と戯れながら、心ゆくまでお寛ぎください。'),
        ],
      ),
    );
  }
}
