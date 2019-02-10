import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type1_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type1_origin2_entity.dart';
import 'package:bilibrowser/ui/widget/referce_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType1Ori2 extends StatelessWidget {
  AttentionCardType1 card;
  AttentionCardType1Origin2 ori;

  attentionVideoInfoItemType1Ori2({Key key, this.card}) : super(key: key) {
    ori = AttentionCardType1Origin2.fromJson(json.decode(card.origin));
  }

  @override
  Widget build(BuildContext context) {
//    return Center(child: Text("${card.item.content}"));
    var pics = ori.item.picture.map((i) => i.imgSrc).toList();
    return ReferceCard(
      title: card.item.content,
      content: card.item.content,
      userface: card.user.face,
      username: card.user.uname,
      ori_content: ori.item.description ?? "",
      ori_uface: ori.user.headUrl ?? "",
      ori_user: ori.user.name ?? "",
      ori_title: ori.item.title ?? "",
      ori_pics: pics,
      ori_picAspectRatio: pics.length > 0
          ? (ori.item.picture[0].imgWidth / ori.item.picture[0].imgHeight)
          : 1,
    );
  }
}
