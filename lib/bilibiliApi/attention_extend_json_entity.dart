class AttentionExtendJson {
  AttentionExtendJsonLott lott;
  List<AttentionExtendJsonCtrl> ctrl;
  AttentionExtendJsonLikeIcon likeIcon;

  AttentionExtendJson({this.lott, this.ctrl, this.likeIcon});

  AttentionExtendJson.fromJson(Map<String, dynamic> json) {
    lott = json['lott'] != null
        ? new AttentionExtendJsonLott.fromJson(json['lott'])
        : null;
    if (json['ctrl'] != null) {
      ctrl = new List<AttentionExtendJsonCtrl>();
      json['ctrl'].forEach((v) {
        ctrl.add(new AttentionExtendJsonCtrl.fromJson(v));
      });
    }
    likeIcon = json['like_icon'] != null
        ? new AttentionExtendJsonLikeIcon.fromJson(json['like_icon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lott != null) {
      data['lott'] = this.lott.toJson();
    }
    if (this.ctrl != null) {
      data['ctrl'] = this.ctrl.map((v) => v.toJson()).toList();
    }
    if (this.likeIcon != null) {
      data['like_icon'] = this.likeIcon.toJson();
    }
    return data;
  }
}

class AttentionExtendJsonLott {
  int callbackid;
  int lotteryId;
  String title;

  AttentionExtendJsonLott({this.callbackid, this.lotteryId, this.title});

  AttentionExtendJsonLott.fromJson(Map<String, dynamic> json) {
    callbackid = json['callbackId'];
    lotteryId = json['lottery_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['callbackId'] = this.callbackid;
    data['lottery_id'] = this.lotteryId;
    data['title'] = this.title;
    return data;
  }
}

class AttentionExtendJsonCtrl {
  String data;
  int length;
  int location;
  int type;

  AttentionExtendJsonCtrl({this.data, this.length, this.location, this.type});

  AttentionExtendJsonCtrl.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    length = json['length'];
    location = json['location'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['length'] = this.length;
    data['location'] = this.location;
    data['type'] = this.type;
    return data;
  }
}

class AttentionExtendJsonLikeIcon {
  String start;
  String action;
  String end;

  AttentionExtendJsonLikeIcon({this.start, this.action, this.end});

  AttentionExtendJsonLikeIcon.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    action = json['action'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start'] = this.start;
    data['action'] = this.action;
    data['end'] = this.end;
    return data;
  }
}
