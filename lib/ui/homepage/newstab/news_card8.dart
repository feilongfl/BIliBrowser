import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type8_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType8 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType8 card;
  AttentionExtendJson ext;

  attentionVideoInfoItemType8({Key key, this.attentionDataCard})
      : super(key: key) {
    card = AttentionCardType8.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
  }

  @override
  Widget build(BuildContext context) {
    return VideoCard(
      title: card.title,
      cover: card.pic,
      userface: card.owner.face,
      username: card.owner.name,
    );
  }
}
