import 'package:bilibrowser/bilibiliApi/AnimeCNTimeline_entity.dart';
import 'package:bilibrowser/bilibiliApi/AnimeGlobalTimeline_entity.dart';
import 'package:bilibrowser/bilibiliApi/UserInfo_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type1_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type1_origin2_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type1_origin8_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type256_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type2_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type64_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type8_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_extend_json_entity.dart';
import 'package:bilibrowser/bilibiliApi/live_info_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "AnimecntimelineEntity") {
      return AnimecntimelineEntity.fromJson(json) as T;
    } else if (T.toString() == "AnimeglobaltimelineEntity") {
      return AnimeglobaltimelineEntity.fromJson(json) as T;
    } else if (T.toString() == "AttentionCardType1") {
      return AttentionCardType1.fromJson(json) as T;
    } else if (T.toString() == "AttentionCardType1Origin2Entity") {
      return AttentionCardType1Origin2Entity.fromJson(json) as T;
    } else if (T.toString() == "AttentionCardType1Origin") {
      return AttentionCardType1Origin8.fromJson(json) as T;
    } else if (T.toString() == "AttentionCardType256") {
      return AttentionCardType256.fromJson(json) as T;
    } else if (T.toString() == "AttentionCardType2") {
      return AttentionCardType2.fromJson(json) as T;
    } else if (T.toString() == "AttentionCardType64") {
      return AttentionCardType64.fromJson(json) as T;
    } else if (T.toString() == "AttentionCardType8") {
      return AttentionCardType8.fromJson(json) as T;
    } else if (T.toString() == "Attention") {
      return Attention.fromJson(json) as T;
    } else if (T.toString() == "AttentionExtendJson") {
      return AttentionExtendJson.fromJson(json) as T;
    } else if (T.toString() == "LiveInfoEntity") {
      return LiveInfoEntity.fromJson(json) as T;
    } else if (T.toString() == "UserinfoEntity") {
      return UserinfoEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}