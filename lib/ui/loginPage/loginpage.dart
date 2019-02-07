import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginWiget extends StatefulWidget {
  @override
  loginState createState() => loginState();
}

class loginState extends State<loginWiget> {
  var _userCookiesController = new TextEditingController();
  var leftRightPadding = 30.0;
  var topBottomPadding = 4.0;
  var textTips = new TextStyle(fontSize: 16.0, color: Colors.black);
  var hintTips = new TextStyle(fontSize: 15.0, color: Colors.black26);
  static const LOGO = "res/images/LoginLogo.png";

  var isLogging = false;

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                    leftRightPadding, 100.0, leftRightPadding, 10.0),
                child: Image.asset(LOGO),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    leftRightPadding, 50.0, leftRightPadding, topBottomPadding),
                child: TextFormField(
                  style: hintTips,
                  controller: _userCookiesController,
                  decoration: InputDecoration(hintText: "Cookies"),
                  obscureText: false,
                  maxLines: 6,
                ),
              ),
              Container(
                width: 360.0,
                margin: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
                padding: EdgeInsets.fromLTRB(leftRightPadding, topBottomPadding,
                    leftRightPadding, topBottomPadding),
                child: Card(
                  color: Colors.pink,
                  elevation: 6.0,
                  child: FlatButton(
                      onPressed: isLogging
                          ? null
                          : () {
                        loginBiliBili(_userCookiesController.text);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: (isLogging)
                            ? CircularProgressIndicator(
                          valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.white),
                        )
                            : Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white, fontSize: 16.0),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    setDefault();
  }

  void setDefault() async {
    // TODO: implement initState
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cookies = await prefs.get('cookies') ?? "";
    setState(() {
      this._userCookiesController.text = cookies;
    });
  }

  List<Cookie> parseCookies(String str) {
    List<String> cookiesStr = str.split(';');
    List<Cookie> cookies = new List();
    cookiesStr.forEach((cookstr) {
      var arr = cookstr.trim().split('=');
      print("cookies add: ${arr[0]} ${arr[1]}");
      cookies.add(Cookie(arr[0], arr[1]));
    });
    return cookies;
  }

  void loginBiliBili(String cookiesStr) async {
    setState(() {
      isLogging = true;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('cookies', cookiesStr);
    Directory appDocDir = await getApplicationDocumentsDirectory();
    var cj = new PersistCookieJar(appDocDir.path);
    cj.saveFromResponse(
        Uri.parse("https://.bilibili.com/"), parseCookies(cookiesStr));
    setState(() {
      isLogging = false;
    });
    Navigator.pop(context);
  }
}

class loginPage extends MaterialPageRoute<Null> {
  loginPage()
      : super(builder: (BuildContext context) {
    return loginWiget();
  });
}
