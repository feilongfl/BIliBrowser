import 'package:bilibrowser/bilibiliApi/jsonParse/eposide_info_entity.dart';
import 'package:flutter/material.dart';

class videoPage extends MaterialPageRoute<Null> {
  EposideInfoEplist eposide;

  videoPage(this.eposide)
      : super(builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Colors.black87,
            appBar: AppBar(
              title: Text(eposide.titleformat),
            ),
            body: Column(
              children: <Widget>[
                Center(child: Text(eposide.longtitle)),
              ],
            ),
          );
        });
}
