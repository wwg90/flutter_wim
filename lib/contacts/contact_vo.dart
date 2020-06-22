//好友vo类

import 'package:flutter/material.dart';

class ContactVO {
  //字母排列值
  String seationKey;

  //名称
  String name;

  //头像url
  String avatarUrl;

  ContactVO({@required this.seationKey, this.name, this.avatarUrl});
}

List<ContactVO> contactData = [
  ContactVO(
      seationKey: 'A',
      name: 'A老王头',
      avatarUrl:
          'http://5b0988e595225.cdn.sohucs.com/images/20180526/60a21af360d2457c950295839bea8feb.jpeg'),
  ContactVO(
      seationKey: 'A',
      name: 'A小老弟',
      avatarUrl:
          'http://img.52z.com/upload/news/image/20180111/20180111085521_86389.jpg'),
  ContactVO(
      seationKey: 'C',
      name: 'C老哥哥',
      avatarUrl:
          'http://image.biaobaiju.com/uploads/20180802/00/1533141613-nAaEcljMew.jpeg'),
  ContactVO(
      seationKey: 'D',
      name: 'D小姐姐',
      avatarUrl: 'http://pic.qqtn.com/up/2017-12/15136463657211912.jpg'),
  ContactVO(
      seationKey: 'E',
      name: 'E小姐姐2',
      avatarUrl:
          'https://p3.ssl.qhimgs1.com/sdr/400__/t01dfdb92a798a417d3.jpg'),
  ContactVO(
      seationKey: 'F',
      name: 'F小哥哥',
      avatarUrl:
          'http://5b0988e595225.cdn.sohucs.com/q_70,c_zoom,w_640/images/20171219/b600b033247c4d858384609958dd7bd6.jpeg'),
  ContactVO(
      seationKey: 'G',
      name: 'G小仙女儿',
      avatarUrl: 'http://pic.qqtn.com/up/2017-11/2017112216362233724.jpg'),
  ContactVO(
      seationKey: 'J',
      name: 'J小仙女儿',
      avatarUrl:
          'https://p0.ssl.qhimgs1.com/sdr/400__/t01a2aad83a2822e4be.jpg'),
];
