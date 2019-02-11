import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type1_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type1_origin64_entity.dart';
import 'package:bilibrowser/ui/widget/referce_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType1Ori64 extends StatelessWidget {
  AttentionCardType1 card;
  AttentionCardType1Origin64Entity ori;

  attentionVideoInfoItemType1Ori64({Key key, this.card}) : super(key: key) {
    ori = AttentionCardType1Origin64Entity.fromJson(json.decode(card.origin));
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
      ori_content: ori.summary ?? "",
      ori_uface: ori.author.face ?? "",
      ori_user: ori.author.name ?? "",
      ori_title: ori.title ?? "",
      ori_pics: ori.imageUrls,
      ori_picAspectRatio: 16 / 9,
    );
    return Center(
        child: Text(
      "hahaha",
      style: TextStyle(color: Colors.white),
    ));
  }
}
