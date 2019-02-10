import 'package:bilibrowser/bilibiliApi/jsonParse/AnimeResult.dart';
import 'package:bilibrowser/ui/episodepage/episodeHead.dart';
import 'package:bilibrowser/ui/widget/BlurImageBackground.dart';
import 'package:flutter/material.dart';

class eposideBody extends StatefulWidget {
  final AnimeResult anime;

  eposideBody({Key key, this.anime}) : super(key: key);

  @override
  eposideBodyState createState() => eposideBodyState(this.anime);
}

class eposideBodyState extends State<eposideBody> {
  final AnimeResult anime;

  eposideBodyState(this.anime) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
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
    );
  }
}
