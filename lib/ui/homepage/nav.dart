import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/UserInfo_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/loginPage/loginpage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _drawerHeader extends StatefulWidget {
  _drawerHeaderState createState() => _drawerHeaderState();
}

class _drawerHeaderState extends State<_drawerHeader> {
  UserinfoEntity userinfo = null;
  String cookies = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserInfo();
  }



  void getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userInfo = prefs.getString("userinfo");
    if (userInfo != null) {
      setState(() {
        this.userinfo = UserinfoEntity.fromJson(json.decode(userInfo));
      });

      return;
    }
    getUserInfoFromInternet();
  }

  void getUserInfoFromInternet() async {
    var jsonStr = BiliBiliApi.Get(
        "https://api.bilibili.com/x/web-interface/nav");
    setState(() {
      this.userinfo = UserinfoEntity.fromJson(json.decode(jsonStr));
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("userinfo", jsonStr);
  }

  @override
  build(BuildContext context) {
    const defaultImg =
        "https://i2.hdslb.com/bfs/face/e702b42023729a19d379b65c40fe3c6625a55d0b.gif";
    var notlogined = !(userinfo == null ? false : userinfo.code == 0);
    return UserAccountsDrawerHeader(
      accountName: notlogined ? Text("22") : Text(userinfo.data.uname ?? "22"),
      accountEmail: notlogined
          ? Text("Lv: 0")
          : Text("Lv: ${userinfo.data.levelInfo.currentLevel ?? 0}"),
      currentAccountPicture: CircleAvatar(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: CachedNetworkImage(
            placeholder: FlutterLogo(
              size: 48,
            ),
            imageUrl:
            notlogined ? defaultImg : userinfo.data.face ?? defaultImg,
          ),
        ),
      ),
      onDetailsPressed: () => Navigator.of(context).push(loginPage()),
    );
  }
}

final navDrawer = ListView(
  children: <Widget>[
    _drawerHeader(),
//    ListTile(
//      leading: Icon(Icons.bubble_chart),
//      title: Text('Plugin'),
//    ),
    ListTile(
      leading: Icon(Icons.history),
      title: Text('History'),
    ),
    ListTile(
      leading: Icon(Icons.favorite),
      title: Text('Favorite'),
    ),
    ListTile(
      leading: Icon(Icons.play_circle_filled),
      title: Text('Watch Later'),
    ),
    ListTile(
      leading: Icon(Icons.arrow_downward),
      title: Text('Download'),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('Setting'),
    ),
    ListTile(
      leading: Icon(Icons.account_box),
      title: Text('About'),
    ),
  ],
);
