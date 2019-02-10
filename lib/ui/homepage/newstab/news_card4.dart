import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type4_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/attention_extend_json_entity.dart';
import 'package:bilibrowser/ui/widget/moment_text_card.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType4 extends StatelessWidget {
  final AttentionDataCard attentionDataCard;
  AttentionCardType4 card;
  AttentionExtendJson ext;

  attentionVideoInfoItemType4({Key key, this.attentionDataCard})
      : super(key: key) {
    card = AttentionCardType4.fromJson(json.decode(attentionDataCard.card));
    ext =
        AttentionExtendJson.fromJson(json.decode(attentionDataCard.extendJson));
  }

  @override
  Widget build(BuildContext context) {
    return MomentTextCard(
      content: card.item.content,
      userface: card.user.face,
      username: card.user.uname,
    );
  }
}
