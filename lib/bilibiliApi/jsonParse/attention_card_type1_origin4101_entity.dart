class AttentionCardType1Origin4101Entity {
  String cover;
  String indexTitle;
  String newDesc;
  int episodeId;
  int onlineFinish;
  String index;
  int bulletCount;
  int playCount;
  int replyCount;
  int aid;
  String url;
  AttentionCardType1Origin4101Apiseasoninfo apiseasoninfo;

  AttentionCardType1Origin4101Entity(
      {this.cover,
      this.indexTitle,
      this.newDesc,
      this.episodeId,
      this.onlineFinish,
      this.index,
      this.bulletCount,
      this.playCount,
      this.replyCount,
      this.aid,
      this.url,
      this.apiseasoninfo});

  AttentionCardType1Origin4101Entity.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    indexTitle = json['index_title'];
    newDesc = json['new_desc'];
    episodeId = json['episode_id'];
    onlineFinish = json['online_finish'];
    index = json['index'];
    bulletCount = json['bullet_count'];
    playCount = json['play_count'];
    replyCount = json['reply_count'];
    aid = json['aid'];
    url = json['url'];
    apiseasoninfo = json['apiSeasonInfo'] != null
        ? new AttentionCardType1Origin4101Apiseasoninfo.fromJson(
            json['apiSeasonInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['index_title'] = this.indexTitle;
    data['new_desc'] = this.newDesc;
    data['episode_id'] = this.episodeId;
    data['online_finish'] = this.onlineFinish;
    data['index'] = this.index;
    data['bullet_count'] = this.bulletCount;
    data['play_count'] = this.playCount;
    data['reply_count'] = this.replyCount;
    data['aid'] = this.aid;
    data['url'] = this.url;
    if (this.apiseasoninfo != null) {
      data['apiSeasonInfo'] = this.apiseasoninfo.toJson();
    }
    return data;
  }
}

class AttentionCardType1Origin4101Apiseasoninfo {
  String cover;
  int totalCount;
  int bgmType;
  int isFinish;
  int seasonId;
  String title;
  int ts;

  AttentionCardType1Origin4101Apiseasoninfo(
      {this.cover,
      this.totalCount,
      this.bgmType,
      this.isFinish,
      this.seasonId,
      this.title,
      this.ts});

  AttentionCardType1Origin4101Apiseasoninfo.fromJson(
      Map<String, dynamic> json) {
    cover = json['cover'];
    totalCount = json['total_count'];
    bgmType = json['bgm_type'];
    isFinish = json['is_finish'];
    seasonId = json['season_id'];
    title = json['title'];
    ts = json['ts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['total_count'] = this.totalCount;
    data['bgm_type'] = this.bgmType;
    data['is_finish'] = this.isFinish;
    data['season_id'] = this.seasonId;
    data['title'] = this.title;
    data['ts'] = this.ts;
    return data;
  }
}
