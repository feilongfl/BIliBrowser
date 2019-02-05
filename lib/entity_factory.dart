import 'package:bilibrowser/ui/animetab/AnimeCNTimeline_entity.dart';
import 'package:bilibrowser/ui/animetab/AnimeGlobalTimeline_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "AnimecntimelineEntity") {
      return AnimecntimelineEntity.fromJson(json) as T;
    } else if (T.toString() == "AnimeglobaltimelineEntity") {
      return AnimeglobaltimelineEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}
