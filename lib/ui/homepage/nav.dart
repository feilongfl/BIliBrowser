import 'dart:convert';

import 'package:bilibrowser/bilibiliApi/jsonParse/UserInfo_entity.dart';
import 'package:bilibrowser/core/http.dart';
import 'package:bilibrowser/ui/loginPage/loginpage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _drawerHeader extends StatefulWidget {
  _drawerHeaderState createState() => _drawerHeaderState();
}

class _drawerHeaderState extends State<_drawerHeader> {
  UserinfoEntity userinfo = UserinfoEntity();
  String cookies = null;
  bool isShown = false;
  static const defaultImg =
      "https://i2.hdslb.com/bfs/face/e702b42023729a19d379b65c40fe3c6625a55d0b.gif";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isShown = true;
    getUserInfo(false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    isShown = false;
    super.dispose();
  }

  Future<void> getUserInfoPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var name = await prefs.getString('userName');
    var level = await prefs.getInt('userLevel');
    var face = await prefs.getString('userFace');
    var mid = await prefs.getInt("userMid");
    setState(() {
      userinfo.data = UserinfoData(
          uname: name,
          face: face,
          mid: mid,
          levelInfo: UserinfoLevelInfo(currentLevel: level));
    });
  }

  void getUserInfo(bool force) async {
    await getUserInfoPref();
    var jsonStr = await BiliBiliApi.HttpPrefGetAuto(
        "https://api.bilibili.com/x/web-interface/nav", "userinfo", force);
    setState(() {
      this.userinfo = UserinfoEntity.fromJson(json.decode(jsonStr));
    });
    if (!force) getUserInfo(true);
  }

  @override
  build(BuildContext context) {
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

class navDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView(
      children: <Widget>[
        _drawerHeader(),
        ListTile(
          leading: Icon(Icons.history,color: Theme.of(context).iconTheme.color,),
          title: Text('History'),
        ),
        ListTile(
          leading: Icon(Icons.favorite,color: Theme.of(context).iconTheme.color,),
          title: Text('Favorite'),
        ),
        ListTile(
          leading: Icon(Icons.play_circle_filled,color: Theme.of(context).iconTheme.color,),
          title: Text('Watch Later'),
        ),
        ListTile(
          leading: Icon(Icons.arrow_downward,color: Theme.of(context).iconTheme.color,),
          title: Text('Download'),
        ),
        Divider(color: Theme.of(context).dividerColor,),
        ListTile(
          leading: Icon(Icons.settings,color: Theme.of(context).iconTheme.color,),
          title: Text('Setting'),
        ),
        ListTile(
          leading: Icon(Icons.account_box,color: Theme.of(context).iconTheme.color,),
          title: Text('About'),
        ),
      ],
    );
  }
}
