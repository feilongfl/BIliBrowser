class AttentionCardType1 {
  AttentionCardType1Item item;
  String originExtendJson;
  String origin;
  AttentionCardType1OriginUser originUser;
  AttentionCardType1User user;

  AttentionCardType1(
      {this.item,
      this.originExtendJson,
      this.origin,
      this.originUser,
      this.user});

  AttentionCardType1.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null
        ? new AttentionCardType1Item.fromJson(json['item'])
        : null;
    originExtendJson = json['origin_extend_json'];
    origin = json['origin'];
    originUser = json['origin_user'] != null
        ? new AttentionCardType1OriginUser.fromJson(json['origin_user'])
        : null;
    user = json['user'] != null
        ? new AttentionCardType1User.fromJson(json['user'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item.toJson();
    }
    data['origin_extend_json'] = this.originExtendJson;
    data['origin'] = this.origin;
    if (this.originUser != null) {
      data['origin_user'] = this.originUser.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class AttentionCardType1Item {
  int uid;
  int origDyId;
  String ctrl;
  int rpId;
  int preDyId;
  int reply;
  int origType;
  String content;
  int timestamp;

  AttentionCardType1Item(
      {this.uid,
      this.origDyId,
      this.ctrl,
      this.rpId,
      this.preDyId,
      this.reply,
      this.origType,
      this.content,
      this.timestamp});

  AttentionCardType1Item.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    origDyId = json['orig_dy_id'];
    ctrl = json['ctrl'];
    rpId = json['rp_id'];
    preDyId = json['pre_dy_id'];
    reply = json['reply'];
    origType = json['orig_type'];
    content = json['content'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['orig_dy_id'] = this.origDyId;
    data['ctrl'] = this.ctrl;
    data['rp_id'] = this.rpId;
    data['pre_dy_id'] = this.preDyId;
    data['reply'] = this.reply;
    data['orig_type'] = this.origType;
    data['content'] = this.content;
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class AttentionCardType1OriginUser {
  AttentionCardType1OriginUserVip vip;
  AttentionCardType1OriginUserPendant pendant;
  AttentionCardType1OriginUserCard card;
  AttentionCardType1OriginUserInfo info;

  AttentionCardType1OriginUser({this.vip, this.pendant, this.card, this.info});

  AttentionCardType1OriginUser.fromJson(Map<String, dynamic> json) {
    vip = json['vip'] != null
        ? new AttentionCardType1OriginUserVip.fromJson(json['vip'])
        : null;
    pendant = json['pendant'] != null
        ? new AttentionCardType1OriginUserPendant.fromJson(json['pendant'])
        : null;
    card = json['card'] != null
        ? new AttentionCardType1OriginUserCard.fromJson(json['card'])
        : null;
    info = json['info'] != null
        ? new AttentionCardType1OriginUserInfo.fromJson(json['info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vip != null) {
      data['vip'] = this.vip.toJson();
    }
    if (this.pendant != null) {
      data['pendant'] = this.pendant.toJson();
    }
    if (this.card != null) {
      data['card'] = this.card.toJson();
    }
    if (this.info != null) {
      data['info'] = this.info.toJson();
    }
    return data;
  }
}

class AttentionCardType1OriginUserVip {
  int vipduedate;
  int viptype;
  int accessstatu;
  int vipstatu;
  String dueremark;
  String vipstatuswarn;

  AttentionCardType1OriginUserVip(
      {this.vipduedate,
      this.viptype,
      this.accessstatu,
      this.vipstatu,
      this.dueremark,
      this.vipstatuswarn});

  AttentionCardType1OriginUserVip.fromJson(Map<String, dynamic> json) {
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

class AttentionCardType1OriginUserPendant {
  String image;
  int expire;
  String name;
  int pid;

  AttentionCardType1OriginUserPendant(
      {this.image, this.expire, this.name, this.pid});

  AttentionCardType1OriginUserPendant.fromJson(Map<String, dynamic> json) {
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

class AttentionCardType1OriginUserCard {
  AttentionCardType1OriginUserCardOfficialVerify officialVerify;

  AttentionCardType1OriginUserCard({this.officialVerify});

  AttentionCardType1OriginUserCard.fromJson(Map<String, dynamic> json) {
    officialVerify = json['official_verify'] != null
        ? new AttentionCardType1OriginUserCardOfficialVerify.fromJson(
            json['official_verify'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.officialVerify != null) {
      data['official_verify'] = this.officialVerify.toJson();
    }
    return data;
  }
}

class AttentionCardType1OriginUserCardOfficialVerify {
  int type;
  String desc;

  AttentionCardType1OriginUserCardOfficialVerify({this.type, this.desc});

  AttentionCardType1OriginUserCardOfficialVerify.fromJson(
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

class AttentionCardType1OriginUserInfo {
  int uid;
  String face;
  String uname;

  AttentionCardType1OriginUserInfo({this.uid, this.face, this.uname});

  AttentionCardType1OriginUserInfo.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    face = json['face'];
    uname = json['uname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['face'] = this.face;
    data['uname'] = this.uname;
    return data;
  }
}

class AttentionCardType1User {
  int uid;
  String face;
  String uname;

  AttentionCardType1User({this.uid, this.face, this.uname});

  AttentionCardType1User.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    face = json['face'];
    uname = json['uname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['face'] = this.face;
    data['uname'] = this.uname;
    return data;
  }
}
