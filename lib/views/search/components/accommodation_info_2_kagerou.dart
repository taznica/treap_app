import 'package:flutter/material.dart';

class AccommodationInfo2Kagerou extends StatelessWidget {
  const AccommodationInfo2Kagerou({
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
              '御宿 かげろうは蜻蛉川と小川の合流点、四千坪の自然林庭園の中に佇んでおります。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'お料理・おもてなし・しつらえ、全てにおいて徹底したこだわりを持つ宿。宿全体に広がる幽玄の世界をご堪能下さい。また、敷地内には明治・大正時代の芸術作品を専門に展示するプライベート美術館を併設し、本格的ミュージアムリゾートとしても贅沢なひとときをお過ごしいただけます。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/2_kagerou_1.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '翡翠温泉は越羽地方有数の古湯であり、古くは「三碧の湯」と呼ばれました。季節の庭園を眺めながら、ゆったりと温泉のぬくもりをお楽しみください。岩露天風呂の奥にはやさしい発汗を促す遠赤外線の低温かまくらサウナもございます。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/2_kagerou_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '御宿かげろう最大の魅力は「料理とおもてなし」であると創業当初より強く思い、こだわってまいりました。特に料理に関しては、常に御宿かげろう流を意識し、他にはない口福をご堪能いただくべく日々精神しております。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '伝統と創意工夫を融合したその集大成が月毎のスペシャリテ｢吟味特撰」です。',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'そして、吟味特撰を軸に、前後の味、食感、温度、色彩、器、それぞれの繋がり、バランス、足し引きを意識して献立を構成します。',
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
