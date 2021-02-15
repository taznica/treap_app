import 'package:treap_app/models/plan.dart';

class Accommodation {
  final int id, price;
  final String name, area, address, description;
  final List<String> images, hashtags;
  final List<Plan> plans;

  Accommodation({
    this.id,
    this.price,
    this.name,
    this.area,
    this.address,
    this.description,
    this.images,
    this.hashtags,
    this.plans,
  });

  String stringOfPrice() {
    return this.price.toString() + '円（税込）';
  }
}

List<Accommodation> accommodations = [
  Accommodation(
    id: 0,
    price: 28000,
    name: 'パリストン・ロイヤル東京',
    area: '東京都 / 六本木',
    address: '東京都',
    description: '',
    images: [
      'assets/images/accommodations/3_pariston_0.png',
      'assets/images/accommodations/3_pariston_1.png',
    ],
    hashtags: [
      '夜景',
      'クラブラウンジ',
      'コンシェルジュ',
    ],
  ),
  Accommodation(
    id: 1,
    price: 38000,
    name: 'リゾート・ディプロ',
    area: '兵庫県 / 神戸',
    address: '兵庫県',
    description: '',
    images: [
      'assets/images/accommodations/4_dipro_0.png',
      'assets/images/accommodations/4_dipro_1.png',
      'assets/images/accommodations/4_dipro_2.png',
    ],
    hashtags: [
      'プライベートリゾート',
      'プール',
      'スペシャルビュッフェ',
    ],
  ),
  Accommodation(
    id: 2,
    price: 32000,
    name: '御宿 かげろう',
    area: '福島県 / 三碧温泉',
    address: '〒960-3331 福島県 福島市三碧温泉伊甲の里7-12',
    description:
        '御宿　かげろうは蜻蛉川と小川の合流点、四千坪の自然林庭園の中に佇んでおります。\nお料理・おもてなし・しつらえ、全てにおいて徹底したこだわりを持つ宿。宿全体に広がる幽玄の世界をご堪能下さい。また、敷地内には明治・大正時代の芸術作品を専門に展示するプライベート美術館を併設し、本格的ミュージアムリゾートとしても贅沢なひとときをお過ごしいただけます。',
    images: [
      'assets/images/accommodations/2_kagerou_0.png',
      'assets/images/accommodations/2_kagerou_1.png',
      'assets/images/accommodations/2_kagerou_2.png',
      'assets/images/accommodations/2_kagerou_3.png',
    ],
    hashtags: [
      '自然',
      'リラクゼーション',
      '庭園',
      '古湯',
    ],
  ),
  Accommodation(
    id: 3,
    price: 34000,
    name: 'THE CYAN RESORT IZU',
    area: '静岡県 / 伊豆',
    address: '静岡県',
    description: '',
    images: [
      'assets/images/accommodations/0_cyan_0.png',
      'assets/images/accommodations/0_cyan_1.png',
      'assets/images/accommodations/0_cyan_2.png',
    ],
    hashtags: [
      'オーシャンビュー',
      '隠れ家',
      'ビーチサイドレストラン',
    ],
  ),
  Accommodation(
    id: 4,
    price: 24000,
    name: '松家旅館',
    area: '京都府 / 祇園',
    address: '京都府',
    description: '',
    images: [
      'assets/images/accommodations/5_matsuya_0.png',
      'assets/images/accommodations/5_matsuya_1.png',
      'assets/images/accommodations/5_matsuya_2.png',
    ],
    hashtags: [
      '老舗旅館',
      '京風懐石料理',
      '古都の風情',
    ],
  ),
  Accommodation(
    id: 5,
    price: 22000,
    name: 'White Hyatt Otaru',
    area: '北海道 / 小樽',
    address: '北海道',
    description: '',
    images: [
      'assets/images/accommodations/1_white_0.png',
      'assets/images/accommodations/1_white_1.png',
      'assets/images/accommodations/1_white_2.png',
    ],
    hashtags: [
      '雪景色',
      'マウンテンリゾート',
      'ウィンタースポーツ',
      'ラグジュアリースパ',
    ],
  ),
];
