import 'dart:ui';

import 'package:bilibrowser/bilibiliApi/jsonParse/AnimeResult.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
                    style: Theme.of(context).textTheme.headline,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 2,
                  ),
                  Text(
                    anime.area,
                    style: Theme.of(context).textTheme.body1,
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
