//https://bangumi.bilibili.com/api/timeline_v2_cn

class AnimecntimelineEntity {
  List<Result> result;
  double code;
  String message;

  AnimecntimelineEntity({this.result, this.code, this.message});

  AnimecntimelineEntity.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = new List<Result>();
      json['result'].forEach((v) {
        result.add(new Result.fromJson(v));
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

class Result {
  String area;
  double arealimit;
  double attention;
  double bangumiId;
  String bgmcount;
  String cover;
  double danmakuCount;
  double epId;
  double favorites;
  double isFinish;
  double lastupdate;
  String lastupdateAt;
  bool isNew;
  double playCount;
  String pubTime;
  double seasonId;
  double seasonStatus;
  double spid;
  String squareCover;
  String title;
  double viewrank;
  double weekday;

  Result(
      {this.area, this.arealimit, this.attention, this.bangumiId, this.bgmcount, this.cover, this.danmakuCount, this.epId, this.favorites, this.isFinish, this.lastupdate, this.lastupdateAt, this.isNew, this.playCount, this.pubTime, this.seasonId, this.seasonStatus, this.spid, this.squareCover, this.title, this.viewrank, this.weekday});

  Result.fromJson(Map<String, dynamic> json) {
    area = json['area'];
    arealimit = json['arealimit'];
    attention = json['attention'];
    bangumiId = json['bangumi_id'];
    bgmcount = json['bgmcount'];
    cover = json['cover'];
    danmakuCount = json['danmaku_count'];
    epId = json['ep_id'];
    favorites = json['favorites'];
    isFinish = json['is_finish'];
    lastupdate = json['lastupdate'];
    lastupdateAt = json['lastupdate_at'];
    isNew = json['new'];
    playCount = json['play_count'];
    pubTime = json['pub_time'];
    seasonId = json['season_id'];
    seasonStatus = json['season_status'];
    spid = json['spid'];
    squareCover = json['square_cover'];
    title = json['title'];
    viewrank = json['viewRank'];
    weekday = json['weekday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['area'] = this.area;
    data['arealimit'] = this.arealimit;
    data['attention'] = this.attention;
    data['bangumi_id'] = this.bangumiId;
    data['bgmcount'] = this.bgmcount;
    data['cover'] = this.cover;
    data['danmaku_count'] = this.danmakuCount;
    data['ep_id'] = this.epId;
    data['favorites'] = this.favorites;
    data['is_finish'] = this.isFinish;
    data['lastupdate'] = this.lastupdate;
    data['lastupdate_at'] = this.lastupdateAt;
    data['new'] = this.isNew;
    data['play_count'] = this.playCount;
    data['pub_time'] = this.pubTime;
    data['season_id'] = this.seasonId;
    data['season_status'] = this.seasonStatus;
    data['spid'] = this.spid;
    data['square_cover'] = this.squareCover;
    data['title'] = this.title;
    data['viewRank'] = this.viewrank;
    data['weekday'] = this.weekday;
    return data;
  }
}
