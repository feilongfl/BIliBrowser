import 'package:bilibrowser/ui/widget/BlurAssetsBackground.dart';
import 'package:flutter/material.dart';

class searchPage extends MaterialPageRoute<Null> {
  searchPage()
      : super(builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: searchBody(),
          );
        });
}

class searchBody extends StatefulWidget {
  @override
  searchBodyState createState() => searchBodyState();
}

class searchBodyState extends State<searchBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BlurAssetsBackground(
          imageAssets: 'res/images/launch_image.jpg',
          sigmaX: 5,
          sigmaY: 5,
          overlayColor: Colors.black.withOpacity(0.4),
        ),
        Column(
          children: <Widget>[]
            ..add(Padding(padding: EdgeInsets.only(top: 30)))
            ..add(Container(
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  color: Colors.white70,
                  child: TextField(
                    cursorColor: Colors.pink,
                    decoration: InputDecoration(labelText: "Search"),
                  ),
                ),
              ),
            )),
        ),
      ],
    );
  }
}
