import 'package:bilibrowser/bilibiliApi/jsonParse/eposide_info_entity.dart';
import 'package:flutter/material.dart';

class eposideDesc extends StatelessWidget {
  final EposideInfo epInfo;

  eposideDesc({Key key, this.epInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            "   ${epInfo.mediainfo.evaluate}",
            style: Theme.of(context).textTheme.body2,
          ),
          Container(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: epInfo.eplist.map((ep) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    width: 235.0,
                    color: Colors.red,
                    child: Text(ep.title),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
