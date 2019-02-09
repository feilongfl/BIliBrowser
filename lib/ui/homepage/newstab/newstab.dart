import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/attention_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/homepage/newstab/news_card.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  Attention attention;

  void getAttentionInfoFromInternet() async {
    var jsonStr = await BiliBiliApi.Get(
        "https://api.vc.bilibili.com/dynamic_svr/v1/dynamic_svr/dynamic_new?uid=1514605&type=268435455");
    setState(() {
      this.attention = Attention.fromJson(json.decode(jsonStr));
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("news", jsonStr);
  }

  getAttentionInfoFromPred() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String pref = prefs.getString("news") ?? "";
    if (pref == "") {
      getAttentionInfoFromInternet();
      return;
    }
    setState(() {
      this.attention = Attention.fromJson(json.decode(pref));
    });
  }

  Future<void> getAttentionInfo(bool force) async {
    if (force)
      getAttentionInfoFromInternet();
    else if (attention == null)
      getAttentionInfoFromPred();
    else if (attention.code != 0)
      getAttentionInfoFromPred();
    else {
      getAttentionInfoFromPred();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAttentionInfo(false);
  }

  @override
  Widget build(BuildContext context) {
    var loaded = this.attention == null ? false : (this.attention.code == 0);
    return !loaded
        ? Center(child: CircularProgressIndicator())
        : RefreshIndicator(
      onRefresh: () => getAttentionInfo(true),
      child: Container(
        color: Colors.black87,
        padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
        child: !loaded
            ? Center(
          child: Text("loading"),
        )
            : ListView.separated(
            separatorBuilder: (context, index) =>
                Divider(
                  color: Colors.white,
                ),
            itemCount: this.attention.data.card.length,
//                  padding: EdgeInsets.all(16),
//                  padding: EdgeInsets.only(top: 5, bottom: 5),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: attentionVideoInfoItem(
                      card: this.attention.data.card[index]));
            }),
      ),
    );
  }
}
