import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/eposide_info_entity.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/video_info_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/core/bilivideoplayer.dart';
import 'package:bilibrowser/ui/widget/BlurImageBackground.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class videoPage extends MaterialPageRoute<Null> {
  final EposideInfoEplist eposide;
  final EposideInfo epinfo;

  videoPage(this.eposide, this.epinfo)
      : super(builder: (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(eposide.titleformat),
      ),
      body: VideoBody(
        eposide: eposide,
        epinfo: epinfo,
      ),
    );
  });
}

class VideoBody extends StatefulWidget {
  final EposideInfoEplist eposide;
  final EposideInfo epinfo;

  VideoBody({Key key, this.eposide, this.epinfo});

  @override
  VideoBodyState createState() => VideoBodyState(this.eposide, this.epinfo);
}

class VideoBodyState extends State<VideoBody> {
  List<String> video_url = new List();
  final EposideInfoEplist eposide;
  final EposideInfo epinfo;
  VideoInfo info;

  VideoBodyState(this.eposide, this.epinfo) : super();

  Future<void> parseVideoInfo(int eid) async {
    var h = await BiliBiliApi.HttpGet(
        "https://www.bilibili.com/bangumi/play/ep$eid/");
    var hjson_m = RegExp(r"__playinfo__=(.*?)<\/script>").firstMatch(h);
    if (hjson_m != null) {
      var hjson = hjson_m.group(1) ?? "";
      info = VideoInfo.fromJson(json.decode(hjson));
      if (info.code == 0) {
        setState(() {
          video_url = info.data.dash.video.map((v) {
            print(v.baseUrl);
            return v.baseUrl;
          }).toList();
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(json.encode(eposide.toJson()));
    parseVideoInfo(eposide.id);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        BlurImageBackground(
          imageUri: "https:" + epinfo.mediainfo.cover,
          sigmaX: 5,
          sigmaY: 5,
          overlayColor: Colors.black.withOpacity(0.4),
        ),
        Column(
          children: <Widget>[
            Container(
                height: 233,
                color: Colors.black87,
                child: video_url.length == 0
                    ? Center(
                  child: CircularProgressIndicator(),
                )
                    : BiliPlayer(
                  video_url: video_url[0],
                )),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Container(
              color: Colors.black.withOpacity(0.3),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          CachedNetworkImage(
                            placeholder:
                            Center(child: CircularProgressIndicator()),
                            imageUrl: "https:" + epinfo.mediainfo.cover,
                          ),
                          Opacity(
                            opacity: 0.3,
                            child: Container(
                              height: 24,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            epinfo.epinfo.title,
                            style: Theme
                                .of(context)
                                .textTheme
                                .subtitle,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          epinfo.mediainfo.title,
                          style: Theme
                              .of(context)
                              .textTheme
                              .title,
                        ),
                        Text(
                          eposide.titleformat + ":" + eposide.longtitle,
                          style: Theme
                              .of(context)
                              .textTheme
                              .subtitle,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          eposide.titleformat + ":" + epinfo.mediainfo.evaluate,
                          style: Theme
                              .of(context)
                              .textTheme
                              .body1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
