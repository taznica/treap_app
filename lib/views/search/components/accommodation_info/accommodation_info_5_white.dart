import 'package:flutter/material.dart';

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
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'White Hyatt Otaruは、名峰・羊蹄山とニセコアンヌプリの壮大なランドスケープを一望にできる唯一無二のロケーションに誕生した頂点のラグジュアリーリゾートです。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/1_white_1.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '世界各国からの旅行者が賞賛するニセコの大自然を、年間を通じて贅沢なスタイルでご満喫いただけます。素晴らしい自然景観に調和するコンテンポラリーデザインの空間、館内の随所にちりばめられた上質なアート、豊富なダイニングで味わえる美食の数々……。リゾート内に用意されるすべてのものが、優美な輝きに満ちあふれる豊かな滞在時間を演出します。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/1_white_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '唯一無二のスキーエクスペリエンスをラグジュアリーかつスマートにお楽しみいただけるよう、スキーバレーサービスをご提供します。ホテル1階に設けられた広さ520㎡の空間では、各種スキー用品のレンタル、スキーパスの発行、スキースクールやアクティビティのご手配などをワンストップで承ります。',
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
