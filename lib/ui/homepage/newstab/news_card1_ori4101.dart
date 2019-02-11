import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type1_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type1_origin4101_entity.dart';
import 'package:bilibrowser/ui/widget/referce_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType1Ori4101 extends StatelessWidget {
  AttentionCardType1 card;
  AttentionCardType1Origin4101Entity ori;

  attentionVideoInfoItemType1Ori4101({Key key, this.card}) : super(key: key) {
    ori = AttentionCardType1Origin4101Entity.fromJson(json.decode(card.origin));
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
      ori_content: "",
      ori_uface: "",
      ori_user: ori.apiseasoninfo.title ?? "",
      ori_title: ori.apiseasoninfo.title ?? "",
      ori_pics: [ori.apiseasoninfo.cover],
      ori_picAspectRatio: 16 / 9,
    );
    return Center(
        child: Text(
      "hahaha",
      style: TextStyle(color: Colors.white),
    ));
  }
}
