import 'package:bilibrowser/ui/animetab/AnimeGlobalTimeline_entity.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  AnimeCard({Key key, this.anime}) : super(key: key);

  final AnimeglobaltimelineResult anime;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        FadeInImage.assetNetwork(
          placeholder: 'res/images/loading.gif',
          image: anime.cover,
          fit: BoxFit.cover,
        ),
        Text(anime.title),
      ],
    );
  }
}
