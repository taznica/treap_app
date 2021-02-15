import 'package:flutter/material.dart';

import 'info_paragraph.dart';
import 'info_photo.dart';

class AccommodationInfo1Dipro extends StatelessWidget {
  const AccommodationInfo1Dipro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoParagraph(text: 'これぞ、最高峰。すぐそこにある大自然リゾートへ。'),
          InfoPhoto(path: 'assets/images/accommodations/4_dipro_1.png'),
          InfoParagraph(
              text:
                  '上質なおもてなしとプライベートを確保した空間の中で、自然を感じながら、日常から離れ、ゆったりとしたフォレストリゾートライフをご堪能いただけます。'),
          InfoPhoto(path: 'assets/images/accommodations/4_dipro_2.png'),
          InfoParagraph(
              text:
                  'この夏、新棟が誕生。1,600m2を超える広大な敷地には、最大8名様での利用が可能な大型邸宅が鎮座。全天候型の広々としたバーベキュースペースや、一年中ご利用可能なプール、サウナ、ジャグジーなど、贅の限りを尽くした、まさにスイートの中のスイートです。'),
        ],
      ),
    );
  }
}
