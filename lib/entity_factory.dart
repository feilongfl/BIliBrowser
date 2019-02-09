import 'package:bilibrowser/bilibiliApi/AnimeCNTimeline_entity.dart';
import 'package:bilibrowser/bilibiliApi/AnimeGlobalTimeline_entity.dart';
import 'package:bilibrowser/bilibiliApi/UserInfo_entity.dart';
import 'package:bilibrowser/bilibiliApi/attention_card_type2_entity.dart';
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
    } else if (T.toString() == "AttentionCard") {
      return AttentionCardType2.fromJson(json) as T;
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