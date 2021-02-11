import 'package:flutter/material.dart';

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
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'これぞ、最高峰。すぐそこにある大自然リゾートへ。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/4_dipro_1.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '上質なおもてなしとプライベートを確保した空間の中で、自然を感じながら、日常から離れ、ゆったりとしたフォレストリゾートライフをご堪能いただけます。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/4_dipro_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'この夏、新棟が誕生。1,600m2を超える広大な敷地には、最大8名様での利用が可能な大型邸宅が鎮座。全天候型の広々としたバーベキュースペースや、一年中ご利用可能なプール、サウナ、ジャグジーなど、贅の限りを尽くした、まさにスイートの中のスイートです。',
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
