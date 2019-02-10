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

  static HttpGet(String url,String referer) async {
    var uri = Uri.parse(url);

    var httpClient = new HttpClient();
    var request = await httpClient.openUrl("get", uri);
    request.headers.add("referer", referer);
    request.headers.add("User-Agent",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36");
    var response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      print("get $url failed with httpcode: (${response.statusCode})");
      return null;
    }
    var result = await response.transform(utf8.decoder).join();
    return result;
  }

  static HttpGetWithCookies(String url) async {
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
      print("get $url failed with httpcode: (${response.statusCode})");
      return null;
    }
    var result = await response.transform(utf8.decoder).join();
    return result;
  }

  static HttpGetAndSavePref(String url, String pref) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var httpResult = await HttpGetWithCookies(url) ?? "";
    if (httpResult != "" && (pref != "" || pref != null))
      prefs.setString(pref, httpResult);
    return httpResult;
  }

  static HttpPrefGetAndSavePref(String url, String pref) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var p = prefs.getString(pref) ?? "";
    if (p == "") {
      return await HttpGetAndSavePref(url, pref);
    }
    return p;
  }

  static HttpPrefGetAuto(String url, String pref, bool force_refersh) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var p = prefs.getString(pref) ?? "";
    if (p == "" || force_refersh) {
      return await HttpGetAndSavePref(url, pref);
    }
    return p;
  }
}
