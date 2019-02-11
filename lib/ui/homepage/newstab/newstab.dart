import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/attention_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card.dart';
import 'package:flutter/material.dart';

class newsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: liveList(),
    );
  }
}

class liveList extends StatefulWidget {
  @override
  liveListState createState() => liveListState();
}

class liveListState extends State<liveList> {
  AttentionEntity attention;
  static const attentionUrl =
      "https://api.vc.bilibili.com/dynamic_svr/v1/dynamic_svr/dynamic_new?uid=0&type=268435455";
  static const attentionPref = "news";
  bool isShown = false;

  Future<void> getAttentionInfo(bool force) async {
    var jsonStr =
        await BiliBiliApi.HttpPrefGetAuto(attentionUrl, attentionPref, true);
    if (isShown)
      setState(() {
        this.attention = AttentionEntity.fromJson(json.decode(jsonStr));
      });
    if (!force) getAttentionInfo(true);
  }

  @override
  void initState() {
    super.initState();
    isShown = true;
    getAttentionInfo(false);
  }

  @override
  void dispose() {
    isShown = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var loaded = this.attention == null
        ? false
        : (this.attention.code != 0
        ? false
        : (this.attention.data.cards.length != 0));
    return !loaded
        ? Center(child: CircularProgressIndicator())
        : RefreshIndicator(
            //todo: 下拉加载更多
            onRefresh: () => getAttentionInfo(true),
            child: Container(
//              color: Theme.of(context).backgroundColor,
              padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
              child: !loaded
                  ? Center(
                      child: Text("loading"),
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.white,
                          ),
                  itemCount: this.attention.data.cards.length,
//                  padding: EdgeInsets.all(16),
//                  padding: EdgeInsets.only(top: 5, bottom: 5),
                      itemBuilder: (BuildContext context, int index) {
                        Widget w;
                        return Center(
                            child: attentionVideoInfoItem(
                                card: this.attention.data.cards[index]));
                      }),
            ),
          );
  }
}
