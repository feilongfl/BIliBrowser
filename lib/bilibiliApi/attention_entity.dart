class Attention {
  String msg;
  int code;
  AttentionData data;
  String message;

  Attention({this.msg, this.code, this.data, this.message});

  Attention.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    code = json['code'];
    data =
        json['data'] != null ? new AttentionData.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class AttentionData {
  int archiveUpNum;
  List<AttentionDataCard> card;
  AttentionDataExtraFlag extraFlag;
  int newNum;
  int openRcmd;
  AttentionDataAttention attention;
  int existGap;
  AttentionDataUpNum upNum;
  List<AttentionDataFoldMgr> foldMgr;
  int iGt;

  AttentionData(
      {this.archiveUpNum,
      this.card,
      this.extraFlag,
      this.newNum,
      this.openRcmd,
      this.attention,
      this.existGap,
      this.upNum,
      this.foldMgr,
      this.iGt});

  AttentionData.fromJson(Map<String, dynamic> json) {
    archiveUpNum = json['archive_up_num'];
    if (json['cards'] != null) {
      card = new List<AttentionDataCard>();
      json['cards'].forEach((v) {
        card.add(new AttentionDataCard.fromJson(v));
      });
    }
    extraFlag = json['extra_flag'] != null
        ? new AttentionDataExtraFlag.fromJson(json['extra_flag'])
        : null;
    newNum = json['new_num'];
    openRcmd = json['open_rcmd'];
    attention = json['attentions'] != null
        ? new AttentionDataAttention.fromJson(json['attentions'])
        : null;
    existGap = json['exist_gap'];
    upNum = json['up_num'] != null
        ? new AttentionDataUpNum.fromJson(json['up_num'])
        : null;
    if (json['fold_mgr'] != null) {
      foldMgr = new List<AttentionDataFoldMgr>();
      json['fold_mgr'].forEach((v) {
        foldMgr.add(new AttentionDataFoldMgr.fromJson(v));
      });
    }
    iGt = json['_gt_'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['archive_up_num'] = this.archiveUpNum;
    if (this.card != null) {
      data['cards'] = this.card.map((v) => v.toJson()).toList();
    }
    if (this.extraFlag != null) {
      data['extra_flag'] = this.extraFlag.toJson();
    }
    data['new_num'] = this.newNum;
    data['open_rcmd'] = this.openRcmd;
    if (this.attention != null) {
      data['attentions'] = this.attention.toJson();
    }
    data['exist_gap'] = this.existGap;
    if (this.upNum != null) {
      data['up_num'] = this.upNum.toJson();
    }
    if (this.foldMgr != null) {
      data['fold_mgr'] = this.foldMgr.map((v) => v.toJson()).toList();
    }
    data['_gt_'] = this.iGt;
    return data;
  }
}

class AttentionDataCard {
  String extendJson;
  String card;
  AttentionDataCardDesc desc;

  AttentionDataCard({this.extendJson, this.card, this.desc});

  AttentionDataCard.fromJson(Map<String, dynamic> json) {
    extendJson = json['extend_json'];
    card = json['card'];
    desc = json['desc'] != null
        ? new AttentionDataCardDesc.fromJson(json['desc'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['extend_json'] = this.extendJson;
    data['card'] = this.card;
    if (this.desc != null) {
      data['desc'] = this.desc.toJson();
    }
    return data;
  }
}

class AttentionDataCardDesc {
  int origDyId;
  int like;
  int stype;
  int innerId;
  int dynamicId;
  int preDyId;
  int acl;
  AttentionDataCardDescUserProfile userProfile;
  int type;
  int rid;
  int origType;
  String dynamicIdStr;
  int uid;
  int view;
  int rType;
  int repost;
  int isLiked;
  int timestamp;
  int statu;

  AttentionDataCardDesc(
      {this.origDyId,
      this.like,
      this.stype,
      this.innerId,
      this.dynamicId,
      this.preDyId,
      this.acl,
      this.userProfile,
      this.type,
      this.rid,
      this.origType,
      this.dynamicIdStr,
      this.uid,
      this.view,
      this.rType,
      this.repost,
      this.isLiked,
      this.timestamp,
      this.statu});

  AttentionDataCardDesc.fromJson(Map<String, dynamic> json) {
    origDyId = json['orig_dy_id'];
    like = json['like'];
    stype = json['stype'];
    innerId = json['inner_id'];
    dynamicId = json['dynamic_id'];
    preDyId = json['pre_dy_id'];
    acl = json['acl'];
    userProfile = json['user_profile'] != null
        ? new AttentionDataCardDescUserProfile.fromJson(json['user_profile'])
        : null;
    type = json['type'];
    rid = json['rid'];
    origType = json['orig_type'];
    dynamicIdStr = json['dynamic_id_str'];
    uid = json['uid'];
    view = json['view'];
    rType = json['r_type'];
    repost = json['repost'];
    isLiked = json['is_liked'];
    timestamp = json['timestamp'];
    statu = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orig_dy_id'] = this.origDyId;
    data['like'] = this.like;
    data['stype'] = this.stype;
    data['inner_id'] = this.innerId;
    data['dynamic_id'] = this.dynamicId;
    data['pre_dy_id'] = this.preDyId;
    data['acl'] = this.acl;
    if (this.userProfile != null) {
      data['user_profile'] = this.userProfile.toJson();
    }
    data['type'] = this.type;
    data['rid'] = this.rid;
    data['orig_type'] = this.origType;
    data['dynamic_id_str'] = this.dynamicIdStr;
    data['uid'] = this.uid;
    data['view'] = this.view;
    data['r_type'] = this.rType;
    data['repost'] = this.repost;
    data['is_liked'] = this.isLiked;
    data['timestamp'] = this.timestamp;
    data['status'] = this.statu;
    return data;
  }
}

class AttentionDataCardDescUserProfile {
  AttentionDataCardDescUserProfileVip vip;
  AttentionDataCardDescUserProfilePendant pendant;
  AttentionDataCardDescUserProfileCard card;
  AttentionDataCardDescUserProfileInfo info;

  AttentionDataCardDescUserProfile(
      {this.vip, this.pendant, this.card, this.info});

  AttentionDataCardDescUserProfile.fromJson(Map<String, dynamic> json) {
    vip = json['vip'] != null
        ? new AttentionDataCardDescUserProfileVip.fromJson(json['vip'])
        : null;
    pendant = json['pendant'] != null
        ? new AttentionDataCardDescUserProfilePendant.fromJson(json['pendant'])
        : null;
    card = json['card'] != null
        ? new AttentionDataCardDescUserProfileCard.fromJson(json['card'])
        : null;
    info = json['info'] != null
        ? new AttentionDataCardDescUserProfileInfo.fromJson(json['info'])
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

class AttentionDataCardDescUserProfileVip {
  int vipduedate;
  int viptype;
  int accessstatu;
  int vipstatu;
  String dueremark;
  String vipstatuswarn;

  AttentionDataCardDescUserProfileVip(
      {this.vipduedate,
      this.viptype,
      this.accessstatu,
      this.vipstatu,
      this.dueremark,
      this.vipstatuswarn});

  AttentionDataCardDescUserProfileVip.fromJson(Map<String, dynamic> json) {
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

class AttentionDataCardDescUserProfilePendant {
  String image;
  int expire;
  String name;
  int pid;

  AttentionDataCardDescUserProfilePendant(
      {this.image, this.expire, this.name, this.pid});

  AttentionDataCardDescUserProfilePendant.fromJson(Map<String, dynamic> json) {
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

class AttentionDataCardDescUserProfileCard {
  AttentionDataCardDescUserProfileCardOfficialVerify officialVerify;

  AttentionDataCardDescUserProfileCard({this.officialVerify});

  AttentionDataCardDescUserProfileCard.fromJson(Map<String, dynamic> json) {
    officialVerify = json['official_verify'] != null
        ? new AttentionDataCardDescUserProfileCardOfficialVerify.fromJson(
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

class AttentionDataCardDescUserProfileCardOfficialVerify {
  int type;
  String desc;

  AttentionDataCardDescUserProfileCardOfficialVerify({this.type, this.desc});

  AttentionDataCardDescUserProfileCardOfficialVerify.fromJson(
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

class AttentionDataCardDescUserProfileInfo {
  int uid;
  String face;
  String uname;

  AttentionDataCardDescUserProfileInfo({this.uid, this.face, this.uname});

  AttentionDataCardDescUserProfileInfo.fromJson(Map<String, dynamic> json) {
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

class AttentionDataExtraFlag {
  int greatDynamic;

  AttentionDataExtraFlag({this.greatDynamic});

  AttentionDataExtraFlag.fromJson(Map<String, dynamic> json) {
    greatDynamic = json['great_dynamic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['great_dynamic'] = this.greatDynamic;
    return data;
  }
}

class AttentionDataAttention {
  List<int> uid;
  List<AttentionDataAttentionBangumi> bangumi;

  AttentionDataAttention({this.uid, this.bangumi});

  AttentionDataAttention.fromJson(Map<String, dynamic> json) {
    uid = json['uids'].cast<int>();
    if (json['bangumis'] != null) {
      bangumi = new List<AttentionDataAttentionBangumi>();
      json['bangumis'].forEach((v) {
        bangumi.add(new AttentionDataAttentionBangumi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uids'] = this.uid;
    if (this.bangumi != null) {
      data['bangumis'] = this.bangumi.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AttentionDataAttentionBangumi {
  int seasonId;
  int type;

  AttentionDataAttentionBangumi({this.seasonId, this.type});

  AttentionDataAttentionBangumi.fromJson(Map<String, dynamic> json) {
    seasonId = json['season_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['season_id'] = this.seasonId;
    data['type'] = this.type;
    return data;
  }
}

class AttentionDataUpNum {
  int archiveUpNum;
  int bangumiUpNum;

  AttentionDataUpNum({this.archiveUpNum, this.bangumiUpNum});

  AttentionDataUpNum.fromJson(Map<String, dynamic> json) {
    archiveUpNum = json['archive_up_num'];
    bangumiUpNum = json['bangumi_up_num'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['archive_up_num'] = this.archiveUpNum;
    data['bangumi_up_num'] = this.bangumiUpNum;
    return data;
  }
}

class AttentionDataFoldMgr {
  List<AttentionDataFoldMgrFold> fold;
  int foldType;

  AttentionDataFoldMgr({this.fold, this.foldType});

  AttentionDataFoldMgr.fromJson(Map<String, dynamic> json) {
    if (json['folds'] != null) {
      fold = new List<AttentionDataFoldMgrFold>();
      json['folds'].forEach((v) {
        fold.add(new AttentionDataFoldMgrFold.fromJson(v));
      });
    }
    foldType = json['fold_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fold != null) {
      data['folds'] = this.fold.map((v) => v.toJson()).toList();
    }
    data['fold_type'] = this.foldType;
    return data;
  }
}

class AttentionDataFoldMgrFold {
  List<int> dynamicId;

  AttentionDataFoldMgrFold({this.dynamicId});

  AttentionDataFoldMgrFold.fromJson(Map<String, dynamic> json) {
    dynamicId = json['dynamic_ids'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dynamic_ids'] = this.dynamicId;
    return data;
  }
}
