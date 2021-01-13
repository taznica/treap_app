import 'package:gohoubi_app/models/plan.dart';

class Accommodation {
  final int id;
  final String type, name, image, address, url, description;
  final List<Plan> plans;

  Accommodation({
    this.id,
    this.type,
    this.name,
    this.image,
    this.address,
    this.url,
    this.description,
    this.plans,
  });
}

List<Accommodation> _accommodations = [
  Accommodation(
    id: 0,
    type: '旅館',
    name: '伝承千年の宿 佐勘',
    image: 'assets/images/sakan_accommodation.jpg',
    address: '秋保温泉',
    url: 'https://www.jalan.net/yad318193/',
    description:
        '仙台駅から車で30分。喧騒から離れた山間にたたずむ「伝承千年の宿 佐勘」へようこそ。かの伊達政宗公が愛した湯浴み場や、秋保温泉が楽しめる4種の湯巡りに多彩な8種の施設、また秋保で唯一“名取川を眺めながら”源泉掛け流しをお楽しみいただけます。',
  ),
  Accommodation(
    id: 1,
    type: '旅館',
    name: '伝承千年の宿 佐勘',
    image: 'assets/images/sakan_accommodation.jpg',
    address: '秋保温泉',
    url: 'https://www.jalan.net/yad318193/',
    description:
        '仙台駅から車で30分。喧騒から離れた山間にたたずむ「伝承千年の宿 佐勘」へようこそ。かの伊達政宗公が愛した湯浴み場や、秋保温泉が楽しめる4種の湯巡りに多彩な8種の施設、また秋保で唯一“名取川を眺めながら”源泉掛け流しをお楽しみいただけます。',
  ),
  Accommodation(
    id: 2,
    type: '旅館',
    name: '伝承千年の宿 佐勘',
    image: 'assets/images/sakan_accommodation.jpg',
    address: '秋保温泉',
    url: 'https://www.jalan.net/yad318193/',
    description:
        '仙台駅から車で30分。喧騒から離れた山間にたたずむ「伝承千年の宿 佐勘」へようこそ。かの伊達政宗公が愛した湯浴み場や、秋保温泉が楽しめる4種の湯巡りに多彩な8種の施設、また秋保で唯一“名取川を眺めながら”源泉掛け流しをお楽しみいただけます。',
  ),
  Accommodation(
    id: 3,
    type: '旅館',
    name: '伝承千年の宿 佐勘',
    image: 'assets/images/sakan_accommodation.jpg',
    address: '秋保温泉',
    url: 'https://www.jalan.net/yad318193/',
    description:
        '仙台駅から車で30分。喧騒から離れた山間にたたずむ「伝承千年の宿 佐勘」へようこそ。かの伊達政宗公が愛した湯浴み場や、秋保温泉が楽しめる4種の湯巡りに多彩な8種の施設、また秋保で唯一“名取川を眺めながら”源泉掛け流しをお楽しみいただけます。',
  ),
  Accommodation(
    id: 4,
    type: '旅館',
    name: '伝承千年の宿 佐勘',
    image: 'assets/images/sakan_accommodation.jpg',
    address: '秋保温泉',
    url: 'https://www.jalan.net/yad318193/',
    description:
        '仙台駅から車で30分。喧騒から離れた山間にたたずむ「伝承千年の宿 佐勘」へようこそ。かの伊達政宗公が愛した湯浴み場や、秋保温泉が楽しめる4種の湯巡りに多彩な8種の施設、また秋保で唯一“名取川を眺めながら”源泉掛け流しをお楽しみいただけます。',
  ),
];

List<Accommodation> accommodations = [
  Accommodation(
    id: _accommodations[0].id,
    type: _accommodations[0].type,
    name: _accommodations[0].name,
    image: _accommodations[0].image,
    address: _accommodations[0].address,
    url: _accommodations[0].url,
    description: _accommodations[0].description,
    plans: [
      Plan(
        id: 0,
        price: 20000,
        title: '月3000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_0.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 1,
        price: 20000,
        title: '月4000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_1.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 2,
        price: 20000,
        title: '月5000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_2.jpg',
        accommodation: _accommodations[0],
      ),
    ],
  ),
  Accommodation(
    id: _accommodations[0].id,
    type: _accommodations[0].type,
    name: _accommodations[0].name,
    image: _accommodations[0].image,
    address: _accommodations[0].address,
    url: _accommodations[0].url,
    plans: [
      Plan(
        id: 0,
        price: 20000,
        title: '伝承千年の宿 佐勘 月3000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_0.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 1,
        price: 20000,
        title: '伝承千年の宿 佐勘 月4000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_1.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 2,
        price: 20000,
        title: '伝承千年の宿 佐勘 月5000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_2.jpg',
        accommodation: _accommodations[0],
      ),
    ],
  ),
  Accommodation(
    id: _accommodations[0].id,
    type: _accommodations[0].type,
    name: _accommodations[0].name,
    image: _accommodations[0].image,
    address: _accommodations[0].address,
    url: _accommodations[0].url,
    plans: [
      Plan(
        id: 0,
        price: 20000,
        title: '伝承千年の宿 佐勘 月3000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_0.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 1,
        price: 20000,
        title: '伝承千年の宿 佐勘 月4000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_1.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 2,
        price: 20000,
        title: '伝承千年の宿 佐勘 月5000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_2.jpg',
        accommodation: _accommodations[0],
      ),
    ],
  ),
  Accommodation(
    id: _accommodations[0].id,
    type: _accommodations[0].type,
    name: _accommodations[0].name,
    image: _accommodations[0].image,
    address: _accommodations[0].address,
    url: _accommodations[0].url,
    plans: [
      Plan(
        id: 0,
        price: 20000,
        title: '伝承千年の宿 佐勘 月3000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_0.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 1,
        price: 20000,
        title: '伝承千年の宿 佐勘 月4000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_1.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 2,
        price: 20000,
        title: '伝承千年の宿 佐勘 月5000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_2.jpg',
        accommodation: _accommodations[0],
      ),
    ],
  ),
  Accommodation(
    id: _accommodations[0].id,
    type: _accommodations[0].type,
    name: _accommodations[0].name,
    image: _accommodations[0].image,
    address: _accommodations[0].address,
    url: _accommodations[0].url,
    plans: [
      Plan(
        id: 0,
        price: 20000,
        title: '伝承千年の宿 佐勘 月3000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_0.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 1,
        price: 20000,
        title: '伝承千年の宿 佐勘 月4000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_1.jpg',
        accommodation: _accommodations[0],
      ),
      Plan(
        id: 2,
        price: 20000,
        title: '伝承千年の宿 佐勘 月5000円プラン',
        description: '～守り続けて千年～　世代を超えて愛される【いにしえの湯】',
        image: 'assets/images/sakan_plan_2.jpg',
        accommodation: _accommodations[0],
      ),
    ],
  ),
];
