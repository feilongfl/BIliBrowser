import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:screen/screen.dart';
import 'package:video_player/video_player.dart';

class BiliPlayer extends StatefulWidget {
  final String video_url;

  BiliPlayer({Key key, this.video_url}) : super(key: key);

  @override
  _BiliPlayerState createState() => _BiliPlayerState(video_url ??
      'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
}

class _BiliPlayerState extends State<BiliPlayer> {
  VideoPlayerController _controller;
  bool unshowContralBar = true;
  Timer barTimer;
  final String video_url;
  ChewieController chewieController;

  _BiliPlayerState(this.video_url) : super();

  @override
  void initState() {
    super.initState();
    Screen.keepOn(true);
    _controller = VideoPlayerController.network(video_url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
    );
  }

  void play_pause() {
    setState(() {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Center(
            child: Chewie(
              controller: chewieController,
            ),
          ),
        ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    chewieController.dispose();
    Screen.keepOn(false);
    super.dispose();
  }
}
