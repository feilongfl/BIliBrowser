import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/attention_card_type1_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type1_origin2_entity.dart';
import 'package:bilibrowser/ui/widget/referce_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType1Ori2 extends StatelessWidget {
  AttentionCardType1 card;
  AttentionCardType1Origin2Entity ori;

  attentionVideoInfoItemType1Ori2({Key key, this.card}) : super(key: key) {
    ori = AttentionCardType1Origin2Entity.fromJson(json.decode(card.origin));
  }

  @override
  Widget build(BuildContext context) {
//    return Center(child: Text("${card.item.content}"));
    return ReferceCard(
      title: card.item.content,
      content: card.item.content,
      userface: card.user.face,
      username: card.user.uname,

      ori_content: ori.item.content ?? "",
      ori_uface: ori.user.face ?? "",
      ori_user: ori.user.uname ?? "",
      ori_title: ori.item.content ?? "",
      ori_pics: [],
    );
  }
}
