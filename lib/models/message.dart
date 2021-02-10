class Message {
  final String text, image, sender, icon;

  Message({this.text, this.image, this.sender, this.icon});
}

List<Message> messages = [
  Message(
    text: 'あと2ヶ月頑張ろう！',
    sender: 'friend',
    icon: 'assets/images/1_friend_eika.png',
  ),
  Message(
    text: '「御宿 かげろう」にあるガラス美術館が人気です！',
    image: 'assets/images/2_kagerou_glass_1.jpg',
    sender: 'treap',
    icon: 'assets/images/treap_logo_icon.png',
  ),
  Message(
    text: 'ここよさそうだね👏',
    sender: 'friend',
    icon: 'assets/images/2_friend_moeno.png',
  ),
  Message(
    text: '行ってみたい！',
    sender: 'me',
  ),
];
