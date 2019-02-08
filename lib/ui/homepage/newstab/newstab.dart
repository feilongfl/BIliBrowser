import 'package:flutter/material.dart';

class newsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("news"),
    );
  }
}
//
//class liveList extends StatefulWidget {
//  @override
//  liveListState createState() => liveListState();
//}
//
//class liveListState extends State<liveList> {
//  LiveInfoEntity liveList;
//
//  void getLiveInfoFromInternet() async {
//    var jsonStr = await BiliBiliApi.Get(
//        "https://api.live.bilibili.com/relation/v1/feed/feed_list");
//    setState(() {
//      this.liveList = LiveInfoEntity.fromJson(json.decode(jsonStr));
//    });
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setString("liveList", jsonStr);
//  }
//
//  getLiveInfoFromPred() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    String pref = prefs.getString("liveList") ?? "";
//    if (pref == "") {
//      getLiveInfoFromInternet();
//      return;
//    }
//    setState(() {
//      this.liveList = LiveInfoEntity.fromJson(json.decode(pref));
//    });
//  }
//
//  Future<void> getLiveInfo(bool force) async {
//    if (force)
//      getLiveInfoFromInternet();
//    else if (liveList == null)
//      getLiveInfoFromPred();
//    else if (liveList.code != 0)
//      getLiveInfoFromPred();
//    else {
//      getLiveInfoFromPred();
//    }
//  }
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    getLiveInfo(false);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    var loaded = this.liveList == null ? false : (this.liveList.code == 0);
//    return !loaded
//        ? Center(child: CircularProgressIndicator())
//        : RefreshIndicator(
//            onRefresh: () => getLiveInfo(true),
//            child: Container(
//              color: Colors.black87,
//              padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
//              child: ListView.separated(
//                  separatorBuilder: (context, index) => Divider(
//                        color: Colors.white,
//                      ),
//                  itemCount: this.liveList.datum.xList.length,
////                  padding: EdgeInsets.all(16),
////                  padding: EdgeInsets.only(top: 5, bottom: 5),
//                  itemBuilder: (BuildContext context, int index) {
//                    return liveVideoInfoItem(
//                        info: this.liveList.datum.xList[index]);
//                  }),
//            ),
//          );
//  }
//}
//
//class liveVideoInfoItem extends StatelessWidget {
//  final LiveInfoList info;
//
//  liveVideoInfoItem({Key key, this.info}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ListTile(
//      title: InkResponse(
////        onTap: () => Navigator.of(context).push(episodePage(anime)),
//        onTap: () {
//          launchURL(this.info.link);
//        },
//        child: Column(
//          children: <Widget>[
//            Container(
//              height: 230,
//              child: CachedNetworkImage(
//                imageUrl: info.pic,
//                placeholder: Center(child: CircularProgressIndicator()),
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.only(top: 15),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
////            crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  CircleAvatar(
//                    child: ClipRRect(
//                      borderRadius: BorderRadius.all(Radius.circular(50)),
//                      child: CachedNetworkImage(
//                          imageUrl: info.face,
//                          placeholder: CircularProgressIndicator()),
//                    ),
//                  ),
//                  Expanded(
//                      child: Center(
//                          child: Text(
//                    info.title,
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 18,
//                    ),
//                  ))),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
