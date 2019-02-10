class Biliplus {
  String mode;
  String warn;
  List<BiliplusData> data;
  int xPart;
  List<String> notinlist;
  int expire;
  String length;
  BiliplusStorage storage;
  int cid;

  Biliplus(
      {this.mode,
      this.warn,
      this.data,
      this.xPart,
      this.notinlist,
      this.expire,
      this.length,
      this.storage,
      this.cid});

  Biliplus.fromJson(Map<String, dynamic> json) {
    mode = json['mode'];
    warn = json['warn'];
    if (json['data'] != null) {
      data = new List<BiliplusData>();
      json['data'].forEach((v) {
        data.add(new BiliplusData.fromJson(v));
      });
    }
    xPart = json['part'];
    notinlist = json['notInList'].cast<String>();
    expire = json['expire'];
    length = json['length'];
    storage = json['storage'] != null
        ? new BiliplusStorage.fromJson(json['storage'])
        : null;
    cid = json['cid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mode'] = this.mode;
    data['warn'] = this.warn;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['part'] = this.xPart;
    data['notInList'] = this.notinlist;
    data['expire'] = this.expire;
    data['length'] = this.length;
    if (this.storage != null) {
      data['storage'] = this.storage.toJson();
    }
    data['cid'] = this.cid;
    return data;
  }
}

class BiliplusData {
  String name;
  List<BiliplusDataPart> parts;
  String type;
  String url;
  String info;

  BiliplusData({this.name, this.parts, this.type, this.url, this.info});

  BiliplusData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['parts'] != null) {
      parts = new List<BiliplusDataPart>();
      json['parts'].forEach((v) {
        parts.add(new BiliplusDataPart.fromJson(v));
      });
    }
    type = json['type'];
    url = json['url'];
    info = json['info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.parts != null) {
      data['parts'] = this.parts.map((v) => v.toJson()).toList();
    }
    data['type'] = this.type;
    data['url'] = this.url;
    data['info'] = this.info;
    return data;
  }
}

class BiliplusDataPart {
  String length;
  String url;

  BiliplusDataPart({this.length, this.url});

  BiliplusDataPart.fromJson(Map<String, dynamic> json) {
    length = json['length'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['length'] = this.length;
    data['url'] = this.url;
    return data;
  }
}

class BiliplusStorage {
  int access;

  BiliplusStorage({this.access});

  BiliplusStorage.fromJson(Map<String, dynamic> json) {
    access = json['access'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access'] = this.access;
    return data;
  }
}
