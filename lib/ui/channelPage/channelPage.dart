import 'package:bilibrowser/bilibiliApi/jsonParse/channel_video.dart';
import 'package:flutter/material.dart';

class channelPage extends MaterialPageRoute<Null> {
  final ChannelItem channel;

  channelPage(this.channel)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(channel.alias),
            ),
            body: Center(
              child: Text(channel.alias),
            ),
            backgroundColor: Theme.of(context).backgroundColor,
          );
        });
}
