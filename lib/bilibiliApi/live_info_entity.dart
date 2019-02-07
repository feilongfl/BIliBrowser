class LiveInfoEntity {
  String msg;
  int code;
  LiveInfoDatum datum;
  String message;

  LiveInfoEntity({this.msg, this.code, this.datum, this.message});

  LiveInfoEntity.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    code = json['code'];
    datum =
        json['data'] != null ? new LiveInfoDatum.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['code'] = this.code;
    if (this.datum != null) {
      data['data'] = this.datum.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class LiveInfoDatum {
  int pagesize;
  int page;
  List<LiveInfoList> xList;
  int result;

  LiveInfoDatum({this.pagesize, this.page, this.xList, this.result});

  LiveInfoDatum.fromJson(Map<String, dynamic> json) {
    pagesize = json['pagesize'];
    page = json['page'];
    if (json['list'] != null) {
      xList = new List<LiveInfoList>();
      json['list'].forEach((v) {
        xList.add(new LiveInfoList.fromJson(v));
      });
    }
    result = json['results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pagesize'] = this.pagesize;
    data['page'] = this.page;
    if (this.xList != null) {
      data['list'] = this.xList.map((v) => v.toJson()).toList();
    }
    data['results'] = this.result;
    return data;
  }
}

class LiveInfoList {
  String cover;
  String face;
  String uname;
  String link;
  int online;
  String pic;
  String title;
  int roomid;

  LiveInfoList(
      {this.cover,
      this.face,
      this.uname,
      this.link,
      this.online,
      this.pic,
      this.title,
      this.roomid});

  LiveInfoList.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    face = json['face'];
    uname = json['uname'];
    link = json['link'];
    online = json['online'];
    pic = json['pic'];
    title = json['title'];
    roomid = json['roomid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['face'] = this.face;
    data['uname'] = this.uname;
    data['link'] = this.link;
    data['online'] = this.online;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['roomid'] = this.roomid;
    return data;
  }
}
