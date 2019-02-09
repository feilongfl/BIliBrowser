class AttentionCardType1Origin2Entity {
  AttentionCardType1Origin2EntityItem item;
  AttentionCardType1Origin2EntityOriginExtension originExtension;
  String originExtendJson;
  String origin;
  AttentionCardType1Origin2EntityOriginUser originUser;
  AttentionCardType1Origin2EntityUser user;

  AttentionCardType1Origin2Entity(
      {this.item,
      this.originExtension,
      this.originExtendJson,
      this.origin,
      this.originUser,
      this.user});

  AttentionCardType1Origin2Entity.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null
        ? new AttentionCardType1Origin2EntityItem.fromJson(json['item'])
        : null;
    originExtension = json['origin_extension'] != null
        ? new AttentionCardType1Origin2EntityOriginExtension.fromJson(
            json['origin_extension'])
        : null;
    originExtendJson = json['origin_extend_json'];
    origin = json['origin'];
    originUser = json['origin_user'] != null
        ? new AttentionCardType1Origin2EntityOriginUser.fromJson(
            json['origin_user'])
        : null;
    user = json['user'] != null
        ? new AttentionCardType1Origin2EntityUser.fromJson(json['user'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item.toJson();
    }
    if (this.originExtension != null) {
      data['origin_extension'] = this.originExtension.toJson();
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

class AttentionCardType1Origin2EntityItem {
  int uid;
  int origDyId;
  int rpId;
  int preDyId;
  int reply;
  int origType;
  String content;
  int timestamp;

  AttentionCardType1Origin2EntityItem(
      {this.uid,
      this.origDyId,
      this.rpId,
      this.preDyId,
      this.reply,
      this.origType,
      this.content,
      this.timestamp});

  AttentionCardType1Origin2EntityItem.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    origDyId = json['orig_dy_id'];
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
    data['rp_id'] = this.rpId;
    data['pre_dy_id'] = this.preDyId;
    data['reply'] = this.reply;
    data['orig_type'] = this.origType;
    data['content'] = this.content;
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class AttentionCardType1Origin2EntityOriginExtension {
  String lott;

  AttentionCardType1Origin2EntityOriginExtension({this.lott});

  AttentionCardType1Origin2EntityOriginExtension.fromJson(
      Map<String, dynamic> json) {
    lott = json['lott'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lott'] = this.lott;
    return data;
  }
}

class AttentionCardType1Origin2EntityOriginUser {
  AttentionCardType1Origin2EntityOriginUserVip vip;
  AttentionCardType1Origin2EntityOriginUserPendant pendant;
  AttentionCardType1Origin2EntityOriginUserCard card;
  AttentionCardType1Origin2EntityOriginUserInfo info;

  AttentionCardType1Origin2EntityOriginUser(
      {this.vip, this.pendant, this.card, this.info});

  AttentionCardType1Origin2EntityOriginUser.fromJson(
      Map<String, dynamic> json) {
    vip = json['vip'] != null
        ? new AttentionCardType1Origin2EntityOriginUserVip.fromJson(json['vip'])
        : null;
    pendant = json['pendant'] != null
        ? new AttentionCardType1Origin2EntityOriginUserPendant.fromJson(
            json['pendant'])
        : null;
    card = json['card'] != null
        ? new AttentionCardType1Origin2EntityOriginUserCard.fromJson(
            json['card'])
        : null;
    info = json['info'] != null
        ? new AttentionCardType1Origin2EntityOriginUserInfo.fromJson(
            json['info'])
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

class AttentionCardType1Origin2EntityOriginUserVip {
  int vipduedate;
  int viptype;
  int accessstatu;
  int vipstatu;
  String dueremark;
  String vipstatuswarn;

  AttentionCardType1Origin2EntityOriginUserVip(
      {this.vipduedate,
      this.viptype,
      this.accessstatu,
      this.vipstatu,
      this.dueremark,
      this.vipstatuswarn});

  AttentionCardType1Origin2EntityOriginUserVip.fromJson(
      Map<String, dynamic> json) {
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

class AttentionCardType1Origin2EntityOriginUserPendant {
  String image;
  int expire;
  String name;
  int pid;

  AttentionCardType1Origin2EntityOriginUserPendant(
      {this.image, this.expire, this.name, this.pid});

  AttentionCardType1Origin2EntityOriginUserPendant.fromJson(
      Map<String, dynamic> json) {
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

class AttentionCardType1Origin2EntityOriginUserCard {
  AttentionCardType1Origin2EntityOriginUserCardOfficialVerify officialVerify;

  AttentionCardType1Origin2EntityOriginUserCard({this.officialVerify});

  AttentionCardType1Origin2EntityOriginUserCard.fromJson(
      Map<String, dynamic> json) {
    officialVerify = json['official_verify'] != null
        ? new AttentionCardType1Origin2EntityOriginUserCardOfficialVerify
            .fromJson(json['official_verify'])
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

class AttentionCardType1Origin2EntityOriginUserCardOfficialVerify {
  int type;
  String desc;

  AttentionCardType1Origin2EntityOriginUserCardOfficialVerify(
      {this.type, this.desc});

  AttentionCardType1Origin2EntityOriginUserCardOfficialVerify.fromJson(
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

class AttentionCardType1Origin2EntityOriginUserInfo {
  int uid;
  String face;
  String uname;

  AttentionCardType1Origin2EntityOriginUserInfo(
      {this.uid, this.face, this.uname});

  AttentionCardType1Origin2EntityOriginUserInfo.fromJson(
      Map<String, dynamic> json) {
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

class AttentionCardType1Origin2EntityUser {
  int uid;
  String face;
  String uname;

  AttentionCardType1Origin2EntityUser({this.uid, this.face, this.uname});

  AttentionCardType1Origin2EntityUser.fromJson(Map<String, dynamic> json) {
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
