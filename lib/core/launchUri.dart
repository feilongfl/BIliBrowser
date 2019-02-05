import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    log('Could not launch $url');
  }
}
