class AttentionCardType4 {
  AttentionCardType4Item item;
  AttentionCardType4User user;

  AttentionCardType4({this.item, this.user});

  AttentionCardType4.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null
        ? new AttentionCardType4Item.fromJson(json['item'])
        : null;
    user = json['user'] != null
        ? new AttentionCardType4User.fromJson(json['user'])
        : null;
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

class AttentionCardType4Item {
  int uid;
  int origDyId;
  String ctrl;
  int rpId;
  int preDyId;
  int reply;
  String content;
  int timestamp;

  AttentionCardType4Item(
      {this.uid,
      this.origDyId,
      this.ctrl,
      this.rpId,
      this.preDyId,
      this.reply,
      this.content,
      this.timestamp});

  AttentionCardType4Item.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    origDyId = json['orig_dy_id'];
    ctrl = json['ctrl'];
    rpId = json['rp_id'];
    preDyId = json['pre_dy_id'];
    reply = json['reply'];
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
    data['content'] = this.content;
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class AttentionCardType4User {
  int uid;
  String face;
  String uname;

  AttentionCardType4User({this.uid, this.face, this.uname});

  AttentionCardType4User.fromJson(Map<String, dynamic> json) {
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
