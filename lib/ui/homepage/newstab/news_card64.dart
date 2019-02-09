import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/attention_card_type64_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType64 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType64 card;
  AttentionExtendJson ext;

  attentionVideoInfoItemType64({Key key, this.attentionDataCard})
      : super(key: key) {
    card = AttentionCardType64.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VideoCard(
      title: card.title,
      cover: card.imageUrl[0] ?? "",
      userface: card.author.face,
      username: card.author.name,
    );
  }
}
