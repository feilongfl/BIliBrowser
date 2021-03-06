import 'package:bilibrowser/bilibiliApi/jsonParse/attention_card_type1_entity.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card1_ori2.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card1_ori4101.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card1_ori64.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card1_ori8.dart';
import 'package:flutter/material.dart';

class attentionVideoInfoItemType1Ori extends StatelessWidget {
  AttentionCardType1 card;

  attentionVideoInfoItemType1Ori({Key key, this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (card.item.origType) {
      case 2:
        return attentionVideoInfoItemType1Ori2(
          card: card,
        );
        break;
      case 8:
        return attentionVideoInfoItemType1Ori8(
          card: card,
        );
        break;
      case 64:
        return attentionVideoInfoItemType1Ori64(
          card: card,
        );
        break;
      case 4101:
        return attentionVideoInfoItemType1Ori4101(
          card: card,
        );
        break;

      default:
        break;
    }
    return Center(child: Text("Unknow Ori Type: ${card.item.origType}"));
  }
}
