import 'package:bilibrowser/ui/widget/moment_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ReferceCard extends StatelessWidget {
  final username;
  final userface;
  final title;
  final content;
  final ori_title;
  final List<String> ori_pics;
  final ori_user;
  final ori_uface;
  final ori_content;
  final ori_picAspectRatio;
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
      this.ori_picAspectRatio,
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
                padding: EdgeInsets.all(10),
                color: Colors.white10,
                child: MomentCard(
                  title: ori_title,
                  content: ori_content,
                  username: ori_user,
                  userface: ori_uface,
                  pics: ori_pics,
                  picAspectRatio: ori_picAspectRatio,
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
                  style: Theme.of(context).textTheme.title,
                ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
