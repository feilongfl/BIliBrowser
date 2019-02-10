import 'package:bilibrowser/bilibiliApi/jsonParse/AnimeResult.dart';
import 'package:bilibrowser/ui/episodepage/eposidebody.dart';
import 'package:flutter/material.dart';

class episodePage extends MaterialPageRoute<Null> {
  final AnimeResult anime;

  episodePage(this.anime)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(anime.title),
            ),
            body: eposideBody(anime: anime),
          );
        });
}
