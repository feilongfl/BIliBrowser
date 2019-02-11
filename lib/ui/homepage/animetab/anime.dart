import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/AnimeGlobalTimeline_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/widget/animeCard.dart';
import 'package:flutter/material.dart';

class AnimeTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AnimeTabState();
}

class AnimeTabState extends State<AnimeTab> {
  AnimeglobaltimelineEntity animeglobaltimelineEntity;
  static const animeGlobalUrl =
      "https://bangumi.bilibili.com/api/timeline_v2_global";
  var isShown = false;
  static const animeGlobalPref = "animeGlobal";

  Future<void> _getAnimeGlobalList(bool force) async {
    var jsonStr = await BiliBiliApi.HttpPrefGetAuto(
        animeGlobalUrl, animeGlobalPref, force);
    if (isShown)
      setState(() {
        animeglobaltimelineEntity =
            AnimeglobaltimelineEntity.fromJson(json.decode(jsonStr));
      });
    if (!force) _getAnimeGlobalList(true);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isShown = true;
    _getAnimeGlobalList(false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    isShown = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _getAnimeGlobalList(true);
    return RefreshIndicator(
      onRefresh: () => _getAnimeGlobalList(true),
      child: Container(
//        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 1),
        child: GridView.builder(
          itemCount: animeglobaltimelineEntity == null
              ? 1
              : animeglobaltimelineEntity.result.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: animeglobaltimelineEntity == null ? 1 : 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            if (animeglobaltimelineEntity != null) {
              return AnimeCard(
                anime: animeglobaltimelineEntity.result[index],
              );
            } else
              return new Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
