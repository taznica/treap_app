class Shop {
  final int id;
  final String type, name, image, address, url;

  Shop({
    this.id,
    this.type,
    this.name,
    this.image,
    this.address,
    this.url,
  });
}

List<Shop> shops = [
  Shop(
    id: 0,
    type: '飲食店',
    name: '牛タン焼専門店司 西口名掛丁店',
    image: 'assets/images/0_tsukasa_shop.jpeg',
    address: '宮城県仙台青葉区',
    url: 'https://tabelog.com/miyagi/A0401/A040101/4018920/',
  ),
  Shop(
    id: 1,
    type: '飲食店',
    name: '御酒印船 仙台店',
    image: 'assets/images/1_goshuinsen_shop.jpeg',
    address: '宮城県仙台青葉区',
    url: 'https://tabelog.com/miyagi/A0401/A040101/4000613/',
  ),
  Shop(
    id: 2,
    type: '美容院',
    name: 'Agu hair jill 一番町店',
    image: 'assets/images/2_agu_shop.jpeg',
    address: '宮城県仙台市青葉区',
    url: 'https://beauty.hotpepper.jp/slnH000341560/',
  ),
  Shop(
    id: 3,
    type: 'マッサージ店',
    name: 'Raffine 仙台パルコ店',
    image: 'assets/images/3_raffine_shop.jpeg',
    address: '宮城県仙台市青葉区',
    url: 'https://beauty.hotpepper.jp/kr/slnH000142354/',
  ),
];
