import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type64_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/videopage/normalVideoPage.dart';
import 'package:bilibrowser/ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType64 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType64Entity card;
  AttentionExtendJson ext;

  attentionVideoInfoItemType64({Key key, this.attentionDataCard})
      : super(key: key) {
    card =
        AttentionCardType64Entity.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
  }

  @override
  Widget build(BuildContext context) {
    print(card.toString());
    return InkResponse(
      onTap: () => Navigator.of(context).push(normalVideoPage(0, card.id)),
      child: VideoCard(
        title: card.title,
        cover: card.imageUrls[0] ?? "",
        userface: card.author.face,
        username: card.author.name,
      ),
    );
  }
}
