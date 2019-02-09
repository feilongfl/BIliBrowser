class AttentionCardType1Origin2 {
  AttentionCardType1Origin2Item item;
  AttentionCardType1Origin2User user;

  AttentionCardType1Origin2({this.item, this.user});

  AttentionCardType1Origin2.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null ? new AttentionCardType1Origin2Item.fromJson(
        json['item']) : null;
    user = json['user'] != null ? new AttentionCardType1Origin2User.fromJson(
        json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class AttentionCardType1Origin2Item {
  AttentionCardType1Origin2ItemSetting setting;
  List<Null> role;
  int isFav;
  String description;
  List<Null> source;
  String title;
  String atControl;
  List<AttentionCardType1Origin2ItemPicture> picture;
  int picturesCount;
  int uploadTime;
  int id;
  String category;
  int reply;

  AttentionCardType1Origin2Item(
      {this.setting, this.role, this.isFav, this.description, this.source, this.title, this.atControl, this.picture, this.picturesCount, this.uploadTime, this.id, this.category, this.reply});

  AttentionCardType1Origin2Item.fromJson(Map<String, dynamic> json) {
    setting =
    json['settings'] != null ? new AttentionCardType1Origin2ItemSetting
        .fromJson(json['settings']) : null;
//		if (json['role'] != null) {
//			role = new List<Null>();
//			json['role'].forEach((v) { role.add(new Null.fromJson(v)); });
//		}
    isFav = json['is_fav'];
    description = json['description'];
//		if (json['source'] != null) {
//			source = new List<Null>();
//			json['source'].forEach((v) { source.add(new Null.fromJson(v)); });
//		}
    title = json['title'];
    atControl = json['at_control'];
    if (json['pictures'] != null) {
      picture = new List<AttentionCardType1Origin2ItemPicture>();
      json['pictures'].forEach((v) {
        picture.add(new AttentionCardType1Origin2ItemPicture.fromJson(v));
      });
    }
    picturesCount = json['pictures_count'];
    uploadTime = json['upload_time'];
    id = json['id'];
    category = json['category'];
    reply = json['reply'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.setting != null) {
      data['settings'] = this.setting.toJson();
    }
    if (this.role != null) {
//      data['role'] = this.role.map((v) => v.toJson()).toList();
    }
    data['is_fav'] = this.isFav;
    data['description'] = this.description;
    if (this.source != null) {
//      data['source'] = this.source.map((v) => v.toJson()).toList();
    }
    data['title'] = this.title;
    data['at_control'] = this.atControl;
    if (this.picture != null) {
      data['pictures'] = this.picture.map((v) => v.toJson()).toList();
    }
    data['pictures_count'] = this.picturesCount;
    data['upload_time'] = this.uploadTime;
    data['id'] = this.id;
    data['category'] = this.category;
    data['reply'] = this.reply;
    return data;
  }
}

class AttentionCardType1Origin2ItemSetting {
  int copyForbidden;

  AttentionCardType1Origin2ItemSetting({this.copyForbidden});

  AttentionCardType1Origin2ItemSetting.fromJson(Map<String, dynamic> json) {
    copyForbidden = json['copy_forbidden'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copy_forbidden'] = this.copyForbidden;
    return data;
  }
}

class AttentionCardType1Origin2ItemPicture {
  int imgWidth;
  int imgHeight;
  int imgSize;
  String imgSrc;

  AttentionCardType1Origin2ItemPicture(
      {this.imgWidth, this.imgHeight, this.imgSize, this.imgSrc});

  AttentionCardType1Origin2ItemPicture.fromJson(Map<String, dynamic> json) {
    imgWidth = json['img_width'];
    imgHeight = json['img_height'];
    imgSize = json['img_size'];
    imgSrc = json['img_src'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img_width'] = this.imgWidth;
    data['img_height'] = this.imgHeight;
    data['img_size'] = this.imgSize;
    data['img_src'] = this.imgSrc;
    return data;
  }
}

class AttentionCardType1Origin2User {
  int uid;
  String headUrl;
  String name;
  AttentionCardType1Origin2UserVip vip;

  AttentionCardType1Origin2User({this.uid, this.headUrl, this.name, this.vip});

  AttentionCardType1Origin2User.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    headUrl = json['head_url'];
    name = json['name'];
    vip = json['vip'] != null ? new AttentionCardType1Origin2UserVip.fromJson(
        json['vip']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['head_url'] = this.headUrl;
    data['name'] = this.name;
    if (this.vip != null) {
      data['vip'] = this.vip.toJson();
    }
    return data;
  }
}

class AttentionCardType1Origin2UserVip {
  int vipduedate;
  int viptype;
  int accessstatu;
  int vipstatu;
  String dueremark;
  String vipstatuswarn;

  AttentionCardType1Origin2UserVip(
      {this.vipduedate, this.viptype, this.accessstatu, this.vipstatu, this.dueremark, this.vipstatuswarn});

  AttentionCardType1Origin2UserVip.fromJson(Map<String, dynamic> json) {
    vipduedate = json['vipDueDate'];
    viptype = json['vipType'];
    accessstatu = json['accessStatus'];
    vipstatu = json['vipStatus'];
    dueremark = json['dueRemark'];
    vipstatuswarn = json['vipStatusWarn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vipDueDate'] = this.vipduedate;
    data['vipType'] = this.viptype;
    data['accessStatus'] = this.accessstatu;
    data['vipStatus'] = this.vipstatu;
    data['dueRemark'] = this.dueremark;
    data['vipStatusWarn'] = this.vipstatuswarn;
    return data;
  }
}
