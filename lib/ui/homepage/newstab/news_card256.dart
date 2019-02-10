import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type256_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType256 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType256 card;
  AttentionExtendJson ext;

  attentionVideoInfoItemType256({Key key, this.attentionDataCard})
      : super(key: key) {
    card = AttentionCardType256.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VideoCard(
      title: card.title,
      cover: card.cover,
      userface: card.upperavatar,
      username: card.upper,
    );
  }
}
