import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final cover;
  final username;
  final userface;
  final title;
  final GestureTapCallback onTap;

  VideoCard(
      {Key key,
      this.title,
      this.cover,
      this.userface,
      this.username,
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
              height: 230,
              child: CachedNetworkImage(
                imageUrl: cover,
                placeholder: Center(child: CircularProgressIndicator()),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
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
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
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
