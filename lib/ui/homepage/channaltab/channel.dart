import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/channel_video.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:flutter/material.dart';

class ChannelTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ChannelTabState();
}

class ChannelTabState extends State<ChannelTab> {
  ChannelVideoEntity channelData;
  static const channelUrl = "https://www.bilibili.com/index/ding.json";
  var isShown = false;
  static const channelPref = "channel";

  Future<void> _getChannelList(bool force) async {
    var jsonStr =
        await BiliBiliApi.HttpPrefGetAuto(channelUrl, channelPref, force);
    if (isShown) jsonStr = jsonStr.replaceFirst(r'"":', r'"tttt":');
    setState(() {
      channelData = ChannelVideoEntity.fromJson(json.decode(jsonStr));
    });
    if (!force) _getChannelList(true);
  }

  @override
  void initState() {
    super.initState();
    isShown = true;
    _getChannelList(false);
  }

  @override
  void dispose() {
    isShown = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _getChannelList(true);
    return RefreshIndicator(
      onRefresh: () => _getChannelList(true),
      child: Container(
//        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 1),
        child: GridView.builder(
          itemCount: channelData == null ? 1 : 15,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: channelData == null ? 1 : 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            if (channelData != null) {
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.face),
                  Text(channelData.items[index].name),
                ],
              ));
            } else
              return new Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
