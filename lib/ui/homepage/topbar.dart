import 'package:bilibrowser/ui/homepage/animetab/anime.dart';
import 'package:bilibrowser/ui/homepage/channaltab/channel.dart';
import 'package:bilibrowser/ui/homepage/livetab/livetab.dart';
import 'package:bilibrowser/ui/homepage/nav.dart';
import 'package:bilibrowser/ui/homepage/newstab/newstab.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
//  TopBar({Key key, this.title}) : super(key: key);

//  final String title;

  @override
  _TopBarState createState() => _TopBarState();
}

class TopBarWidget {
  Tab tab = Tab(
    icon: Icon(Icons.texture),
    text: "tab",
  );
  Widget widget = Container(
//    color: Colors.black87,
    child: Center(
      child: Icon(
        Icons.texture,
        color: Colors.white,
      ),
    ),
  );

  TopBarWidget(tab, widget) {
    this.tab = (tab != null) ? tab : this.tab;
    this.widget = (widget != null) ? widget : this.widget;
  }
}

class _TopBarState extends State<TopBar> {
  final tabs = <TopBarWidget>[
    TopBarWidget(
        Tab(
          text: "Anime",
        ),
        AnimeTab()),
    TopBarWidget(
        Tab(
          text: "Live",
        ),
        liveTab()),
    TopBarWidget(
        Tab(
          text: "Channel",
        ),
        ChannelTab()),
    TopBarWidget(
        Tab(
          text: "Music",
        ),
        null),
    TopBarWidget(
        Tab(
          text: "News",
        ),
        newsTab()),
    TopBarWidget(
        Tab(
          text: "Comic",
        ),
        null),
  ];

  @override
  Widget build(BuildContext context) {
//    Locale myLocale = Localizations.localeOf(context);
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("BiliBrowser"),
          actions: <Widget>[
//            IconButton(
//              icon: Icon(Icons.search),
//              onPressed: () {},
//            ),
//            IconButton(
//              icon: Icon(Icons.chat_bubble_outline),
//              onPressed: () {},
//            ),
          ],
          bottom: TabBar(
            tabs: tabs.map((tab) => tab.tab).toList(),
            isScrollable: true,
          ),
        ),
        body: Container(
            color: Theme
                .of(context)
                .backgroundColor,
            child:
            TabBarView(children: tabs.map((tab) => tab.widget).toList())),
        drawer: Container(
//          color: Theme.of(context).backgroundColor,
          child: Drawer(
            child: Container(
                color: Theme
                    .of(context)
                    .backgroundColor, child: navDrawer()),
          ),
        ),
      ),
    );
  }
}
