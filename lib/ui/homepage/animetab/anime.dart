import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:bilibrowser/bilibiliApi/AnimeGlobalTimeline_entity.dart';
import 'package:bilibrowser/ui/homepage/animetab/animeCard.dart';
import 'package:flutter/material.dart';

class AnimeTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AnimeTabState();
}

AnimeglobaltimelineEntity animeglobaltimelineEntity;

class AnimeTabState extends State<AnimeTab> {
  static const animeGlobalUrl =
      "https://bangumi.bilibili.com/api/timeline_v2_global";

//  List<String> animeGlobalList = ["1", "2", "Third", "4"];
  AnimeglobaltimelineEntity _animeglobaltimelineEntity =
      animeglobaltimelineEntity;

  Future<void> _getAnimeGlobalList() async {
    var httpClient = new HttpClient();
//    String result;
    try {
      log(animeGlobalUrl);
      var request = await httpClient.getUrl(Uri.parse(animeGlobalUrl));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var jsonStr = await response.transform(utf8.decoder).join();
        var data = json.decode(jsonStr);
//        result = data['origin'];
        setState(() {
          _animeglobaltimelineEntity = AnimeglobaltimelineEntity.fromJson(data);
          animeglobaltimelineEntity = _animeglobaltimelineEntity;
        });
      } else {
        log('Error getting Global Anime List:\nHttp status ${response
            .statusCode}');
      }
    } catch (exception) {
      log('Failed getting Gloabal Anime List');
    }
  }

  @override
  Widget build(BuildContext context) {
    _getAnimeGlobalList();
    return RefreshIndicator(
      onRefresh: _getAnimeGlobalList,
      child: Container(
        color: Colors.black87,
        padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 1),
        child: GridView.builder(
          itemCount: _animeglobaltimelineEntity == null
              ? 1
              : _animeglobaltimelineEntity.result.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _animeglobaltimelineEntity == null ? 1 : 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            if (_animeglobaltimelineEntity != null) {
              return AnimeCard(
                anime: _animeglobaltimelineEntity.result[index],
              );
            } else
              return new Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
