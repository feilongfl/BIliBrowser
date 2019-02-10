import 'package:bilibrowser/bilibiliApi/jsonParse/eposide_info_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EposideCard extends StatelessWidget {
  EposideCard({Key key, this.eposide}) : super(key: key);

  EposideInfoEplist eposide;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridTile(
      child: InkResponse(
//        onTap: () => Navigator.of(context).push(episodePage(eposide)),
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
                imageUrl: eposide.cover,
              ),
              Opacity(
                opacity: 0.3,
                child: Container(
                  height: 24,
                  color: Colors.black,
                ),
              ),
              Text(
                eposide.title,
                style: Theme.of(context).textTheme.subtitle,
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
