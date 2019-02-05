class AnimeResult {
  String area;
  int arealimit;
  int attention;
  int bangumiId;
  String bgmcount;
  String cover;
  int danmakuCount;
  int epId;
  int favorites;
  int isFinish;
  int lastupdate;
  String lastupdateAt;
  bool isNew;
  int playCount;
  String pubTime;
  int seasonId;
  int seasonStatus;
  int spid;
  String squareCover;
  String title;
  int viewrank;
  int weekday;

  AnimeResult(
      {this.area,
      this.arealimit,
      this.attention,
      this.bangumiId,
      this.bgmcount,
      this.cover,
      this.danmakuCount,
      this.epId,
      this.favorites,
      this.isFinish,
      this.lastupdate,
      this.lastupdateAt,
      this.isNew,
      this.playCount,
      this.pubTime,
      this.seasonId,
      this.seasonStatus,
      this.spid,
      this.squareCover,
      this.title,
      this.viewrank,
      this.weekday});

  AnimeResult.fromJson(Map<String, dynamic> json) {
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
