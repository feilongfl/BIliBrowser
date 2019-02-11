class AttentionCardType1Origin64Entity {
  String summary;
  int reprint;
  AttentionCardType1Origin64Author author;
  int words;
  List<String> originImageUrls;
  List<String> imageUrls;
  String applyTime;
  AttentionCardType1Origin64Media media;
  String title;
  AttentionCardType1Origin64List xList;
  List<AttentionCardType1Origin64Tag> tags;
  AttentionCardType1Origin64Stats stats;
  bool isLike;
  int publishTime;
  int ctime;
  String bannerUrl;
  int templateId;
  String xDynamic;
  int id;
  List<AttentionCardType1Origin64Category> categories;
  int state;
  AttentionCardType1Origin64Category category;
  String checkTime;

  AttentionCardType1Origin64Entity(
      {this.summary,
      this.reprint,
      this.author,
      this.words,
      this.originImageUrls,
      this.imageUrls,
      this.applyTime,
      this.media,
      this.title,
      this.xList,
      this.tags,
      this.stats,
      this.isLike,
      this.publishTime,
      this.ctime,
      this.bannerUrl,
      this.templateId,
      this.xDynamic,
      this.id,
      this.categories,
      this.state,
      this.category,
      this.checkTime});

  AttentionCardType1Origin64Entity.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    reprint = json['reprint'];
    author = json['author'] != null
        ? new AttentionCardType1Origin64Author.fromJson(json['author'])
        : null;
    words = json['words'];
    originImageUrls = json['origin_image_urls'].cast<String>();
    imageUrls = json['image_urls'].cast<String>();
    applyTime = json['apply_time'];
    media = json['media'] != null
        ? new AttentionCardType1Origin64Media.fromJson(json['media'])
        : null;
    title = json['title'];
    xList = json['list'] != null
        ? new AttentionCardType1Origin64List.fromJson(json['list'])
        : null;
    if (json['tags'] != null) {
      tags = new List<AttentionCardType1Origin64Tag>();
      json['tags'].forEach((v) {
        tags.add(new AttentionCardType1Origin64Tag.fromJson(v));
      });
    }
    stats = json['stats'] != null
        ? new AttentionCardType1Origin64Stats.fromJson(json['stats'])
        : null;
    isLike = json['is_like'];
    publishTime = json['publish_time'];
    ctime = json['ctime'];
    bannerUrl = json['banner_url'];
    templateId = json['template_id'];
    xDynamic = json['dynamic'];
    id = json['id'];
    if (json['categories'] != null) {
      categories = new List<AttentionCardType1Origin64Category>();
      json['categories'].forEach((v) {
        categories.add(new AttentionCardType1Origin64Category.fromJson(v));
      });
    }
    state = json['state'];
    category = json['category'] != null
        ? new AttentionCardType1Origin64Category.fromJson(json['category'])
        : null;
    checkTime = json['check_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['reprint'] = this.reprint;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    data['words'] = this.words;
    data['origin_image_urls'] = this.originImageUrls;
    data['image_urls'] = this.imageUrls;
    data['apply_time'] = this.applyTime;
    if (this.media != null) {
      data['media'] = this.media.toJson();
    }
    data['title'] = this.title;
    if (this.xList != null) {
      data['list'] = this.xList.toJson();
    }
    if (this.tags != null) {
      data['tags'] = this.tags.map((v) => v.toJson()).toList();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    data['is_like'] = this.isLike;
    data['publish_time'] = this.publishTime;
    data['ctime'] = this.ctime;
    data['banner_url'] = this.bannerUrl;
    data['template_id'] = this.templateId;
    data['dynamic'] = this.xDynamic;
    data['id'] = this.id;
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    data['state'] = this.state;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    data['check_time'] = this.checkTime;
    return data;
  }
}

class AttentionCardType1Origin64Author {
  String face;
  String name;
  int mid;
  AttentionCardType1Origin64AuthorPendant pendant;
  AttentionCardType1Origin64AuthorNameplate nameplate;
  AttentionCardType1Origin64AuthorVip vip;
  AttentionCardType1Origin64AuthorOfficialVerify officialVerify;

  AttentionCardType1Origin64Author(
      {this.face,
      this.name,
      this.mid,
      this.pendant,
      this.nameplate,
      this.vip,
      this.officialVerify});

  AttentionCardType1Origin64Author.fromJson(Map<String, dynamic> json) {
    face = json['face'];
    name = json['name'];
    mid = json['mid'];
    pendant = json['pendant'] != null
        ? new AttentionCardType1Origin64AuthorPendant.fromJson(json['pendant'])
        : null;
    nameplate = json['nameplate'] != null
        ? new AttentionCardType1Origin64AuthorNameplate.fromJson(
            json['nameplate'])
        : null;
    vip = json['vip'] != null
        ? new AttentionCardType1Origin64AuthorVip.fromJson(json['vip'])
        : null;
    officialVerify = json['official_verify'] != null
        ? new AttentionCardType1Origin64AuthorOfficialVerify.fromJson(
            json['official_verify'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['face'] = this.face;
    data['name'] = this.name;
    data['mid'] = this.mid;
    if (this.pendant != null) {
      data['pendant'] = this.pendant.toJson();
    }
    if (this.nameplate != null) {
      data['nameplate'] = this.nameplate.toJson();
    }
    if (this.vip != null) {
      data['vip'] = this.vip.toJson();
    }
    if (this.officialVerify != null) {
      data['official_verify'] = this.officialVerify.toJson();
    }
    return data;
  }
}

class AttentionCardType1Origin64AuthorPendant {
  String image;
  int expire;
  String name;
  int pid;

  AttentionCardType1Origin64AuthorPendant(
      {this.image, this.expire, this.name, this.pid});

  AttentionCardType1Origin64AuthorPendant.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    expire = json['expire'];
    name = json['name'];
    pid = json['pid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['expire'] = this.expire;
    data['name'] = this.name;
    data['pid'] = this.pid;
    return data;
  }
}

class AttentionCardType1Origin64AuthorNameplate {
  String image;
  String imageSmall;
  String condition;
  String level;
  int nid;
  String name;

  AttentionCardType1Origin64AuthorNameplate(
      {this.image,
      this.imageSmall,
      this.condition,
      this.level,
      this.nid,
      this.name});

  AttentionCardType1Origin64AuthorNameplate.fromJson(
      Map<String, dynamic> json) {
    image = json['image'];
    imageSmall = json['image_small'];
    condition = json['condition'];
    level = json['level'];
    nid = json['nid'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['image_small'] = this.imageSmall;
    data['condition'] = this.condition;
    data['level'] = this.level;
    data['nid'] = this.nid;
    data['name'] = this.name;
    return data;
  }
}

class AttentionCardType1Origin64AuthorVip {
  int vipPayType;
  int dueDate;
  int type;
  int status;

  AttentionCardType1Origin64AuthorVip(
      {this.vipPayType, this.dueDate, this.type, this.status});

  AttentionCardType1Origin64AuthorVip.fromJson(Map<String, dynamic> json) {
    vipPayType = json['vip_pay_type'];
    dueDate = json['due_date'];
    type = json['type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vip_pay_type'] = this.vipPayType;
    data['due_date'] = this.dueDate;
    data['type'] = this.type;
    data['status'] = this.status;
    return data;
  }
}

class AttentionCardType1Origin64AuthorOfficialVerify {
  int type;
  String desc;

  AttentionCardType1Origin64AuthorOfficialVerify({this.type, this.desc});

  AttentionCardType1Origin64AuthorOfficialVerify.fromJson(
      Map<String, dynamic> json) {
    type = json['type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['desc'] = this.desc;
    return data;
  }
}

class AttentionCardType1Origin64Media {
  String cover;
  String area;
  int score;
  String typeName;
  int typeId;
  int mediaId;
  int spoiler;
  String title;

  AttentionCardType1Origin64Media(
      {this.cover,
      this.area,
      this.score,
      this.typeName,
      this.typeId,
      this.mediaId,
      this.spoiler,
      this.title});

  AttentionCardType1Origin64Media.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    area = json['area'];
    score = json['score'];
    typeName = json['type_name'];
    typeId = json['type_id'];
    mediaId = json['media_id'];
    spoiler = json['spoiler'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['area'] = this.area;
    data['score'] = this.score;
    data['type_name'] = this.typeName;
    data['type_id'] = this.typeId;
    data['media_id'] = this.mediaId;
    data['spoiler'] = this.spoiler;
    data['title'] = this.title;
    return data;
  }
}

class AttentionCardType1Origin64List {
  String summary;
  int updateTime;
  int read;
  String imageUrl;
  int publishTime;
  int articlesCount;
  String name;
  int words;
  int mid;
  int ctime;
  int id;

  AttentionCardType1Origin64List(
      {this.summary,
      this.updateTime,
      this.read,
      this.imageUrl,
      this.publishTime,
      this.articlesCount,
      this.name,
      this.words,
      this.mid,
      this.ctime,
      this.id});

  AttentionCardType1Origin64List.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    updateTime = json['update_time'];
    read = json['read'];
    imageUrl = json['image_url'];
    publishTime = json['publish_time'];
    articlesCount = json['articles_count'];
    name = json['name'];
    words = json['words'];
    mid = json['mid'];
    ctime = json['ctime'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['update_time'] = this.updateTime;
    data['read'] = this.read;
    data['image_url'] = this.imageUrl;
    data['publish_time'] = this.publishTime;
    data['articles_count'] = this.articlesCount;
    data['name'] = this.name;
    data['words'] = this.words;
    data['mid'] = this.mid;
    data['ctime'] = this.ctime;
    data['id'] = this.id;
    return data;
  }
}

class AttentionCardType1Origin64Tag {
  String name;
  int tid;

  AttentionCardType1Origin64Tag({this.name, this.tid});

  AttentionCardType1Origin64Tag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    tid = json['tid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['tid'] = this.tid;
    return data;
  }
}

class AttentionCardType1Origin64Stats {
  int view;
  int like;
  int dislike;
  int share;
  int xDynamic;
  int reply;
  int favorite;
  int coin;

  AttentionCardType1Origin64Stats(
      {this.view,
      this.like,
      this.dislike,
      this.share,
      this.xDynamic,
      this.reply,
      this.favorite,
      this.coin});

  AttentionCardType1Origin64Stats.fromJson(Map<String, dynamic> json) {
    view = json['view'];
    like = json['like'];
    dislike = json['dislike'];
    share = json['share'];
    xDynamic = json['dynamic'];
    reply = json['reply'];
    favorite = json['favorite'];
    coin = json['coin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['view'] = this.view;
    data['like'] = this.like;
    data['dislike'] = this.dislike;
    data['share'] = this.share;
    data['dynamic'] = this.xDynamic;
    data['reply'] = this.reply;
    data['favorite'] = this.favorite;
    data['coin'] = this.coin;
    return data;
  }
}

class AttentionCardType1Origin64Category {
  int parentId;
  String name;
  int id;

  AttentionCardType1Origin64Category({this.parentId, this.name, this.id});

  AttentionCardType1Origin64Category.fromJson(Map<String, dynamic> json) {
    parentId = json['parent_id'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['parent_id'] = this.parentId;
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}
