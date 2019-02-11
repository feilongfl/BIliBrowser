class LiveVideo {
  List<LiveVideoDurl> durl;
  List<int> acceptQuality;
  int currentQuality;

  LiveVideo({this.durl, this.acceptQuality, this.currentQuality});

  LiveVideo.fromJson(Map<String, dynamic> json) {
    if (json['durl'] != null) {
      durl = new List<LiveVideoDurl>();
      json['durl'].forEach((v) {
        durl.add(new LiveVideoDurl.fromJson(v));
      });
    }
    acceptQuality = json['accept_quality'].cast<int>();
    currentQuality = json['current_quality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.durl != null) {
      data['durl'] = this.durl.map((v) => v.toJson()).toList();
    }
    data['accept_quality'] = this.acceptQuality;
    data['current_quality'] = this.currentQuality;
    return data;
  }
}

class LiveVideoDurl {
  int streamType;
  int length;
  String url;
  int order;

  LiveVideoDurl({this.streamType, this.length, this.url, this.order});

  LiveVideoDurl.fromJson(Map<String, dynamic> json) {
    streamType = json['stream_type'];
    length = json['length'];
    url = json['url'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stream_type'] = this.streamType;
    data['length'] = this.length;
    data['url'] = this.url;
    data['order'] = this.order;
    return data;
  }
}
