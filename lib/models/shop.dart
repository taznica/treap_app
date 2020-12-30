import 'package:gohoubi_app/models/ticket.dart';

class Shop {
  final int id;
  final String type, name, image, address, url;
  final List<Ticket> tickets;

  Shop({
    this.id,
    this.type,
    this.name,
    this.image,
    this.address,
    this.url,
    this.tickets,
  });
}

List<Shop> shops = [
  Shop(
    id: 0,
    type: '飲食店',
    name: '牛タン焼専門店司 西口名掛丁店',
    image: 'assets/images/tsukasa_shop.jpeg',
    address: '宮城県仙台青葉区',
    url: 'https://tabelog.com/miyagi/A0401/A040101/4018920/',
    tickets: [
      Ticket(
        id: 0,
        price: 5000,
        title: 'oooo',
        description: 'hoge',
        image: 'assets/images/tsukasa_shop.jpeg',
      ),
      Ticket(
        id: 1,
        price: 5000,
        title: '0000',
        description: '紬の宴会コース。120分飲み放題（ラストオーダー100分）付きです。',
        image: 'assets/images/tsukasa_shop.jpeg',
      ),
      Ticket(
        id: 2,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/tsukasa_shop.jpeg',
      ),
      Ticket(
        id: 3,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/tsukasa_shop.jpeg',
      ),
    ],
  ),
  Shop(
    id: 1,
    type: '飲食店',
    name: '御酒印船 仙台店',
    image: 'assets/images/goshuinsen_shop.jpeg',
    address: '宮城県仙台青葉区',
    url: 'https://tabelog.com/miyagi/A0401/A040101/4000613/',
    tickets: [
      Ticket(
        id: 0,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
      Ticket(
        id: 1,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
      Ticket(
        id: 2,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
      Ticket(
        id: 3,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
    ],
  ),
  Shop(
    id: 2,
    type: '飲食店',
    name: '薫りと和酒 紬',
    image: 'assets/images/tsumugi_shop.jpg',
    address: '宮城県仙台青葉区',
    url: 'https://www.1noi.jp/%E7%B4%AC',
    tickets: [
      Ticket(
        id: 0,
        price: 5000,
        title: '宴会コース',
        description: '紬の宴会コース。120分飲み放題（ラストオーダー100分）付きです。',
        image: 'assets/images/tsumugi_ticket_1.jpg',
      ),
      Ticket(
        id: 1,
        price: 6500,
        title: '宴会コース',
        description: '紬の宴会コース。120分飲み放題（ラストオーダー100分）付きです。',
        image: 'assets/images/tsumugi_ticket_1.jpg',
      ),
      Ticket(
        id: 2,
        price: 8000,
        title: '雲宴会コース',
        description:
            '紬の宴会コース。120分飲み放題（ラストオーダー100分）付きです。ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ',
        image: 'assets/images/tsumugi_ticket_1.jpg',
      ),
    ],
  ),
  Shop(
    id: 3,
    type: '飲食店',
    name: '御酒印船 仙台店',
    image: 'assets/images/goshuinsen_shop.jpeg',
    address: '宮城県仙台青葉区',
    url: 'https://tabelog.com/miyagi/A0401/A040101/4000613/',
    tickets: [
      Ticket(
        id: 0,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
      Ticket(
        id: 1,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
      Ticket(
        id: 2,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
      Ticket(
        id: 3,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/goshuinsen_shop.jpeg',
      ),
    ],
  ),
  Shop(
    id: 4,
    type: '美容院',
    name: 'Agu hair jill 一番町店',
    image: 'assets/images/agu_shop.jpeg',
    address: '宮城県仙台市青葉区',
    url: 'https://beauty.hotpepper.jp/slnH000341560/',
    tickets: [
      Ticket(
        id: 0,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/agu_shop.jpeg',
      ),
      Ticket(
        id: 1,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/agu_shop.jpeg',
      ),
      Ticket(
        id: 2,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/agu_shop.jpeg',
      ),
      Ticket(
        id: 3,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/agu_shop.jpeg',
      ),
    ],
  ),
  Shop(
    id: 5,
    type: 'マッサージ店',
    name: 'Raffine 仙台パルコ店',
    image: 'assets/images/raffine_shop.jpeg',
    address: '宮城県仙台市青葉区',
    url: 'https://beauty.hotpepper.jp/kr/slnH000142354/',
    tickets: [
      Ticket(
        id: 0,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/raffine_shop.jpeg',
      ),
      Ticket(
        id: 1,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/raffine_shop.jpeg',
      ),
      Ticket(
        id: 2,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/raffine_shop.jpeg',
      ),
      Ticket(
        id: 3,
        price: 5000,
        title: 'hoge',
        description: 'hoge',
        image: 'assets/images/raffine_shop.jpeg',
      ),
    ],
  ),
];
