import 'package:bilibrowser/bilibiliApi/jsonParse/channel_video.dart';
import 'package:bilibrowser/bilibiliApi/jsonParse/channel_video_data_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class channelPage extends MaterialPageRoute<Null> {
  final ChannelItem channel;

  channelPage(this.channel)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(channel.alias),
            ),
            body: channelListBody(channel),
            backgroundColor: Theme.of(context).backgroundColor,
          );
        });
}

class channelListBody extends StatelessWidget {
  final ChannelItem channel;

  channelListBody(this.channel) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(5),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1.6,
        children: channel.list.map((v) {
          return channelCard(v);
        }).toList(),
      ),
    );
  }
}

class channelCard extends StatelessWidget {
  ChannelVideoDataEntity channelVideo;

  channelCard(this.channelVideo) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.red.withOpacity(0.5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Stack(
//        alignment: AlignmentDirectional.bottomEnd,
          fit: StackFit.expand,
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: channelVideo.pic,
              fit: BoxFit.fill,
              placeholder: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: 22,
                    color: Colors.black,
                  ),
                ),
                Text(
                  channelVideo.title,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
