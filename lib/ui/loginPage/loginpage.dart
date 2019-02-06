import 'package:flutter/material.dart';

class loginWiget extends StatefulWidget {
  @override
  loginState createState() => loginState();
}

class loginState extends State<loginWiget> {
  var _userPassController = new TextEditingController();
  var _userNameController = new TextEditingController();
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
                child: TextField(
                  style: hintTips,
                  controller: _userNameController,
                  decoration: InputDecoration(hintText: "UserName"),
                  obscureText: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    leftRightPadding, 30.0, leftRightPadding, topBottomPadding),
                child: TextField(
                  style: hintTips,
                  controller: _userPassController,
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
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
                      onPressed: isLogging? null : () {
                        print("username: ${_userNameController.text}");
                        print("password: ${_userPassController.text}");
                        setState(() {
                          this.isLogging = true;
                        });
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
}

class loginPage extends MaterialPageRoute<Null> {
  loginPage()
      : super(builder: (BuildContext context) {
          return loginWiget();
        });
}
