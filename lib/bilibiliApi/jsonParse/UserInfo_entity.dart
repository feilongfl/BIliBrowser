//https://api.bilibili.com/x/web-interface/nav

class UserinfoEntity {
  int code;
  UserinfoData data;
  String message;
  int ttl;

  UserinfoEntity({this.code, this.data, this.message, this.ttl});

  UserinfoEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data =
        json['data'] != null ? new UserinfoData.fromJson(json['data']) : null;
    message = json['message'];
    ttl = json['ttl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    data['ttl'] = this.ttl;
    return data;
  }
}

class UserinfoData {
  bool islogin;
  int emailVerified;
  String face;
  UserinfoLevelInfo levelInfo;
  int mid;
  int mobileVerified;
  double money;
  int moral;
  UserinfoOfficialverify officialverify;
  UserinfoPendant pendant;
  int scores;
  String uname;
  int vipduedate;
  int vipstatus;
  int viptype;
  int vipPayType;
  UserinfoWallet wallet;
  bool hasShop;
  String shopUrl;
  int allowanceCount;

  UserinfoData(
      {this.islogin,
      this.emailVerified,
      this.face,
      this.levelInfo,
      this.mid,
      this.mobileVerified,
      this.money,
      this.moral,
      this.officialverify,
      this.pendant,
      this.scores,
      this.uname,
      this.vipduedate,
      this.vipstatus,
      this.viptype,
      this.vipPayType,
      this.wallet,
      this.hasShop,
      this.shopUrl,
      this.allowanceCount});

  UserinfoData.fromJson(Map<String, dynamic> json) {
    islogin = json['isLogin'];
    emailVerified = json['email_verified'];
    face = json['face'];
    levelInfo = json['level_info'] != null
        ? new UserinfoLevelInfo.fromJson(json['level_info'])
        : null;
    mid = json['mid'];
    mobileVerified = json['mobile_verified'];
    money = json['money'];
    moral = json['moral'];
    officialverify = json['officialVerify'] != null
        ? new UserinfoOfficialverify.fromJson(json['officialVerify'])
        : null;
    pendant = json['pendant'] != null
        ? new UserinfoPendant.fromJson(json['pendant'])
        : null;
    scores = json['scores'];
    uname = json['uname'];
    vipduedate = json['vipDueDate'];
    vipstatus = json['vipStatus'];
    viptype = json['vipType'];
    vipPayType = json['vip_pay_type'];
    wallet = json['wallet'] != null
        ? new UserinfoWallet.fromJson(json['wallet'])
        : null;
    hasShop = json['has_shop'];
    shopUrl = json['shop_url'];
    allowanceCount = json['allowance_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isLogin'] = this.islogin;
    data['email_verified'] = this.emailVerified;
    data['face'] = this.face;
    if (this.levelInfo != null) {
      data['level_info'] = this.levelInfo.toJson();
    }
    data['mid'] = this.mid;
    data['mobile_verified'] = this.mobileVerified;
    data['money'] = this.money;
    data['moral'] = this.moral;
    if (this.officialverify != null) {
      data['officialVerify'] = this.officialverify.toJson();
    }
    if (this.pendant != null) {
      data['pendant'] = this.pendant.toJson();
    }
    data['scores'] = this.scores;
    data['uname'] = this.uname;
    data['vipDueDate'] = this.vipduedate;
    data['vipStatus'] = this.vipstatus;
    data['vipType'] = this.viptype;
    data['vip_pay_type'] = this.vipPayType;
    if (this.wallet != null) {
      data['wallet'] = this.wallet.toJson();
    }
    data['has_shop'] = this.hasShop;
    data['shop_url'] = this.shopUrl;
    data['allowance_count'] = this.allowanceCount;
    return data;
  }
}

class UserinfoLevelInfo {
  int currentLevel;
  int currentMin;
  int currentExp;
  int nextExp;

  UserinfoLevelInfo(
      {this.currentLevel, this.currentMin, this.currentExp, this.nextExp});

  UserinfoLevelInfo.fromJson(Map<String, dynamic> json) {
    currentLevel = json['current_level'];
    currentMin = json['current_min'];
    currentExp = json['current_exp'];
    nextExp = json['next_exp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_level'] = this.currentLevel;
    data['current_min'] = this.currentMin;
    data['current_exp'] = this.currentExp;
    data['next_exp'] = this.nextExp;
    return data;
  }
}

class UserinfoOfficialverify {
  int type;
  String desc;

  UserinfoOfficialverify({this.type, this.desc});

  UserinfoOfficialverify.fromJson(Map<String, dynamic> json) {
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

class UserinfoPendant {
  int pid;
  String name;
  String image;
  int expire;

  UserinfoPendant({this.pid, this.name, this.image, this.expire});

  UserinfoPendant.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    name = json['name'];
    image = json['image'];
    expire = json['expire'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pid'] = this.pid;
    data['name'] = this.name;
    data['image'] = this.image;
    data['expire'] = this.expire;
    return data;
  }
}

class UserinfoWallet {
  int mid;
  int bcoinBalance;
  int couponBalance;
  int couponDueTime;

  UserinfoWallet(
      {this.mid, this.bcoinBalance, this.couponBalance, this.couponDueTime});

  UserinfoWallet.fromJson(Map<String, dynamic> json) {
    mid = json['mid'];
    bcoinBalance = json['bcoin_balance'];
    couponBalance = json['coupon_balance'];
    couponDueTime = json['coupon_due_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mid'] = this.mid;
    data['bcoin_balance'] = this.bcoinBalance;
    data['coupon_balance'] = this.couponBalance;
    data['coupon_due_time'] = this.couponDueTime;
    return data;
  }
}
