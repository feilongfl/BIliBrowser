class EposideInfo {
	bool loaded;
	EposideInfoSponsor sponsor;
	Null eppaymant;
	EposideInfoUserstate userstate;
	List<EposideInfoSslist> sslist;
	List<String> insertscript;
	String h1title;
	EposideInfoMediainfo mediainfo;
	Null sspaymant;
	List<EposideInfoEplist> eplist;
	EposideInfoEpinfo epinfo;
	EposideInfoPlayer player;

	EposideInfo(
			{this.loaded, this.sponsor, this.eppaymant, this.userstate, this.sslist, this.insertscript, this.h1title, this.mediainfo, this.sspaymant, this.eplist, this.epinfo, this.player});

	EposideInfo.fromJson(Map<String, dynamic> json) {
		loaded = json['loaded'];
		sponsor = json['sponsor'] != null
				? new EposideInfoSponsor.fromJson(json['sponsor'])
				: null;
		eppaymant = json['epPayMent'];
		userstate = json['userState'] != null ? new EposideInfoUserstate.fromJson(
				json['userState']) : null;
		if (json['ssList'] != null) {
			sslist = new List<EposideInfoSslist>();
			json['ssList'].forEach((v) {
				sslist.add(new EposideInfoSslist.fromJson(v));
			});
		}
		insertscript = json['insertScripts'].cast<String>();
		h1title = json['h1Title'];
		mediainfo = json['mediaInfo'] != null ? new EposideInfoMediainfo.fromJson(
				json['mediaInfo']) : null;
		sspaymant = json['ssPayMent'];
		if (json['epList'] != null) {
			eplist = new List<EposideInfoEplist>();
			json['epList'].forEach((v) {
				eplist.add(new EposideInfoEplist.fromJson(v));
			});
		}
		epinfo = json['epInfo'] != null
				? new EposideInfoEpinfo.fromJson(json['epInfo'])
				: null;
		player = json['player'] != null
				? new EposideInfoPlayer.fromJson(json['player'])
				: null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['loaded'] = this.loaded;
		if (this.sponsor != null) {
      data['sponsor'] = this.sponsor.toJson();
    }
		data['epPayMent'] = this.eppaymant;
		if (this.userstate != null) {
      data['userState'] = this.userstate.toJson();
    }
		if (this.sslist != null) {
			data['ssList'] = this.sslist.map((v) => v.toJson()).toList();
		}
		data['insertScripts'] = this.insertscript;
		data['h1Title'] = this.h1title;
		if (this.mediainfo != null) {
      data['mediaInfo'] = this.mediainfo.toJson();
    }
		data['ssPayMent'] = this.sspaymant;
		if (this.eplist != null) {
			data['epList'] = this.eplist.map((v) => v.toJson()).toList();
		}
		if (this.epinfo != null) {
      data['epInfo'] = this.epinfo.toJson();
    }
		if (this.player != null) {
      data['player'] = this.player.toJson();
    }
		return data;
	}
}

class EposideInfoSponsor {
	bool allready;
	Null weekmine;
	int allstate;
	int weekstate;
	Null allmine;
	bool weekready;
	int allcount;
	int weekcount;

	EposideInfoSponsor(
			{this.allready, this.weekmine, this.allstate, this.weekstate, this.allmine, this.weekready, this.allcount, this.weekcount});

	EposideInfoSponsor.fromJson(Map<String, dynamic> json) {
		allready = json['allReady'];
		weekmine = json['weekMine'];
		allstate = json['allState'];
		weekstate = json['weekState'];
		allmine = json['allMine'];
		weekready = json['weekReady'];
		allcount = json['allCount'];
		weekcount = json['weekCount'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['allReady'] = this.allready;
		data['weekMine'] = this.weekmine;
		data['allState'] = this.allstate;
		data['weekState'] = this.weekstate;
		data['allMine'] = this.allmine;
		data['weekReady'] = this.weekready;
		data['allCount'] = this.allcount;
		data['weekCount'] = this.weekcount;
		return data;
	}
}

class EposideInfoUserstate {
	bool loaded;

	EposideInfoUserstate({this.loaded});

	EposideInfoUserstate.fromJson(Map<String, dynamic> json) {
		loaded = json['loaded'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['loaded'] = this.loaded;
		return data;
	}
}

class EposideInfoSslist {
	String cover;
	String badge;
	int badgetype;
	String epcover;
	int follow;
	int id;
	String title;
	int type;
	String pgctype;
	int view;
	String desc;

	EposideInfoSslist(
			{this.cover, this.badge, this.badgetype, this.epcover, this.follow, this.id, this.title, this.type, this.pgctype, this.view, this.desc});

	EposideInfoSslist.fromJson(Map<String, dynamic> json) {
		cover = json['cover'];
		badge = json['badge'];
		badgetype = json['badgeType'];
		epcover = json['epCover'];
		follow = json['follows'];
		id = json['id'];
		title = json['title'];
		type = json['type'];
		pgctype = json['pgcType'];
		view = json['views'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cover'] = this.cover;
		data['badge'] = this.badge;
		data['badgeType'] = this.badgetype;
		data['epCover'] = this.epcover;
		data['follows'] = this.follow;
		data['id'] = this.id;
		data['title'] = this.title;
		data['type'] = this.type;
		data['pgcType'] = this.pgctype;
		data['views'] = this.view;
		data['desc'] = this.desc;
		return data;
	}
}

class EposideInfoMediainfo {
	int sstype;
	EposideInfoMediainfoActivity activity;
	EposideInfoMediainfoSstypeformat sstypeformat;
	EposideInfoMediainfoRating rating;
	String mainsectitle;
	String title;
	String cover;
	EposideInfoMediainfoRight right;
	String alia;
	int id;
	EposideInfoMediainfoUpinfo upinfo;
	EposideInfoMediainfoNewestep newestep;
	String squarecover;
	EposideInfoMediainfoCount count;
	bool epspmode;
	EposideInfoMediainfoPaymant paymant;
	String specialcover;
	int ssid;
	EposideInfoMediainfoPaypack paypack;
	bool multimode;
	String jptitle;
	String series;
	String playerrecord;
	EposideInfoMediainfoPub pub;
	String evaluate;
	String pgctype;
	int statu;

	EposideInfoMediainfo(
			{this.sstype, this.activity, this.sstypeformat, this.rating, this.mainsectitle, this.title, this.cover, this.right, this.alia, this.id, this.upinfo, this.newestep, this.squarecover, this.count, this.epspmode, this.paymant, this.specialcover, this.ssid, this.paypack, this.multimode, this.jptitle, this.series, this.playerrecord, this.pub, this.evaluate, this.pgctype, this.statu});

	EposideInfoMediainfo.fromJson(Map<String, dynamic> json) {
		sstype = json['ssType'];
		activity =
		json['activity'] != null ? new EposideInfoMediainfoActivity.fromJson(
				json['activity']) : null;
		sstypeformat =
		json['ssTypeFormat'] != null ? new EposideInfoMediainfoSstypeformat
				.fromJson(json['ssTypeFormat']) : null;
		rating = json['rating'] != null ? new EposideInfoMediainfoRating.fromJson(
				json['rating']) : null;
		mainsectitle = json['mainSecTitle'];
		title = json['title'];
		cover = json['cover'];
		right = json['rights'] != null ? new EposideInfoMediainfoRight.fromJson(
				json['rights']) : null;
		alia = json['alias'];
		id = json['id'];
		upinfo = json['upInfo'] != null ? new EposideInfoMediainfoUpinfo.fromJson(
				json['upInfo']) : null;
		newestep =
		json['newestEp'] != null ? new EposideInfoMediainfoNewestep.fromJson(
				json['newestEp']) : null;
		squarecover = json['squareCover'];
		count = json['count'] != null ? new EposideInfoMediainfoCount.fromJson(
				json['count']) : null;
		epspmode = json['epSpMode'];
		paymant =
		json['payMent'] != null ? new EposideInfoMediainfoPaymant.fromJson(
				json['payMent']) : null;
		specialcover = json['specialCover'];
		ssid = json['ssId'];
		paypack =
		json['payPack'] != null ? new EposideInfoMediainfoPaypack.fromJson(
				json['payPack']) : null;
		multimode = json['multiMode'];
		jptitle = json['jpTitle'];
		series = json['series'];
		playerrecord = json['playerRecord'];
		pub = json['pub'] != null
				? new EposideInfoMediainfoPub.fromJson(json['pub'])
				: null;
		evaluate = json['evaluate'];
		pgctype = json['pgcType'];
		statu = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ssType'] = this.sstype;
		if (this.activity != null) {
      data['activity'] = this.activity.toJson();
    }
		if (this.sstypeformat != null) {
      data['ssTypeFormat'] = this.sstypeformat.toJson();
    }
		if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
		data['mainSecTitle'] = this.mainsectitle;
		data['title'] = this.title;
		data['cover'] = this.cover;
		if (this.right != null) {
      data['rights'] = this.right.toJson();
    }
		data['alias'] = this.alia;
		data['id'] = this.id;
		if (this.upinfo != null) {
      data['upInfo'] = this.upinfo.toJson();
    }
		if (this.newestep != null) {
      data['newestEp'] = this.newestep.toJson();
    }
		data['squareCover'] = this.squarecover;
		if (this.count != null) {
      data['count'] = this.count.toJson();
    }
		data['epSpMode'] = this.epspmode;
		if (this.paymant != null) {
      data['payMent'] = this.paymant.toJson();
    }
		data['specialCover'] = this.specialcover;
		data['ssId'] = this.ssid;
		if (this.paypack != null) {
      data['payPack'] = this.paypack.toJson();
    }
		data['multiMode'] = this.multimode;
		data['jpTitle'] = this.jptitle;
		data['series'] = this.series;
		data['playerRecord'] = this.playerrecord;
		if (this.pub != null) {
      data['pub'] = this.pub.toJson();
    }
		data['evaluate'] = this.evaluate;
		data['pgcType'] = this.pgctype;
		data['status'] = this.statu;
		return data;
	}
}

class EposideInfoMediainfoActivity {
	String pendantopsimg;
	int id;
	String title;
	String pendantopslink;

	EposideInfoMediainfoActivity(
			{this.pendantopsimg, this.id, this.title, this.pendantopslink});

	EposideInfoMediainfoActivity.fromJson(Map<String, dynamic> json) {
		pendantopsimg = json['pendantOpsImg'];
		id = json['id'];
		title = json['title'];
		pendantopslink = json['pendantOpsLink'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['pendantOpsImg'] = this.pendantopsimg;
		data['id'] = this.id;
		data['title'] = this.title;
		data['pendantOpsLink'] = this.pendantopslink;
		return data;
	}
}

class EposideInfoMediainfoSstypeformat {
	String name;
	String homelink;

	EposideInfoMediainfoSstypeformat({this.name, this.homelink});

	EposideInfoMediainfoSstypeformat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		homelink = json['homeLink'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['homeLink'] = this.homelink;
		return data;
	}
}

class EposideInfoMediainfoRating {
	double score;
	int count;

	EposideInfoMediainfoRating({this.score, this.count});

	EposideInfoMediainfoRating.fromJson(Map<String, dynamic> json) {
		score = json['score'];
		count = json['count'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['score'] = this.score;
		data['count'] = this.count;
		return data;
	}
}

class EposideInfoMediainfoRight {
	bool ispreview;
	bool apponly;
	bool allowbp;
	bool allowreview;
	bool limitnotfound;

	EposideInfoMediainfoRight(
			{this.ispreview, this.apponly, this.allowbp, this.allowreview, this.limitnotfound});

	EposideInfoMediainfoRight.fromJson(Map<String, dynamic> json) {
		ispreview = json['isPreview'];
		apponly = json['appOnly'];
		allowbp = json['allowBp'];
		allowreview = json['allowReview'];
		limitnotfound = json['limitNotFound'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isPreview'] = this.ispreview;
		data['appOnly'] = this.apponly;
		data['allowBp'] = this.allowbp;
		data['allowReview'] = this.allowreview;
		data['limitNotFound'] = this.limitnotfound;
		return data;
	}
}

class EposideInfoMediainfoUpinfo {
	int pendantid;
	String name;
	int mid;
	String pendantname;
	String pendantimage;
	String avatar;
	bool isannualvip;

	EposideInfoMediainfoUpinfo(
			{this.pendantid, this.name, this.mid, this.pendantname, this.pendantimage, this.avatar, this.isannualvip});

	EposideInfoMediainfoUpinfo.fromJson(Map<String, dynamic> json) {
		pendantid = json['pendantId'];
		name = json['name'];
		mid = json['mid'];
		pendantname = json['pendantName'];
		pendantimage = json['pendantImage'];
		avatar = json['avatar'];
		isannualvip = json['isAnnualVip'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['pendantId'] = this.pendantid;
		data['name'] = this.name;
		data['mid'] = this.mid;
		data['pendantName'] = this.pendantname;
		data['pendantImage'] = this.pendantimage;
		data['avatar'] = this.avatar;
		data['isAnnualVip'] = this.isannualvip;
		return data;
	}
}

class EposideInfoMediainfoNewestep {
	int id;
	bool isnew;
	String desc;

	EposideInfoMediainfoNewestep({this.id, this.isnew, this.desc});

	EposideInfoMediainfoNewestep.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		isnew = json['isNew'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['isNew'] = this.isnew;
		data['desc'] = this.desc;
		return data;
	}
}

class EposideInfoMediainfoCount {
	int coin;
	int danmu;
	int follow;
	int view;

	EposideInfoMediainfoCount({this.coin, this.danmu, this.follow, this.view});

	EposideInfoMediainfoCount.fromJson(Map<String, dynamic> json) {
		coin = json['coins'];
		danmu = json['danmus'];
		follow = json['follows'];
		view = json['views'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['coins'] = this.coin;
		data['danmus'] = this.danmu;
		data['follows'] = this.follow;
		data['views'] = this.view;
		return data;
	}
}

class EposideInfoMediainfoPaymant {
	EposideInfoMediainfoPaymantSixtype sixtype;
	String vipprom;
	int vipdiscount;
	String price;
	int discount;
	String tip;
	String vipfirstprom;
	String promotion;

	EposideInfoMediainfoPaymant(
			{this.sixtype, this.vipprom, this.vipdiscount, this.price, this.discount, this.tip, this.vipfirstprom, this.promotion});

	EposideInfoMediainfoPaymant.fromJson(Map<String, dynamic> json) {
		sixtype =
		json['sixType'] != null ? new EposideInfoMediainfoPaymantSixtype.fromJson(
				json['sixType']) : null;
		vipprom = json['vipProm'];
		vipdiscount = json['vipDiscount'];
		price = json['price'];
		discount = json['discount'];
		tip = json['tip'];
		vipfirstprom = json['vipFirstProm'];
		promotion = json['promotion'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.sixtype != null) {
      data['sixType'] = this.sixtype.toJson();
    }
		data['vipProm'] = this.vipprom;
		data['vipDiscount'] = this.vipdiscount;
		data['price'] = this.price;
		data['discount'] = this.discount;
		data['tip'] = this.tip;
		data['vipFirstProm'] = this.vipfirstprom;
		data['promotion'] = this.promotion;
		return data;
	}
}

class EposideInfoMediainfoPaymantSixtype {
	bool allowticket;
	bool allowvipdiscount;
	bool allowdiscount;
	bool allowtimelimit;

	EposideInfoMediainfoPaymantSixtype(
			{this.allowticket, this.allowvipdiscount, this.allowdiscount, this.allowtimelimit});

	EposideInfoMediainfoPaymantSixtype.fromJson(Map<String, dynamic> json) {
		allowticket = json['allowTicket'];
		allowvipdiscount = json['allowVipDiscount'];
		allowdiscount = json['allowDiscount'];
		allowtimelimit = json['allowTimeLimit'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['allowTicket'] = this.allowticket;
		data['allowVipDiscount'] = this.allowvipdiscount;
		data['allowDiscount'] = this.allowdiscount;
		data['allowTimeLimit'] = this.allowtimelimit;
		return data;
	}
}

class EposideInfoMediainfoPaypack {
	String apppaytext;
	String appnopaytext;
	String title;
	String url;

	EposideInfoMediainfoPaypack(
			{this.apppaytext, this.appnopaytext, this.title, this.url});

	EposideInfoMediainfoPaypack.fromJson(Map<String, dynamic> json) {
		apppaytext = json['appPayText'];
		appnopaytext = json['appNoPayText'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['appPayText'] = this.apppaytext;
		data['appNoPayText'] = this.appnopaytext;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class EposideInfoMediainfoPub {
	String timeshow;
	String time;
	bool isstart;
	bool isfinish;

	EposideInfoMediainfoPub(
			{this.timeshow, this.time, this.isstart, this.isfinish});

	EposideInfoMediainfoPub.fromJson(Map<String, dynamic> json) {
		timeshow = json['timeShow'];
		time = json['time'];
		isstart = json['isStart'];
		isfinish = json['isFinish'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['timeShow'] = this.timeshow;
		data['time'] = this.time;
		data['isStart'] = this.isstart;
		data['isFinish'] = this.isfinish;
		return data;
	}
}

class EposideInfoEplist {
	int i;
	bool hasnext;
	String title;
	bool loaded;
	String cover;
	String vid;
	String badge;
	int badgetype;
	String titleformat;
	String from;
	int id;
	int sectiontype;
	int aid;
	int epstatu;
	int cid;
	String longtitle;

	EposideInfoEplist(
			{this.i, this.hasnext, this.title, this.loaded, this.cover, this.vid, this.badge, this.badgetype, this.titleformat, this.from, this.id, this.sectiontype, this.aid, this.epstatu, this.cid, this.longtitle});

	EposideInfoEplist.fromJson(Map<String, dynamic> json) {
		i = json['i'];
		hasnext = json['hasNext'];
		title = json['title'];
		loaded = json['loaded'];
		cover = json['cover'];
		vid = json['vid'];
		badge = json['badge'];
		badgetype = json['badgeType'];
		titleformat = json['titleFormat'];
		from = json['from'];
		id = json['id'];
		sectiontype = json['sectionType'];
		aid = json['aid'];
		epstatu = json['epStatus'];
		cid = json['cid'];
		longtitle = json['longTitle'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['i'] = this.i;
		data['hasNext'] = this.hasnext;
		data['title'] = this.title;
		data['loaded'] = this.loaded;
		data['cover'] = this.cover;
		data['vid'] = this.vid;
		data['badge'] = this.badge;
		data['badgeType'] = this.badgetype;
		data['titleFormat'] = this.titleformat;
		data['from'] = this.from;
		data['id'] = this.id;
		data['sectionType'] = this.sectiontype;
		data['aid'] = this.aid;
		data['epStatus'] = this.epstatu;
		data['cid'] = this.cid;
		data['longTitle'] = this.longtitle;
		return data;
	}
}

class EposideInfoEpinfo {
	int i;
	bool hasnext;
	String title;
	bool loaded;
	String cover;
	String vid;
	String badge;
	int badgetype;
	String titleformat;
	String from;
	int id;
	int sectiontype;
	int aid;
	int epstatu;
	int cid;
	String longtitle;

	EposideInfoEpinfo(
			{this.i, this.hasnext, this.title, this.loaded, this.cover, this.vid, this.badge, this.badgetype, this.titleformat, this.from, this.id, this.sectiontype, this.aid, this.epstatu, this.cid, this.longtitle});

	EposideInfoEpinfo.fromJson(Map<String, dynamic> json) {
		i = json['i'];
		hasnext = json['hasNext'];
		title = json['title'];
		loaded = json['loaded'];
		cover = json['cover'];
		vid = json['vid'];
		badge = json['badge'];
		badgetype = json['badgeType'];
		titleformat = json['titleFormat'];
		from = json['from'];
		id = json['id'];
		sectiontype = json['sectionType'];
		aid = json['aid'];
		epstatu = json['epStatus'];
		cid = json['cid'];
		longtitle = json['longTitle'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['i'] = this.i;
		data['hasNext'] = this.hasnext;
		data['title'] = this.title;
		data['loaded'] = this.loaded;
		data['cover'] = this.cover;
		data['vid'] = this.vid;
		data['badge'] = this.badge;
		data['badgeType'] = this.badgetype;
		data['titleFormat'] = this.titleformat;
		data['from'] = this.from;
		data['id'] = this.id;
		data['sectionType'] = this.sectiontype;
		data['aid'] = this.aid;
		data['epStatus'] = this.epstatu;
		data['cid'] = this.cid;
		data['longTitle'] = this.longtitle;
		return data;
	}
}

class EposideInfoPlayer {
	bool loaded;
	bool minion;
	int limittype;

	EposideInfoPlayer({this.loaded, this.minion, this.limittype});

	EposideInfoPlayer.fromJson(Map<String, dynamic> json) {
		loaded = json['loaded'];
		minion = json['miniOn'];
		limittype = json['limitType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['loaded'] = this.loaded;
		data['miniOn'] = this.minion;
		data['limitType'] = this.limittype;
		return data;
	}
}
