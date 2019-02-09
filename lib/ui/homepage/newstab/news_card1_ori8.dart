import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/attention_card_type1_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type1_origin8_entity.dart';
import 'package:bilibrowser/ui/widget/referce_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType1Ori8 extends StatelessWidget {
  AttentionCardType1 card;
  AttentionCardType1Origin8 ori;

  attentionVideoInfoItemType1Ori8({Key key, this.card}) : super(key: key) {
    ori = AttentionCardType1Origin8.fromJson(json.decode(card.origin));
  }

  @override
  Widget build(BuildContext context) {
//    return Center(child: Text("${card.item.content}"));
//    var pics = ori.item.picture.map((i) => i.imgSrc).toList();
    return ReferceCard(
      title: card.item.content,
      content: card.item.content,
      userface: card.user.face,
      username: card.user.uname,
      ori_content: ori.desc ?? "",
      ori_uface: ori.owner.face ?? "",
      ori_user: ori.owner.name ?? "",
      ori_title: ori.title ?? "",
      ori_pics: [ori.pic],
    );
    return Center(
        child: Text(
      "hahaha",
      style: TextStyle(color: Colors.white),
    ));
  }
}
