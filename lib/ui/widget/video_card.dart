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
              height: 220,
              child: CachedNetworkImage(
                imageUrl: cover,
                placeholder: Center(child: CircularProgressIndicator()),
                fit: BoxFit.cover,
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
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                  ),
                  Expanded(
                      child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                title,
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Text(
                                username,
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .subtitle,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
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
