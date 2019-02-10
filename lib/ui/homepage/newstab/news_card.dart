import 'package:bilibrowser/bilibiliApi/jsonParse/attention_entity.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card1.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card2.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card256.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card4.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card512.dart';
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
      case 4:
        return attentionVideoInfoItemType4(
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
      case 512:
        return attentionVideoInfoItemType512(
          attentionDataCard: card,
        );
        break;

      default:
        break;
    }
    return Center(
        child: Text(
          "Unknow Type: ${card.desc.type}",
          style: TextStyle(color: Colors.white),
        ));
  }
}
