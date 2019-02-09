import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/attention_card_type2_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType2 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType2 card;
  AttentionExtendJson ext;

  attentionVideoInfoItemType2({Key key, this.attentionDataCard})
      : super(key: key) {
    card = AttentionCardType2.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
  }

  @override
  Widget build(BuildContext context) {
    return VideoCard(
      title: card.item.title == "" ? card.item.description : card.item.title,
      cover: card.item.picture[0].imgSrc,
      userface: card.user.headUrl,
      username: card.user.name,
    );
  }
}
