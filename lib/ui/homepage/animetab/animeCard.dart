import 'package:bilibrowser/bilibiliApi/jsonParse/AnimeResult.dart';
import 'package:bilibrowser/ui/episodepage/episodepage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  AnimeCard({Key key, this.anime}) : super(key: key);

  AnimeResult anime;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridTile(
      child: InkResponse(
        onTap: () => Navigator.of(context).push(episodePage(anime)),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
//            FadeInImage.assetNetwork(
//              placeholder: 'res/images/Placeholder.png',
//              image: anime.cover,
//              fit: BoxFit.fill,
//            ),
              CachedNetworkImage(
                placeholder: Center(child: CircularProgressIndicator()),
                imageUrl: anime.cover,
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
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
