import 'package:bilibrowser/generated/i18n.dart';
import 'package:bilibrowser/ui/topbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: S.delegate.resolution(fallback: new Locale("en", "")),
      title: "BiliBrowser",
      onGenerateTitle: (BuildContext context) => S.of(context).title,
      theme: ThemeData(
        primarySwatch: Colors.red,
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
