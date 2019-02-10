import 'package:bilibrowser/bilibiliApi/jsonParse/eposide_info_entity.dart';
import 'package:bilibrowser/ui/videopage/videoPage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EposideCard extends StatelessWidget {
  EposideCard({Key key, this.eposide, this.epinfo}) : super(key: key);

  final EposideInfo epinfo;
  final EposideInfoEplist eposide;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridTile(
      child: InkResponse(
        onTap: () => Navigator.of(context).push(videoPage(eposide, epinfo)),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              CachedNetworkImage(
                placeholder: Center(child: CircularProgressIndicator()),
                imageUrl: "https:${eposide.cover}",
              ),
              Opacity(
                opacity: 0.3,
                child: Container(
                  height: 44,
                  color: Colors.black,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    eposide.titleformat,
                    style: Theme
                        .of(context)
                        .textTheme
                        .subtitle,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    eposide.longtitle,
                    style: Theme
                        .of(context)
                        .textTheme
                        .subtitle,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
