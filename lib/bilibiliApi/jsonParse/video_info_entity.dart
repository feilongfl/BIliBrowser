class VideoInfo {
  int code;
  VideoInfoData data;
  String session;
  String message;
  int ttl;

  VideoInfo({this.code, this.data, this.session, this.message, this.ttl});

  VideoInfo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data =
        json['data'] != null ? new VideoInfoData.fromJson(json['data']) : null;
    session = json['session'];
    message = json['message'];
    ttl = json['ttl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['session'] = this.session;
    data['message'] = this.message;
    data['ttl'] = this.ttl;
    return data;
  }
}

class VideoInfoData {
  String acceptFormat;
  int code;
  String seekParam;
  int isPreview;
  String format;
  int fnval;
  bool videoProject;
  int fnver;
  List<int> acceptQuality;
  int bp;
  int quality;
  int timelength;
  String result;
  String seekType;
  bool hasPaid;
  int vipType;
  int vipStatus;
  String from;
  VideoInfoDataDash dash;
  int videoCodecid;
  List<String> acceptDescription;
  int status;

  VideoInfoData(
      {this.acceptFormat,
      this.code,
      this.seekParam,
      this.isPreview,
      this.format,
      this.fnval,
      this.videoProject,
      this.fnver,
      this.acceptQuality,
      this.bp,
      this.quality,
      this.timelength,
      this.result,
      this.seekType,
      this.hasPaid,
      this.vipType,
      this.vipStatus,
      this.from,
      this.dash,
      this.videoCodecid,
      this.acceptDescription,
      this.status});

  VideoInfoData.fromJson(Map<String, dynamic> json) {
    acceptFormat = json['accept_format'];
    code = json['code'];
    seekParam = json['seek_param'];
    isPreview = json['is_preview'];
    format = json['format'];
    fnval = json['fnval'];
    videoProject = json['video_project'];
    fnver = json['fnver'];
    acceptQuality = json['accept_quality'].cast<int>();
    bp = json['bp'];
    quality = json['quality'];
    timelength = json['timelength'];
    result = json['result'];
    seekType = json['seek_type'];
    hasPaid = json['has_paid'];
    vipType = json['vip_type'];
    vipStatus = json['vip_status'];
    from = json['from'];
    dash = json['dash'] != null
        ? new VideoInfoDataDash.fromJson(json['dash'])
        : null;
    videoCodecid = json['video_codecid'];
    acceptDescription = json['accept_description'].cast<String>();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accept_format'] = this.acceptFormat;
    data['code'] = this.code;
    data['seek_param'] = this.seekParam;
    data['is_preview'] = this.isPreview;
    data['format'] = this.format;
    data['fnval'] = this.fnval;
    data['video_project'] = this.videoProject;
    data['fnver'] = this.fnver;
    data['accept_quality'] = this.acceptQuality;
    data['bp'] = this.bp;
    data['quality'] = this.quality;
    data['timelength'] = this.timelength;
    data['result'] = this.result;
    data['seek_type'] = this.seekType;
    data['has_paid'] = this.hasPaid;
    data['vip_type'] = this.vipType;
    data['vip_status'] = this.vipStatus;
    data['from'] = this.from;
    if (this.dash != null) {
      data['dash'] = this.dash.toJson();
    }
    data['video_codecid'] = this.videoCodecid;
    data['accept_description'] = this.acceptDescription;
    data['status'] = this.status;
    return data;
  }
}

class VideoInfoDataDash {
  int duration;
  double minbuffertime;
  List<VideoInfoDataDashVideo> video;
  List<VideoInfoDataDashAudio> audio;

  VideoInfoDataDash(
      {this.duration, this.minbuffertime, this.video, this.audio});

  VideoInfoDataDash.fromJson(Map<String, dynamic> json) {
    duration = json['duration'];
    minbuffertime = json['minBufferTime'];
    if (json['video'] != null) {
      video = new List<VideoInfoDataDashVideo>();
      json['video'].forEach((v) {
        video.add(new VideoInfoDataDashVideo.fromJson(v));
      });
    }
    if (json['audio'] != null) {
      audio = new List<VideoInfoDataDashAudio>();
      json['audio'].forEach((v) {
        audio.add(new VideoInfoDataDashAudio.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['duration'] = this.duration;
    data['minBufferTime'] = this.minbuffertime;
    if (this.video != null) {
      data['video'] = this.video.map((v) => v.toJson()).toList();
    }
    if (this.audio != null) {
      data['audio'] = this.audio.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VideoInfoDataDashVideo {
  int bandwidth;
  String sar;
  String codecs;
  String baseUrl;
  String mimetype;
  VideoInfoDataDashVideoSegmentbase segmentbase;
  String framerate;
  String baseurl;
  int codecid;
  int width;
  int startwithsap;
  int id;
  int height;

  VideoInfoDataDashVideo(
      {this.bandwidth,
      this.sar,
      this.codecs,
      this.baseUrl,
      this.mimetype,
      this.segmentbase,
      this.framerate,
      this.baseurl,
      this.codecid,
      this.width,
      this.startwithsap,
      this.id,
      this.height});

  VideoInfoDataDashVideo.fromJson(Map<String, dynamic> json) {
    bandwidth = json['bandwidth'];
    sar = json['sar'];
    codecs = json['codecs'];
    baseUrl = json['base_url'];
    mimetype = json['mimeType'];
    segmentbase = json['SegmentBase'] != null
        ? new VideoInfoDataDashVideoSegmentbase.fromJson(json['SegmentBase'])
        : null;
    framerate = json['frameRate'];
    baseurl = json['baseUrl'];
    codecid = json['codecid'];
    width = json['width'];
    startwithsap = json['startWithSAP'];
    id = json['id'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bandwidth'] = this.bandwidth;
    data['sar'] = this.sar;
    data['codecs'] = this.codecs;
    data['base_url'] = this.baseUrl;
    data['mimeType'] = this.mimetype;
    if (this.segmentbase != null) {
      data['SegmentBase'] = this.segmentbase.toJson();
    }
    data['frameRate'] = this.framerate;
    data['baseUrl'] = this.baseurl;
    data['codecid'] = this.codecid;
    data['width'] = this.width;
    data['startWithSAP'] = this.startwithsap;
    data['id'] = this.id;
    data['height'] = this.height;
    return data;
  }
}

class VideoInfoDataDashVideoSegmentbase {
  String initialization;
  String indexrange;

  VideoInfoDataDashVideoSegmentbase({this.initialization, this.indexrange});

  VideoInfoDataDashVideoSegmentbase.fromJson(Map<String, dynamic> json) {
    initialization = json['Initialization'];
    indexrange = json['indexRange'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Initialization'] = this.initialization;
    data['indexRange'] = this.indexrange;
    return data;
  }
}

class VideoInfoDataDashAudio {
  VideoInfoDataDashAudioSegmentbase segmentbase;
  String baseurl;
  int bandwidth;
  String codecs;
  String baseUrl;
  int id;
  String mimetype;

  VideoInfoDataDashAudio(
      {this.segmentbase,
      this.baseurl,
      this.bandwidth,
      this.codecs,
      this.baseUrl,
      this.id,
      this.mimetype});

  VideoInfoDataDashAudio.fromJson(Map<String, dynamic> json) {
    segmentbase = json['SegmentBase'] != null
        ? new VideoInfoDataDashAudioSegmentbase.fromJson(json['SegmentBase'])
        : null;
    baseurl = json['baseUrl'];
    bandwidth = json['bandwidth'];
    codecs = json['codecs'];
    baseUrl = json['base_url'];
    id = json['id'];
    mimetype = json['mimeType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.segmentbase != null) {
      data['SegmentBase'] = this.segmentbase.toJson();
    }
    data['baseUrl'] = this.baseurl;
    data['bandwidth'] = this.bandwidth;
    data['codecs'] = this.codecs;
    data['base_url'] = this.baseUrl;
    data['id'] = this.id;
    data['mimeType'] = this.mimetype;
    return data;
  }
}

class VideoInfoDataDashAudioSegmentbase {
  String initialization;
  String indexrange;

  VideoInfoDataDashAudioSegmentbase({this.initialization, this.indexrange});

  VideoInfoDataDashAudioSegmentbase.fromJson(Map<String, dynamic> json) {
    initialization = json['Initialization'];
    indexrange = json['indexRange'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Initialization'] = this.initialization;
    data['indexRange'] = this.indexrange;
    return data;
  }
}
