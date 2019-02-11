import 'package:bilibrowser/bilibiliApi/jsonParse/channel_video_data_entity.dart';

class ChannelItem {
  List<ChannelVideoDataEntity> list;
  String name;
  String alias;
  String imgsrc;

  ChannelItem({this.name, this.list, this.imgsrc, this.alias});
}

class NameWithAlias {
  final String name;
  final String alias;

  const NameWithAlias({this.name, this.alias});
}

class ChannelVideoEntity {
  int code;
  int pages;
  int results;
  String list;
  List<ChannelItem> items;

  static const List<NameWithAlias> itemnames = [
    const NameWithAlias(
      name: 'douga',
      alias: 'douga',
    ),
    const NameWithAlias(
      name: 'teleplay',
      alias: 'teleplay',
    ),
    const NameWithAlias(
      name: 'kichiku',
      alias: 'kichiku',
    ),
    const NameWithAlias(
      name: 'dance',
      alias: 'dance',
    ),
    const NameWithAlias(
      name: 'bangumi',
      alias: 'bangumi',
    ),
    const NameWithAlias(
      name: 'fashion',
      alias: 'fashion',
    ),
    const NameWithAlias(
      name: 'life',
      alias: 'life',
    ),
    const NameWithAlias(
      name: 'ad',
      alias: 'ad',
    ),
    const NameWithAlias(
      name: 'guochuang',
      alias: 'guochuang',
    ),
    const NameWithAlias(
      name: 'digital',
      alias: 'digital',
    ),
    const NameWithAlias(
      name: 'movie',
      alias: 'movie',
    ),
    const NameWithAlias(
      name: 'music',
      alias: 'music',
    ),
    const NameWithAlias(
      name: 'technology',
      alias: 'technology',
    ),
    const NameWithAlias(
      name: 'game',
      alias: 'game',
    ),
    const NameWithAlias(
      name: 'ent',
      alias: 'ent',
    )
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
      if (json[itemname.name] != null) {
        var itemlist = new List<ChannelVideoDataEntity>();
        for (var i = 0; i < json[itemname.name].length; i++)
          itemlist.add(new ChannelVideoDataEntity.fromJson(
              json[itemname.name][i.toString()]));
        items.add(ChannelItem(
          name: itemname.name,
          alias: itemname.alias,
          list: itemlist,
//          imgsrc: "",
        ));
      }
    }
  }
}
