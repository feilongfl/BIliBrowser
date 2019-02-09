import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/attention_card_type1_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type1_origin8_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card1_ori.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType1 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType1 card;
  AttentionExtendJson ext;
  AttentionCardType1Origin8 ori;

  attentionVideoInfoItemType1({Key key, this.attentionDataCard})
      : super(key: key) {
    card = AttentionCardType1.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
    ori = AttentionCardType1Origin8.fromJson(json.decode(card.origin));
  }

  @override
  Widget build(BuildContext context) {
    return attentionVideoInfoItemType1Ori(
      card: card,
    );
  }
}
