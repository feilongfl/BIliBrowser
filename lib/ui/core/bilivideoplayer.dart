import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BiliPlayer extends StatefulWidget {
  @override
  _BiliPlayerState createState() => _BiliPlayerState();
}

class _BiliPlayerState extends State<BiliPlayer> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkResponse(
      onDoubleTap: () {
        setState(() {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        });
      },
      child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Center(
              child: _controller.value.initialized
                  ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
                  : Container(),
            ),
            Container(
              height: 28,
              width: 200,
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(child: Icon(
                    _controller.value.isPlaying ? Icons.pause : Icons
                        .play_arrow, color: Colors.white,
                  ),),
                  Text("test"),
                  Text("test"),
                  Flexible(child: Container(),),
                  Text("test"),
                  Text("test"),
                ],
              ),
            ),
          ]),
    );
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
