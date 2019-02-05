import 'package:bilibrowser/bilibiliApi/AnimeResult.dart';
import 'package:bilibrowser/core/launchUri.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  AnimeCard({Key key, this.anime}) : super(key: key);

  AnimeResult anime;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridTile(
      child: InkResponse(
        onTap: () =>
            launchURL(
                'https://m.bilibili.com/bangumi/play/ep' +
                    anime.epId.toString()),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder: 'res/images/Placeholder.png',
              image: anime.cover,
              fit: BoxFit.fill,
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 24,
                color: Colors.black,
              ),
            ),
            Text(
              anime.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ],
        ),
      ),
    );
  }
}
