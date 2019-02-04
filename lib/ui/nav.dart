import 'package:flutter/material.dart';

final _drawerHeader = UserAccountsDrawerHeader(
  accountName: Text('22'),
  accountEmail: Text('22.bilibili.com'),
  currentAccountPicture: CircleAvatar(
    child: FlutterLogo(
      size: 42,
    ),
  ),
);

final navDrawer = ListView(
  children: <Widget>[
    _drawerHeader,
//    ListTile(
//      leading: Icon(Icons.bubble_chart),
//      title: Text('Plugin'),
//    ),
    ListTile(
      leading: Icon(Icons.history),
      title: Text('History'),
    ),
    ListTile(
      leading: Icon(Icons.favorite),
      title: Text('Favorite'),
    ),
    ListTile(
      leading: Icon(Icons.play_circle_filled),
      title: Text('Watch Later'),
    ),
    ListTile(
      leading: Icon(Icons.arrow_downward),
      title: Text('Download'),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('Setting'),
    ),
    ListTile(
      leading: Icon(Icons.account_box),
      title: Text('About'),
    ),
  ],
);
