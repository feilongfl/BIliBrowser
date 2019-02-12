import 'dart:ui';

import 'package:bilibrowser/ui/widget/BlurAssetsBackground.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BlurImageBackground extends StatelessWidget {
  BlurImageBackground(
      {Key key, this.imageUri, this.sigmaX, this.sigmaY, this.overlayColor})
      : super(key: key);

  final String imageUri;
  final double sigmaX, sigmaY;
  final Color overlayColor;

  @override
  build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.topCenter,
//      overflow: Overflow.visible,
      children: <Widget>[
        BlurAssetsBackground(),
        Container(
          height: double.infinity,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
//            placeholder: Center(child: CircularProgressIndicator()),
            imageUrl: this.imageUri,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: this.sigmaX, sigmaY: this.sigmaY),
          child: new Container(
            decoration: new BoxDecoration(color: this.overlayColor),
          ),
        )
      ],
    );
  }
}
