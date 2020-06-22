//消息数据

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

List<MessageData> messageData = [
  MessageData('https://p2.ssl.qhimgs1.com/sdr/400__/t0100eb6d8b1dfd95ec.jpg',
      '隔壁老王', '晚上一起吃饭啊', DateTime.now(), MessageType.CHAT),
  MessageData('https://p0.ssl.qhimgs1.com/sdr/400__/t01fdf18eff7aef9616.jpg',
      '隔壁小妹', '明天逛街呀', DateTime.now(), MessageType.CHAT),
  MessageData('http://pic.9ht.com/up/2018-4/2018041815534887807.jpg',
      '卡哇伊11', '哈哈哈', DateTime.now(), MessageType.GROUP),
  MessageData('http://p0.so.qhmsg.com/t014e59369c66aba357.jpg',
      '动物家园', '好狗粮，吃吧', DateTime.now(), MessageType.GROUP),
  MessageData('https://p5.ssl.qhimgs1.com/sdr/400__/t013f5efcfb02eba705.jpg',
      '老炮铜家', '好狗粮，吃吧', DateTime.now(), MessageType.PUBLIC),
  MessageData('http://p0.so.qhmsg.com/t01a581505c585d1811.jpg',
      '系统消息', '点击查看详情信息', DateTime.now(), MessageType.SYSTEM),
];
