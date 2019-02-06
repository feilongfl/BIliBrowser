import 'dart:ui';

import 'package:bilibrowser/bilibiliApi/AnimeResult.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BlurImageBackground extends StatelessWidget {
  BlurImageBackground(
      {Key key, this.imageUri, this.sigmaX, this.sigmaY, this.overlayColor})
      : super(key: key);

  final String imageUri;
  final double sigmaX, sigmaY;
  final Color overlayColor;

  @override
  build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            placeholder: Center(child: CircularProgressIndicator()),
            imageUrl: this.imageUri,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: this.sigmaX, sigmaY: this.sigmaY),
          child: new Container(
            decoration: new BoxDecoration(color: this.overlayColor),
          ),
        )
      ],
    );
  }
}

class episodeHead extends StatelessWidget {
  final AnimeResult anime;

  episodeHead({Key key, this.anime}) : super(key: key);

  @override
  build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 200,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            height: 200,
//            color: Colors.white.withOpacity(0.15),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                placeholder: Center(child: CircularProgressIndicator()),
                imageUrl: anime.cover,
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    anime.title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .title,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 2,
                  ),
                  Text(
                    anime.area,
                    style: Theme
                        .of(context)
                        .textTheme
                        .body1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class episodePage extends MaterialPageRoute<Null> {
  final AnimeResult anime;

  episodePage(this.anime)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(anime.title),
            ),
            body: Stack(
              children: <Widget>[
                BlurImageBackground(
                  imageUri: anime.cover,
                  sigmaX: 5,
                  sigmaY: 5,
                  overlayColor: Colors.black.withOpacity(0.4),
                ),
                episodeHead(
                  anime: anime,
                ),
              ],
            ),
          );
        });
}
