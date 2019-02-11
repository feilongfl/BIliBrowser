import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/live_info_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/core/launchUri.dart';
import 'package:bilibrowser/ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class liveTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return liveList();
  }
}

class liveList extends StatefulWidget {
  @override
  liveListState createState() => liveListState();
}

class liveListState extends State<liveList> {
  LiveInfoEntity liveList;
  static const liveurl =
      "https://api.live.bilibili.com/relation/v1/feed/feed_list";
  static const livePref = "liveList";
  var isShown = false;

  Future<void> getLiveInfo(bool force) async {
    var info = await BiliBiliApi.HttpPrefGetAuto(liveurl, livePref, force);
    if (isShown)
      setState(() {
        this.liveList = LiveInfoEntity.fromJson(json.decode(info));
      });
    if (!force) getLiveInfo(true);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isShown = true;
    getLiveInfo(false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    isShown = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var loaded = this.liveList == null ? false : (this.liveList.code == 0);
    return !loaded
        ? Center(child: CircularProgressIndicator())
        : RefreshIndicator(
            onRefresh: () => getLiveInfo(true),
            child: Container(
//              color: Theme.of(context).backgroundColor,
              padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.white,
                      ),
                  itemCount: this.liveList.datum.xList.length,
//                  padding: EdgeInsets.all(16),
//                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  itemBuilder: (BuildContext context, int index) {
                    return liveVideoInfoItem(
                        info: this.liveList.datum.xList[index]);
                  }),
            ),
          );
  }
}

class liveVideoInfoItem extends StatelessWidget {
  final LiveInfoList info;

  liveVideoInfoItem({Key key, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VideoCard(
      title: info.title,
      username: info.uname,
      userface: info.face,
      cover: info.pic,
      onTap: () {
        launchURL(this.info.link);
      },
    );
  }
}
