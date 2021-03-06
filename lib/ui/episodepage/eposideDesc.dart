import 'package:bilibrowser/bilibiliApi/jsonParse/eposide_info_entity.dart';
import 'package:bilibrowser/ui/videopage/videoPage.dart';
import 'package:bilibrowser/ui/widget/eposideCard.dart';
import 'package:flutter/material.dart';

class eposideDesc extends StatelessWidget {
  final EposideInfo epInfo;

  eposideDesc({Key key, this.epInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Text(
              "   ${epInfo.mediainfo.evaluate}",
              style: Theme.of(context).textTheme.body2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Container(
            height: 155,
            color: Colors.white.withOpacity(0.3),
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(
                initialScrollOffset: (240 * epInfo.epinfo.i).toDouble(),
              ),
              children: epInfo.eplist.map((ep) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: InkResponse(
                    onTap: () =>
                        Navigator.of(context).push(videoPage(ep, epInfo)),
                    child: Container(
                      width: 235.0,
                      child: EposideCard(
                        eposide: ep,
                        epinfo: epInfo,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
//          Container(height: 300,color: Colors.red.withOpacity(0.6),)
        ],
      ),
    );
  }
}
