import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MomentTextCard extends StatelessWidget {
  final username;
  final userface;
  final content;
  final GestureTapCallback onTap;

  MomentTextCard(
      {Key key,
      this.content,
      this.userface,
      this.username,
//        this.pics,
//        this.picAspectRatio,
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
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
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
                    maxLines: 1,
                  ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
