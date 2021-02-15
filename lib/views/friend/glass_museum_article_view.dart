import 'package:flutter/material.dart';

class GlassMuseumArticleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            floating: false,
            expandedHeight: 300,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '明治大正ガラス美術館',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.asset(
                'assets/images/accommodations/2_kagerou_glass_1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          '壊れやすく儚いものは、そのもろさゆえにいっそうの美しさを感じさせてくれます。\n硝子、特に明治・大正のガラスにはそんな美しさが秘められているようです。当時の人々にとってガラスは西洋文化の象徴でした。西洋に憧れ、美しさへの憧れは、後に日本独自の文化となって花ひらいてゆくのです。',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: Colors.black87,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                              'assets/images/accommodations/2_kagerou_glass_0.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          '当美術館では、そんな歴史と文化、そしてガラス達の素朴なキラメキを存分にお楽しみ頂ける事と思います。',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: Colors.black87,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                              'assets/images/accommodations/2_kagerou_glass_2.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          '明治大正期の和ガラスを3,000点収蔵、常時1,000点を展示しており、今はもう手に入らない稀少価値の高い作品がご覧頂けます。また、ガラス製品が所狭しと並ぶミュージアムショップや世界各国のめずらしい雑貨を取り寄せている楽しい店、のみの市、明るい陽射しが差し込む喫茶コーナーもございます。',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: Colors.black87,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
