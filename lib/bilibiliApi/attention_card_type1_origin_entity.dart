class AttentionCardType1Origin {
  AttentionCardType1OriginOwner owner;
  int copyright;
  AttentionCardType1OriginStat stat;
  String tname;
  int video;
  String pic;
  String title;
  int tid;
  int duration;
  String jumpUrl;
  AttentionCardType1OriginRight right;
  int ctime;
  String xDynamic;
  int attribute;
  int state;
  Null playerInfo;
  int aid;
  AttentionCardType1OriginDimansion dimansion;
  int cid;
  String desc;
  int pubdate;

  AttentionCardType1Origin(
      {this.owner,
      this.copyright,
      this.stat,
      this.tname,
      this.video,
      this.pic,
      this.title,
      this.tid,
      this.duration,
      this.jumpUrl,
      this.right,
      this.ctime,
      this.xDynamic,
      this.attribute,
      this.state,
      this.playerInfo,
      this.aid,
      this.dimansion,
      this.cid,
      this.desc,
      this.pubdate});

  AttentionCardType1Origin.fromJson(Map<String, dynamic> json) {
    owner = json['owner'] != null
        ? new AttentionCardType1OriginOwner.fromJson(json['owner'])
        : null;
    copyright = json['copyright'];
    stat = json['stat'] != null
        ? new AttentionCardType1OriginStat.fromJson(json['stat'])
        : null;
    tname = json['tname'];
    video = json['videos'];
    pic = json['pic'];
    title = json['title'];
    tid = json['tid'];
    duration = json['duration'];
    jumpUrl = json['jump_url'];
    right = json['rights'] != null
        ? new AttentionCardType1OriginRight.fromJson(json['rights'])
        : null;
    ctime = json['ctime'];
    xDynamic = json['dynamic'];
    attribute = json['attribute'];
    state = json['state'];
    playerInfo = json['player_info'];
    aid = json['aid'];
    dimansion = json['dimension'] != null
        ? new AttentionCardType1OriginDimansion.fromJson(json['dimension'])
        : null;
    cid = json['cid'];
    desc = json['desc'];
    pubdate = json['pubdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.owner != null) {
      data['owner'] = this.owner.toJson();
    }
    data['copyright'] = this.copyright;
    if (this.stat != null) {
      data['stat'] = this.stat.toJson();
    }
    data['tname'] = this.tname;
    data['videos'] = this.video;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['tid'] = this.tid;
    data['duration'] = this.duration;
    data['jump_url'] = this.jumpUrl;
    if (this.right != null) {
      data['rights'] = this.right.toJson();
    }
    data['ctime'] = this.ctime;
    data['dynamic'] = this.xDynamic;
    data['attribute'] = this.attribute;
    data['state'] = this.state;
    data['player_info'] = this.playerInfo;
    data['aid'] = this.aid;
    if (this.dimansion != null) {
      data['dimension'] = this.dimansion.toJson();
    }
    data['cid'] = this.cid;
    data['desc'] = this.desc;
    data['pubdate'] = this.pubdate;
    return data;
  }
}

class AttentionCardType1OriginOwner {
  String face;
  String name;
  int mid;

  AttentionCardType1OriginOwner({this.face, this.name, this.mid});

  AttentionCardType1OriginOwner.fromJson(Map<String, dynamic> json) {
    face = json['face'];
    name = json['name'];
    mid = json['mid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['face'] = this.face;
    data['name'] = this.name;
    data['mid'] = this.mid;
    return data;
  }
}

class AttentionCardType1OriginStat {
  int nowRank;
  int view;
  int like;
  int dislike;
  int danmaku;
  int share;
  int hisRank;
  int reply;
  int aid;
  int favorite;
  int coin;

  AttentionCardType1OriginStat(
      {this.nowRank,
      this.view,
      this.like,
      this.dislike,
      this.danmaku,
      this.share,
      this.hisRank,
      this.reply,
      this.aid,
      this.favorite,
      this.coin});

  AttentionCardType1OriginStat.fromJson(Map<String, dynamic> json) {
    nowRank = json['now_rank'];
    view = json['view'];
    like = json['like'];
    dislike = json['dislike'];
    danmaku = json['danmaku'];
    share = json['share'];
    hisRank = json['his_rank'];
    reply = json['reply'];
    aid = json['aid'];
    favorite = json['favorite'];
    coin = json['coin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['now_rank'] = this.nowRank;
    data['view'] = this.view;
    data['like'] = this.like;
    data['dislike'] = this.dislike;
    data['danmaku'] = this.danmaku;
    data['share'] = this.share;
    data['his_rank'] = this.hisRank;
    data['reply'] = this.reply;
    data['aid'] = this.aid;
    data['favorite'] = this.favorite;
    data['coin'] = this.coin;
    return data;
  }
}

class AttentionCardType1OriginRight {
  int download;
  int movie;
  int isCooperation;
  int noReprint;
  int ugcPay;
  int hd5;
  int pay;
  int elec;
  int autoplay;
  int bp;

  AttentionCardType1OriginRight(
      {this.download,
      this.movie,
      this.isCooperation,
      this.noReprint,
      this.ugcPay,
      this.hd5,
      this.pay,
      this.elec,
      this.autoplay,
      this.bp});

  AttentionCardType1OriginRight.fromJson(Map<String, dynamic> json) {
    download = json['download'];
    movie = json['movie'];
    isCooperation = json['is_cooperation'];
    noReprint = json['no_reprint'];
    ugcPay = json['ugc_pay'];
    hd5 = json['hd5'];
    pay = json['pay'];
    elec = json['elec'];
    autoplay = json['autoplay'];
    bp = json['bp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['download'] = this.download;
    data['movie'] = this.movie;
    data['is_cooperation'] = this.isCooperation;
    data['no_reprint'] = this.noReprint;
    data['ugc_pay'] = this.ugcPay;
    data['hd5'] = this.hd5;
    data['pay'] = this.pay;
    data['elec'] = this.elec;
    data['autoplay'] = this.autoplay;
    data['bp'] = this.bp;
    return data;
  }
}

class AttentionCardType1OriginDimansion {
  int rotate;
  int width;
  int height;

  AttentionCardType1OriginDimansion({this.rotate, this.width, this.height});

  AttentionCardType1OriginDimansion.fromJson(Map<String, dynamic> json) {
    rotate = json['rotate'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rotate'] = this.rotate;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
