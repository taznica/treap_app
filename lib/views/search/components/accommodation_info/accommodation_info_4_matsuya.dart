import 'package:flutter/material.dart';

import 'info_paragraph.dart';
import 'info_photo.dart';

class AccommodationInfo4Matsuya extends StatelessWidget {
  const AccommodationInfo4Matsuya({
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
                  '木造二階建て数奇屋造りの本館21室と2006年2月に完成した新館7室の和風旅館です。ほとんどのお部屋からは緑豊かな坪庭をご覧いただけ、目と舌で味わえる京懐石と共に柊家の伝統が息づいています。'),
          InfoPhoto(path: 'assets/images/5_matsuya_1.png'),
          InfoParagraph(
              text:
                  '柊家は、文政年間に創業され、「来者如歸」のこころに則り、ゆかしさと落ちつきのなかに静かな明るさを加味し、古都の旅情を満喫いただけますよう気を配っております。京都駅より十分ほど、市の中心部にありながらも、閑静を旨とする当館は、政府登録国際観光旅館として、近代設備を整えております。'),
          InfoPhoto(path: 'assets/images/5_matsuya_2.png'),
          InfoParagraph(
              text:
                  '柊家のキメ細やかな家庭的サービスは、長い間にはぐくまれてまいりました柊家の伝統として、きっと皆様方のご満足を頂けるものと存じます。'),
        ],
      ),
    );
  }
}
