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

class episodePage extends MaterialPageRoute<Null> {
  final AnimeResult anime;

  episodePage(this.anime)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(anime.title),
            ),
            body: BlurImageBackground(
              imageUri: anime.cover,
              sigmaX: 5,
              sigmaY: 5,
              overlayColor: Colors.black.withOpacity(0.4),
            ),
          );
        });
}
