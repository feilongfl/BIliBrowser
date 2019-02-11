class ChannelVideoDataEntity {
  ChannelVideoDataOwner owner;
  int copyright;
  ChannelVideoDataStat stat;
  String tname;
  int videos;
  String pic;
  String title;
  int tid;
  int duration;
  ChannelVideoDataRights rights;
  int ctime;
  String xDynamic;
  int state;
  int attribute;
  int aid;
  ChannelVideoDataDimension dimension;
  String redirectUrl;
  int pubdate;
  String desc;
  int cid;

  ChannelVideoDataEntity(
      {this.owner,
      this.copyright,
      this.stat,
      this.tname,
      this.videos,
      this.pic,
      this.title,
      this.tid,
      this.duration,
      this.rights,
      this.ctime,
      this.xDynamic,
      this.state,
      this.attribute,
      this.aid,
      this.dimension,
      this.redirectUrl,
      this.pubdate,
      this.desc,
      this.cid});

  ChannelVideoDataEntity.fromJson(Map<String, dynamic> json) {
    owner = json['owner'] != null
        ? new ChannelVideoDataOwner.fromJson(json['owner'])
        : null;
    copyright = json['copyright'];
    stat = json['stat'] != null
        ? new ChannelVideoDataStat.fromJson(json['stat'])
        : null;
    tname = json['tname'];
    videos = json['videos'];
    pic = json['pic'];
    title = json['title'];
    tid = json['tid'];
    duration = json['duration'];
    rights = json['rights'] != null
        ? new ChannelVideoDataRights.fromJson(json['rights'])
        : null;
    ctime = json['ctime'];
    xDynamic = json['dynamic'];
    state = json['state'];
    attribute = json['attribute'];
    aid = json['aid'];
    dimension = json['dimension'] != null
        ? new ChannelVideoDataDimension.fromJson(json['dimension'])
        : null;
    redirectUrl = json['redirect_url'];
    pubdate = json['pubdate'];
    desc = json['desc'];
    cid = json['cid'];
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
    data['videos'] = this.videos;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['tid'] = this.tid;
    data['duration'] = this.duration;
    if (this.rights != null) {
      data['rights'] = this.rights.toJson();
    }
    data['ctime'] = this.ctime;
    data['dynamic'] = this.xDynamic;
    data['state'] = this.state;
    data['attribute'] = this.attribute;
    data['aid'] = this.aid;
    if (this.dimension != null) {
      data['dimension'] = this.dimension.toJson();
    }
    data['redirect_url'] = this.redirectUrl;
    data['pubdate'] = this.pubdate;
    data['desc'] = this.desc;
    data['cid'] = this.cid;
    return data;
  }
}

class ChannelVideoDataOwner {
  String face;
  String name;
  int mid;

  ChannelVideoDataOwner({this.face, this.name, this.mid});

  ChannelVideoDataOwner.fromJson(Map<String, dynamic> json) {
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

class ChannelVideoDataStat {
  int nowRank;
  int view;
  int like;
  int dislike;
  int danmaku;
  int share;
  int reply;
  int hisRank;
  int aid;
  int favorite;
  int coin;

  ChannelVideoDataStat(
      {this.nowRank,
      this.view,
      this.like,
      this.dislike,
      this.danmaku,
      this.share,
      this.reply,
      this.hisRank,
      this.aid,
      this.favorite,
      this.coin});

  ChannelVideoDataStat.fromJson(Map<String, dynamic> json) {
    nowRank = json['now_rank'];
    view = json['view'];
    like = json['like'];
    dislike = json['dislike'];
    danmaku = json['danmaku'];
    share = json['share'];
    reply = json['reply'];
    hisRank = json['his_rank'];
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
    data['reply'] = this.reply;
    data['his_rank'] = this.hisRank;
    data['aid'] = this.aid;
    data['favorite'] = this.favorite;
    data['coin'] = this.coin;
    return data;
  }
}

class ChannelVideoDataRights {
  int download;
  int movie;
  int noReprint;
  int isCooperation;
  int ugcPay;
  int hd5;
  int pay;
  int elec;
  int bp;
  int autoplay;

  ChannelVideoDataRights(
      {this.download,
      this.movie,
      this.noReprint,
      this.isCooperation,
      this.ugcPay,
      this.hd5,
      this.pay,
      this.elec,
      this.bp,
      this.autoplay});

  ChannelVideoDataRights.fromJson(Map<String, dynamic> json) {
    download = json['download'];
    movie = json['movie'];
    noReprint = json['no_reprint'];
    isCooperation = json['is_cooperation'];
    ugcPay = json['ugc_pay'];
    hd5 = json['hd5'];
    pay = json['pay'];
    elec = json['elec'];
    bp = json['bp'];
    autoplay = json['autoplay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['download'] = this.download;
    data['movie'] = this.movie;
    data['no_reprint'] = this.noReprint;
    data['is_cooperation'] = this.isCooperation;
    data['ugc_pay'] = this.ugcPay;
    data['hd5'] = this.hd5;
    data['pay'] = this.pay;
    data['elec'] = this.elec;
    data['bp'] = this.bp;
    data['autoplay'] = this.autoplay;
    return data;
  }
}

class ChannelVideoDataDimension {
  int rotate;
  int width;
  int height;

  ChannelVideoDataDimension({this.rotate, this.width, this.height});

  ChannelVideoDataDimension.fromJson(Map<String, dynamic> json) {
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
