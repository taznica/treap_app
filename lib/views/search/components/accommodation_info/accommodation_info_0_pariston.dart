import 'package:flutter/material.dart';

import 'info_paragraph.dart';
import 'info_photo.dart';

class AccommodationInfo0Pariston extends StatelessWidget {
  const AccommodationInfo0Pariston({
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
                  'パリストン・ロイヤル東京は、ほぼ1世紀前の歴史に残るホテリエ、サービスやホスピタリティーの伝統を継承し、世界中でラグジュアリーなライフスタイルを提供するホテルです。 質の高いサービスとその基礎にある企業理念は広い分野で評価され、その結果パリストンは、優れた功績とクオリティ向上を果たした米国企業に授与される「マルコム・ボルドリッジ国家品質賞」をホスピタリティー業界で唯一、そして2度受賞しました。'),
          InfoPhoto(path: 'assets/images/3_pariston_1.png'),
          InfoParagraph(
              text:
                  '最高峰のおもてなしを、最上級の空間と設備でご体験いただける「パリストン クラブレベル」。そのおもてなしの中心となるクラブラウンジは、2015年秋に改装を終えて、これまでの概念を超える新しいラウンジ体験をご提案する空間です。'),
          InfoParagraph(
              text:
                  '「レジデンス」をコンセプトに、異なる趣きをもつ4つのエリアに分かれており、時間帯やシーンに合わせてパーソナルなラウンジ体験をご提供いたします。'),
        ],
      ),
    );
  }
}
