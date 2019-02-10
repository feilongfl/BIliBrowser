import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/AnimeResult.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/eposide_info_entity.dart';
import 'package:bilibrowser/ui/episodepage/episodeHead.dart';
import 'package:bilibrowser/ui/episodepage/eposideDesc.dart';
import 'package:bilibrowser/ui/widget/BlurImageBackground.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class eposideBody extends StatefulWidget {
  final AnimeResult anime;

  eposideBody({Key key, this.anime}) : super(key: key);

  @override
  eposideBodyState createState() => eposideBodyState(this.anime);
}

class eposideBodyState extends State<eposideBody> {
  final AnimeResult anime;
  var isShown = false;
  EposideInfo epInfo;

  eposideBodyState(this.anime) : super();

  getAnimeInfo(bool force) async {
    var cacheManager = await CacheManager.getInstance();
    var httpStrm = await cacheManager
        .getFile("https://www.bilibili.com/bangumi/play/ep${anime.epId}");
    var html = await httpStrm.readAsString();
    var jsonStr =
    RegExp(r"__INITIAL_STATE__=({.*?});").firstMatch(html).group(1);

    if (isShown)
      setState(() {
        epInfo = EposideInfo.fromJson(json.decode(jsonStr));
      });
//    if (!force) getAnimeInfo(true);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isShown = true;
    getAnimeInfo(false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    isShown = false;
    super.dispose();
  }

  Widget info(BuildContext context) {
    if (epInfo == null) {
      return Container(
          height: 400, child: Center(child: CircularProgressIndicator()));
    } else {
      return Container(
          height: 400,
          color: Colors.amber.withOpacity(0.3),
          child: eposideDesc(epInfo: epInfo));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        BlurImageBackground(
          imageUri: anime.cover,
          sigmaX: 5,
          sigmaY: 5,
          overlayColor: Colors.black.withOpacity(0.4),
        ),
        Column(
          children: <Widget>[
            episodeHead(
              anime: anime,
            ),
            info(context),
          ],
        ),
      ],
    );
  }
}
