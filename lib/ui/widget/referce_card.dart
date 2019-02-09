import 'package:bilibrowser/ui/widget/moment_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ReferceCard extends StatelessWidget {
  final username;
  final userface;
  final title;
  final content;
  final ori_title;
  final ori_pics;
  final ori_user;
  final ori_uface;
  final ori_content;
  final GestureTapCallback onTap;

  ReferceCard(
      {Key key,
      this.title,
      this.content,
      this.userface,
      this.username,
      this.ori_title,
      this.ori_pics,
      this.ori_user,
      this.ori_uface,
      this.ori_content,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: InkResponse(
        onTap: this.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
//              height: 230,
              child: Text(
                content,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
                color: Colors.white10,
                child: MomentCard(
                  title: ori_title,
                  content: ori_content,
                  username: ori_user,
                  userface: ori_uface,
                )),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: CachedNetworkImage(
                      imageUrl: userface,
//                          placeholder: CircularProgressIndicator()
                    ),
                  ),
                ),
                Expanded(
                    child: Center(
                        child: Text(
                  username,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
