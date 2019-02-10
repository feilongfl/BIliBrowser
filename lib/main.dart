import 'package:bilibrowser/generated/i18n.dart';
import 'package:bilibrowser/ui/homepage/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CacheManager.inBetweenCleans = new Duration(days: 7);
    CacheManager.maxAgeCacheObject = new Duration(days: 14);
    CacheManager.maxNrOfCacheObjects = 1000;

    return MaterialApp(
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback:
      S.delegate.resolution(fallback: new Locale("en", "")),
      title: "BiliBrowser",
      onGenerateTitle: (BuildContext context) => S.of(context).title,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColorBrightness: Brightness.dark,
        backgroundColor: Colors.black87,
        dialogBackgroundColor: Colors.black87,
//        colorScheme: ColorScheme.dark(),
//        primaryColor: Colors.black87,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 32.0, color: Colors.white),
          title: TextStyle(fontSize: 22.0, color: Colors.white),
          body1: TextStyle(fontSize: 14.0, color: Colors.white),
          body2: TextStyle(fontSize: 16.0, color: Colors.white),
          subtitle: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
      ),
      home: TopBar(),
    );
  }
}

//class _MyAppState extends State<MyApp> {
//  Brightness brightness;
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'AVIS',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//        brightness: Brightness.dark,
//      ),
//      home: TopBar(title: 'AVIS'),
//    );
//  }
//}
