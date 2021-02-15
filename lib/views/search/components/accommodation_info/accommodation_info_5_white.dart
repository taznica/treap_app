import 'package:flutter/material.dart';

import 'info_paragraph.dart';
import 'info_photo.dart';

class AccommodationInfo5White extends StatelessWidget {
  const AccommodationInfo5White({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoParagraph(
              text:
                  'White Hyatt Otaruは、名峰・羊蹄山とニセコアンヌプリの壮大なランドスケープを一望にできる唯一無二のロケーションに誕生した頂点のラグジュアリーリゾートです。'),
          InfoPhoto(path: 'assets/images/accommodations/1_white_1.png'),
          InfoParagraph(
              text:
                  '世界各国からの旅行者が賞賛するニセコの大自然を、年間を通じて贅沢なスタイルでご満喫いただけます。素晴らしい自然景観に調和するコンテンポラリーデザインの空間、館内の随所にちりばめられた上質なアート、豊富なダイニングで味わえる美食の数々……。リゾート内に用意されるすべてのものが、優美な輝きに満ちあふれる豊かな滞在時間を演出します。'),
          InfoPhoto(path: 'assets/images/accommodations/1_white_2.png'),
          InfoParagraph(
              text:
                  '唯一無二のスキーエクスペリエンスをラグジュアリーかつスマートにお楽しみいただけるよう、スキーバレーサービスをご提供します。ホテル1階に設けられた広さ520㎡の空間では、各種スキー用品のレンタル、スキーパスの発行、スキースクールやアクティビティのご手配などをワンストップで承ります。'),
        ],
      ),
    );
  }
}
