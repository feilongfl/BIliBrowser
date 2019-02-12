import 'dart:convert';
import 'dart:math';

import 'package:bilibrowser/bilibiliApi/jsonParse/live_info_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/live_video_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/video_info_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/core/bilivideoplayer.dart';
import 'package:bilibrowser/ui/widget/BlurImageBackground.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class livePage extends MaterialPageRoute<Null> {
  final LiveInfoList liveinfo;

  livePage(this.liveinfo)
      : super(builder: (BuildContext context) {
          return Scaffold(
//            backgroundColor: Colors.black87,
            appBar: AppBar(
              title: Text(liveinfo.title),
            ),
            body: LiveBody(
              liveinfo: liveinfo,
            ),
          );
        });
}

class LiveBody extends StatefulWidget {
  final LiveInfoList liveinfo;

  LiveBody({Key key, this.liveinfo});

  @override
  LiveBodyState createState() => LiveBodyState(this.liveinfo);
}

class LiveBodyState extends State<LiveBody> {
  List<String> video_url = new List();
  final LiveInfoList liveinfo;
  VideoInfo info;
  bool isShown = false;

  LiveBodyState(this.liveinfo) : super();

  Future<void> parseVideoInfo(LiveInfoList liveinfo) async {
    var jsonStr = await BiliBiliApi.HttpGet(
        "https://api.live.bilibili.com/api/playurl?device=phone&platform=ios&scale=3&build=10000&cid=${liveinfo.roomid}&otype=json&platform=h5",
        "");
    if (jsonStr == null) return;

    LiveVideo bili = LiveVideo.fromJson(json.decode(jsonStr));
    if (isShown)
      setState(() {
        video_url = bili.durl.map((v) {
//          print(v.url);
          return v.url;
        }).toList();
      });
  }

  @override
  void initState() {
    super.initState();
    isShown = true;
    parseVideoInfo(liveinfo);
  }

  @override
  void dispose() {
    isShown = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _random = Random();
    return Stack(
      children: <Widget>[
        BlurImageBackground(
          imageUri: liveinfo.pic,
          sigmaX: 5,
          sigmaY: 5,
          overlayColor: Colors.black.withOpacity(0.4),
        ),
        Column(
          children: <Widget>[
            Container(
                height: 250,
                color: Colors.black87,
                child: video_url.length == 0
                    ? Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl: liveinfo.pic,
                      fit: BoxFit.fill,
                    ),
                    Center(child: CircularProgressIndicator()),
                  ],
                )
                    : BiliPlayer(
                  video_url: video_url[_random.nextInt(video_url.length)],
                )),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
//                    color: Colors.amber.withOpacity(0.3),
                    padding: EdgeInsets.only(top: 10),
                    height: 120,
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.black.withOpacity(0.3),
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
//                                height: 200,
                                width: 150,
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  child: Stack(
                                    alignment: AlignmentDirectional.topStart,
                                    children: <Widget>[
                                      CachedNetworkImage(
                                        placeholder: Center(
                                            child: CircularProgressIndicator()),
                                        imageUrl: liveinfo.pic,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      liveinfo.title,
                                      style: Theme.of(context).textTheme.title,
                                    ),
                                    Text(
                                      liveinfo.uname,
                                      style:
                                      Theme.of(context).textTheme.subtitle,
                                    ),
//                              Padding(
//                                padding: EdgeInsets.only(top: 10),
//                              ),
//                              Text(
//                                eposide.titleformat +
//                                    ":" +
//                                    epinfo.mediainfo.evaluate,
//                                style: Theme.of(context).textTheme.body1,
//                              ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
//                  Container(height: 200,color: Colors.red.withOpacity(0.3), child: Center(child: Text("test"))),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("pinglun..."),
                          Text("pinglun..."),
                          Text("pinglun..."),
                          Text("pinglun..."),
                          Text("pinglun..."),
                          Text("pinglun..."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
