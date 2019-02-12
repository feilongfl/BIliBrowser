import 'dart:ui';

import 'package:flutter/material.dart';

class BlurAssetsBackground extends StatelessWidget {
  BlurAssetsBackground(
      {Key key, this.imageAssets, this.sigmaX, this.sigmaY, this.overlayColor})
      : super(key: key);

  final String imageAssets;
  final double sigmaX, sigmaY;
  final Color overlayColor;

  @override
  build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          height: double.infinity,
          child: Image.asset(
            imageAssets,
            fit: BoxFit.cover,
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
