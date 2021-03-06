import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/biliplus/biliplus_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/core/bilivideoplayer.dart';
import 'package:flutter/material.dart';

class normalVideoPage extends MaterialPageRoute<Null> {
//  final EposideInfoEplist eposide;
//  final EposideInfo epinfo;
  final int bangumi;
  final int aid;

  normalVideoPage(this.bangumi, this.aid)
      : super(builder: (BuildContext context) {
          return Scaffold(
//            backgroundColor: Colors.black87,
            appBar: AppBar(
              title: Text("$aid"),
            ),
            body: VideoBody(
//              eposide: eposide,
//              epinfo: epinfo,
              bangumi: bangumi,
              aid: aid,
            ),
          );
        });
}

class VideoBody extends StatefulWidget {
//  final EposideInfoEplist eposide;
//  final EposideInfo epinfo;
  final int aid;
  final int bangumi;

  VideoBody({Key key, this.aid, this.bangumi});

  @override
  VideoBodyState createState() => VideoBodyState(this.aid, this.bangumi);
}

class VideoBodyState extends State<VideoBody> {
  List<String> video_url = new List();

  final int bangumi;
  final int aid;

//  VideoInfo info;
  bool isShown = false;

  VideoBodyState(this.aid, this.bangumi) : super();

  Future<void> parseVideoInfo(int aid, int bangumi) async {
    var jsonStr = await BiliBiliApi.HttpGet(
        "https://www.biliplus.com/api/geturl?bangumi=$bangumi&av=${aid}&page=1",
        "https://www.biliplus.com");
    Biliplus bili = Biliplus.fromJson(json.decode(jsonStr));
    if (isShown)
      setState(() {
        video_url = bili.data.where((v) {
          return v.type == "single";
        }).map((v) {
          print(v.url ?? "empty video url");
          return v.url ?? "";
        }).toList();
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    print(json.encode(eposide.toJson()));
    isShown = true;
    parseVideoInfo(this.aid, this.bangumi);
  }

  @override
  void dispose() {
    isShown = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
//        BlurImageBackground(
//          imageUri: "https:" + epinfo.mediainfo.cover,
//          sigmaX: 5,
//          sigmaY: 5,
//          overlayColor: Colors.black.withOpacity(0.4),
//        ),
        Column(
          children: <Widget>[
            Container(
                height: 250,
                color: Colors.black87,
                child: video_url.length == 0
                    ? Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
//                          CachedNetworkImage(
//                            imageUrl: "https:" + eposide.cover,
//                            fit: BoxFit.fill,
//                          ),
                          Center(child: CircularProgressIndicator()),
                        ],
                      )
                    : BiliPlayer(
                        video_url: video_url[0],
                      )),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    color: Colors.black.withOpacity(0.3),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
//                        Container(
//                          height: 200,
//                          width: 150,
//                          child: ClipRRect(
//                            borderRadius: BorderRadius.all(Radius.circular(10)),
//                            child: CachedNetworkImage(
//                              placeholder:
//                                  Center(child: CircularProgressIndicator()),
//                              imageUrl: "https:" + epinfo.mediainfo.cover,
//                            ),
//                          ),
//                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "$aid",
                                style: Theme.of(context).textTheme.title,
                              ),
//                              Text(
//                                "$aid",
//                                style: Theme.of(context).textTheme.subtitle,
//                              ),
//                              Padding(
//                                padding: EdgeInsets.only(top: 10),
//                              ),
//                              Text(
//                                "$aid",
//                                style: Theme.of(context).textTheme.body1,
//                              ),
                            ],
                          ),
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
