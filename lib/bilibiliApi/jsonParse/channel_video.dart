import 'package:bilibrowser/bilibiliApi/jsonParse/channel_video_data_entity.dart';

class ChannelItem {
  List<ChannelVideoDataEntity> list;
  String name;
  String imgsrc;

  ChannelItem({this.name, this.list, this.imgsrc});
}

class ChannelVideoEntity {
  int code;
  int pages;
  int results;
  String list;
  List<ChannelItem> items;

  static const itemnames = [
    'douga',
    'teleplay',
    'kichiku',
    'dance',
    'bangumi',
    'fashion',
    'life',
    'ad',
    'guochuang',
    'tttt',
    'movie',
    'music',
    'technology',
    'game',
    'ent'
  ];

  ChannelVideoEntity({this.code, this.pages, this.results, this.list});

  ChannelVideoEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    results = json['results'];
    list = json['list'];

    //regex
//    if (json['$1'] != null) { $1 = new List<ChannelVideoDataEntity>(); for(var i = 0; i < json['$1'].length;i++) $1.add(new ChannelVideoDataEntity.fromJson(json['$1'][i.toString()]));}
//    if (json['douga'] != null) {
//      douga = new List<ChannelVideoDataEntity>();
//      for (var i = 0; i < json['douga'].length; i++)
//        douga.add(
//            new ChannelVideoDataEntity.fromJson(json['douga'][i.toString()]));
//    }
    ////
    items = new List();
    for (var itemname in itemnames) {
      if (json[itemname] != null) {
        var itemlist = new List<ChannelVideoDataEntity>();
        for (var i = 0; i < json[itemname].length; i++)
          itemlist.add(new ChannelVideoDataEntity.fromJson(
              json[itemname][i.toString()]));
        items.add(ChannelItem(
          name: itemname,
          list: itemlist,
//          imgsrc: "",
        ));
      }
    }
  }
}
