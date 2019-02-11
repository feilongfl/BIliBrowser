class AttentionEntity {
  String msg;
  int code;
  AttentionData data;
  String message;

  AttentionEntity({this.msg, this.code, this.data, this.message});

  AttentionEntity.fromJson(Map<String, dynamic> json) {
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
  List<AttentionDataCard> cards;
  AttentionDataExtraFlag extraFlag;
  int newNum;
  int openRcmd;
  AttentionDataAttentions attentions;
  int existGap;
  AttentionDataUpNum upNum;
  List<AttentionDataFoldMgr> foldMgr;
  int iGt;

  AttentionData({this.archiveUpNum,
    this.cards,
    this.extraFlag,
    this.newNum,
    this.openRcmd,
    this.attentions,
    this.existGap,
    this.upNum,
    this.foldMgr,
    this.iGt});

  AttentionData.fromJson(Map<String, dynamic> json) {
    archiveUpNum = json['archive_up_num'];
    if (json['cards'] != null) {
      cards = new List<AttentionDataCard>();
      json['cards'].forEach((v) {
        cards.add(new AttentionDataCard.fromJson(v));
      });
    }
    extraFlag = json['extra_flag'] != null
        ? new AttentionDataExtraFlag.fromJson(json['extra_flag'])
        : null;
    newNum = json['new_num'];
    openRcmd = json['open_rcmd'];
    attentions = json['attentions'] != null
        ? new AttentionDataAttentions.fromJson(json['attentions'])
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
    if (this.cards != null) {
      data['cards'] = this.cards.map((v) => v.toJson()).toList();
    }
    if (this.extraFlag != null) {
      data['extra_flag'] = this.extraFlag.toJson();
    }
    data['new_num'] = this.newNum;
    data['open_rcmd'] = this.openRcmd;
    if (this.attentions != null) {
      data['attentions'] = this.attentions.toJson();
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
  AttentionDataCardsExtension extension;
  String card;
  AttentionDataCardsDesc desc;

  AttentionDataCard({this.extendJson, this.extension, this.card, this.desc});

  AttentionDataCard.fromJson(Map<String, dynamic> json) {
    extendJson = json['extend_json'];
    extension = json['extension'] != null
        ? new AttentionDataCardsExtension.fromJson(json['extension'])
        : null;
    card = json['card'];
    desc = json['desc'] != null
        ? new AttentionDataCardsDesc.fromJson(json['desc'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['extend_json'] = this.extendJson;
    if (this.extension != null) {
      data['extension'] = this.extension.toJson();
    }
    data['card'] = this.card;
    if (this.desc != null) {
      data['desc'] = this.desc.toJson();
    }
    return data;
  }
}

class AttentionDataCardsExtension {
  AttentionDataCardsExtensionVoteCfg voteCfg;
  String vote;

  AttentionDataCardsExtension({this.voteCfg, this.vote});

  AttentionDataCardsExtension.fromJson(Map<String, dynamic> json) {
    voteCfg = json['vote_cfg'] != null
        ? new AttentionDataCardsExtensionVoteCfg.fromJson(json['vote_cfg'])
        : null;
    vote = json['vote'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.voteCfg != null) {
      data['vote_cfg'] = this.voteCfg.toJson();
    }
    data['vote'] = this.vote;
    return data;
  }
}

class AttentionDataCardsExtensionVoteCfg {
  int joinNum;
  int voteId;
  String desc;

  AttentionDataCardsExtensionVoteCfg({this.joinNum, this.voteId, this.desc});

  AttentionDataCardsExtensionVoteCfg.fromJson(Map<String, dynamic> json) {
    joinNum = json['join_num'];
    voteId = json['vote_id'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['join_num'] = this.joinNum;
    data['vote_id'] = this.voteId;
    data['desc'] = this.desc;
    return data;
  }
}

class AttentionDataCardsDesc {
  int origDyId;
  int like;
  int stype;
  int innerId;
  int dynamicId;
  int preDyId;
  int acl;
  AttentionDataCardsDescUserProfile userProfile;
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
  int status;

  AttentionDataCardsDesc({this.origDyId,
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
    this.status});

  AttentionDataCardsDesc.fromJson(Map<String, dynamic> json) {
    origDyId = json['orig_dy_id'];
    like = json['like'];
    stype = json['stype'];
    innerId = json['inner_id'];
    dynamicId = json['dynamic_id'];
    preDyId = json['pre_dy_id'];
    acl = json['acl'];
    userProfile = json['user_profile'] != null
        ? new AttentionDataCardsDescUserProfile.fromJson(json['user_profile'])
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
    status = json['status'];
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
    data['status'] = this.status;
    return data;
  }
}

class AttentionDataCardsDescUserProfile {
  AttentionDataCardsDescUserProfileVip vip;
  AttentionDataCardsDescUserProfilePendant pendant;
  AttentionDataCardsDescUserProfileCard card;
  AttentionDataCardsDescUserProfileInfo info;

  AttentionDataCardsDescUserProfile(
      {this.vip, this.pendant, this.card, this.info});

  AttentionDataCardsDescUserProfile.fromJson(Map<String, dynamic> json) {
    vip = json['vip'] != null
        ? new AttentionDataCardsDescUserProfileVip.fromJson(json['vip'])
        : null;
    pendant = json['pendant'] != null
        ? new AttentionDataCardsDescUserProfilePendant.fromJson(json['pendant'])
        : null;
    card = json['card'] != null
        ? new AttentionDataCardsDescUserProfileCard.fromJson(json['card'])
        : null;
    info = json['info'] != null
        ? new AttentionDataCardsDescUserProfileInfo.fromJson(json['info'])
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

class AttentionDataCardsDescUserProfileVip {
  int vipduedate;
  int viptype;
  int accessstatus;
  int vipstatus;
  String dueremark;
  String vipstatuswarn;

  AttentionDataCardsDescUserProfileVip({this.vipduedate,
    this.viptype,
    this.accessstatus,
    this.vipstatus,
    this.dueremark,
    this.vipstatuswarn});

  AttentionDataCardsDescUserProfileVip.fromJson(Map<String, dynamic> json) {
    vipduedate = json['vipDueDate'];
    viptype = json['vipType'];
    accessstatus = json['accessStatus'];
    vipstatus = json['vipStatus'];
    dueremark = json['dueRemark'];
    vipstatuswarn = json['vipStatusWarn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vipDueDate'] = this.vipduedate;
    data['vipType'] = this.viptype;
    data['accessStatus'] = this.accessstatus;
    data['vipStatus'] = this.vipstatus;
    data['dueRemark'] = this.dueremark;
    data['vipStatusWarn'] = this.vipstatuswarn;
    return data;
  }
}

class AttentionDataCardsDescUserProfilePendant {
  String image;
  int expire;
  String name;
  int pid;

  AttentionDataCardsDescUserProfilePendant(
      {this.image, this.expire, this.name, this.pid});

  AttentionDataCardsDescUserProfilePendant.fromJson(Map<String, dynamic> json) {
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

class AttentionDataCardsDescUserProfileCard {
  AttentionDataCardsDescUserProfileCardOfficialVerify officialVerify;

  AttentionDataCardsDescUserProfileCard({this.officialVerify});

  AttentionDataCardsDescUserProfileCard.fromJson(Map<String, dynamic> json) {
    officialVerify = json['official_verify'] != null
        ? new AttentionDataCardsDescUserProfileCardOfficialVerify.fromJson(
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

class AttentionDataCardsDescUserProfileCardOfficialVerify {
  int type;
  String desc;

  AttentionDataCardsDescUserProfileCardOfficialVerify({this.type, this.desc});

  AttentionDataCardsDescUserProfileCardOfficialVerify.fromJson(
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

class AttentionDataCardsDescUserProfileInfo {
  int uid;
  String face;
  String uname;

  AttentionDataCardsDescUserProfileInfo({this.uid, this.face, this.uname});

  AttentionDataCardsDescUserProfileInfo.fromJson(Map<String, dynamic> json) {
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

class AttentionDataAttentions {
  List<int> uids;
  List<AttentionDataAttentionsBangumi> bangumis;

  AttentionDataAttentions({this.uids, this.bangumis});

  AttentionDataAttentions.fromJson(Map<String, dynamic> json) {
    uids = json['uids'].cast<int>();
    if (json['bangumis'] != null) {
      bangumis = new List<AttentionDataAttentionsBangumi>();
      json['bangumis'].forEach((v) {
        bangumis.add(new AttentionDataAttentionsBangumi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uids'] = this.uids;
    if (this.bangumis != null) {
      data['bangumis'] = this.bangumis.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AttentionDataAttentionsBangumi {
  int seasonId;
  int type;

  AttentionDataAttentionsBangumi({this.seasonId, this.type});

  AttentionDataAttentionsBangumi.fromJson(Map<String, dynamic> json) {
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
  List<AttentionDataFoldMgrFold> folds;
  int foldType;

  AttentionDataFoldMgr({this.folds, this.foldType});

  AttentionDataFoldMgr.fromJson(Map<String, dynamic> json) {
    if (json['folds'] != null) {
      folds = new List<AttentionDataFoldMgrFold>();
      json['folds'].forEach((v) {
        folds.add(new AttentionDataFoldMgrFold.fromJson(v));
      });
    }
    foldType = json['fold_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.folds != null) {
      data['folds'] = this.folds.map((v) => v.toJson()).toList();
    }
    data['fold_type'] = this.foldType;
    return data;
  }
}

class AttentionDataFoldMgrFold {
  List<int> dynamicIds;

  AttentionDataFoldMgrFold({this.dynamicIds});

  AttentionDataFoldMgrFold.fromJson(Map<String, dynamic> json) {
    dynamicIds = json['dynamic_ids'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dynamic_ids'] = this.dynamicIds;
    return data;
  }
}
