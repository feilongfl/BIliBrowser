import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class BiliBiliApi {
  String parseCookies(List<Cookie> cookies) {
    String s = "";
    for (Cookie c in cookies) {
      s += "${c.name}=${c.path};";
    }
    return s;
  }

  static Get(String url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var uri = Uri.parse(url);
    var cookies = await prefs.get('cookies');
    if (cookies == null) return null;

    var httpClient = new HttpClient();
    var request = await httpClient.openUrl("get", uri);
    request.headers.add("referer", "https://www.bilibili.com/");
    request.headers.add("User-Agent",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36");
    request.headers.add("Cookie", cookies);
    var response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
//    showDialog(
//        context: context,
//        builder: (_) =>
//            AlertDialog(
//              title: Text("Login Failed!"),
//            ));
      print("get $url failed with httpcode: (${response.statusCode})");
      return null;
    }
    var result = await response.transform(utf8.decoder).join();
    return result;
  }
}
