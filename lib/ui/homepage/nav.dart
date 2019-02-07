import 'dart:convert';
import 'dart:io';

import 'package:bilibrowser/bilibiliApi/UserInfo_entity.dart';
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

  String parseCookies(List<Cookie> cookies) {
    String s = "";
    for (Cookie c in cookies) {
      s += "${c.name}=${c.path};";
    }
    return s;
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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userInfoUri = Uri.parse("https://api.bilibili.com/x/web-interface/nav");

    cookies = await prefs.get('cookies');
    if (cookies == null) return;

    var httpClient = new HttpClient();
    var request = await httpClient.openUrl("get", userInfoUri);
    request.headers.add("referer", "https://www.bilibili.com/");
    request.headers.add("User-Agent",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36");
    request.headers.add("Cookie", cookies);
    var response = await request.close();
//    var cooktemp =
//        "LIVE_BUVID=AUTO7615317494666385; fts=1531749470; sid=aicxv4d1; im_notify_type_1514605=0; buvid3=592D1D77-FA8C-453B-AB4C-E9A3F18CB48513792infoc; rpdid=iowomwxkqqdoskiioiliw; CURRENT_QUALITY=80; stardustvideo=1; CURRENT_FNVAL=16; balh_is_close_do_not_remind=Y; stardustpgcv=0606; bg_view_26284=259677; DedeUserID=1514605; DedeUserID__ckMd5=0b75dbdfcb3077d2; SESSDATA=f82c94e0%2C1552095581%2C1b732621; bili_jct=43e2c7d67a6526aebfa2d14fab866a16; _dfcaptcha=610a6a3faedf67c00237024197a64fba; bp_t_offset_1514605=217706454810538044; finger=17c9e5f5";
//    await prefs.setString('cookies', cooktemp);
//    await prefs.setString('cookies', parseCookies(response.cookies));
    if (response.statusCode != HttpStatus.ok) {
      showDialog(
          context: context,
          builder: (_) =>
              AlertDialog(
                title: Text("Login Failed!"),
              ));
      return;
    }
    var jsonStr = await response.transform(utf8.decoder).join();
    prefs.setString("userinfo", jsonStr);
    setState(() {
      this.userinfo = UserinfoEntity.fromJson(json.decode(jsonStr));
    });
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
