import 'package:bilibrowser/bilibiliApi/attention_entity.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card1.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card2.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card256.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card64.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card8.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItem extends StatelessWidget {
  AttentionDataCard card;

  attentionVideoInfoItem({Key key, this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (card.desc.type) {
      case 1:
        return attentionVideoInfoItemType1(
          attentionDataCard: card,
        );
        break;
      case 2:
        return attentionVideoInfoItemType2(
          attentionDataCard: card,
        );
        break;
      case 8:
        return attentionVideoInfoItemType8(
          attentionDataCard: card,
        );
        break;
      case 64:
        return attentionVideoInfoItemType64(
          attentionDataCard: card,
        );
        break;
      case 256:
        return attentionVideoInfoItemType256(
          attentionDataCard: card,
        );
        break;

      default:
        break;
    }
    return Center(child: Text("Unknow Type: ${card.desc.type}"));
  }
}
