import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BiliPlayer extends StatefulWidget {
  final String video_url;

  BiliPlayer({Key key, this.video_url}) : super(key: key);

  @override
  _BiliPlayerState createState() =>
      _BiliPlayerState(video_url ??
          'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
}

class _BiliPlayerState extends State<BiliPlayer> {
  VideoPlayerController _controller;
  bool unshowContralBar = true;
  Timer barTimer;
  final String video_url;

  _BiliPlayerState(this.video_url) : super();

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(video_url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
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
          InkResponse(
            onTap: () {
              if (unshowContralBar)
                barTimer = Timer(
                    Duration(seconds: 3),
                        () =>
                        setState(() {
                          unshowContralBar = true;
                        }));
              setState(() {
                unshowContralBar = !unshowContralBar;
              });
            },
            onDoubleTap: () => play_pause(),
            child: Center(
              child: _controller.value.initialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
          ),
          Offstage(
            offstage: unshowContralBar,
            child: Opacity(
              opacity: 0.7,
              child: Container(
                padding: EdgeInsets.only(top: 5),
                height: 45,
//                width: 200,
                color: Colors.black,
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        InkResponse(
                          onTap: () => play_pause(),
                          child: Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Center(
                              child: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 5),
                          child: Center(
                            child: Icon(
                              Icons.fullscreen,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]);
  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.black87,
//      body: Center(
//        child: _controller.value.initialized
//            ? AspectRatio(
//          aspectRatio: _controller.value.aspectRatio,
//          child: VideoPlayer(_controller),
//        )
//            : Container(),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          setState(() {
//            _controller.value.isPlaying
//                ? _controller.pause()
//                : _controller.play();
//          });
//        },
//        child: Icon(
//          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//        ),
//      ),
//    );
//  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
