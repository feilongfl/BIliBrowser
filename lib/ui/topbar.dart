import 'package:bilibrowser/ui/animetab/anime.dart';
import 'package:flutter/material.dart';
import 'package:bilibrowser/ui/nav.dart';

final tabs = <TopBarWidget>[
  TopBarWidget(
      Tab(
        text: "Anime",
      ),
      new AnimeTab()),
  TopBarWidget(
      Tab(
        text: "Live",
      ),
      null),
  TopBarWidget(
      Tab(
        text: "Channel",
      ),
      null),
  TopBarWidget(
      Tab(
        text: "Music",
      ),
      null),
  TopBarWidget(
      Tab(
        text: "News",
      ),
      null),
  TopBarWidget(
      Tab(
        text: "Comic",
      ),
      null),
];

class TopBar extends StatefulWidget {
  TopBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TopBarState createState() => _TopBarState();
}

class TopBarWidget {
  Tab tab = Tab(
    icon: Icon(Icons.texture),
    text: "tab",
  );
  Widget widget = Center(
    child: Icon(Icons.texture),
  );

  TopBarWidget(tab, widget) {
    this.tab = (tab != null) ? tab : this.tab;
    this.widget = (widget != null) ? widget : this.widget;
  }
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("BiliBrowser"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(tabs: tabs.map((tab) => tab.tab).toList()),
        ),
        body: TabBarView(children: tabs.map((tab) => tab.widget).toList()),
        drawer: Drawer(
          child: navDrawer,
        ),
      ),
    );
  }
}
