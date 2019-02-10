import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type512_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType512 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType512 card;
  AttentionExtendJson ext;

  attentionVideoInfoItemType512({Key key, this.attentionDataCard})
      : super(key: key) {
    card = AttentionCardType512.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VideoCard(
      title: "${card.apiseasoninfo.title} ${card.index}",
      cover: card.cover,
      userface: card.apiseasoninfo.cover,
      username: card.indexTitle,
    );
  }
}
