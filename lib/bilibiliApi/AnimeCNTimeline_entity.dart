//https://bangumi.bilibili.com/api/timeline_v2_cn

import 'package:bilibrowser/bilibiliApi/AnimeResult.dart';

class AnimecntimelineEntity {
  List<AnimeResult> result;
  double code;
  String message;

  AnimecntimelineEntity({this.result, this.code, this.message});

  AnimecntimelineEntity.fromJson(Map<String, dynamic> json) {
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
