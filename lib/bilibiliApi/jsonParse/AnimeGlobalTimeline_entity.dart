//https://bangumi.bilibili.com/api/timeline_v2_global

import 'package:bilibrowser/bilibiliApi/jsonParse/AnimeResult.dart';

class AnimeglobaltimelineEntity {
  List<AnimeResult> result;
  int code;
  String message;

  AnimeglobaltimelineEntity({this.result, this.code, this.message});

  AnimeglobaltimelineEntity.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = new List<AnimeResult>();
      json['result'].forEach((v) {
        result.add(new AnimeResult.fromJson(v));
      });
    }
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}
