import 'package:AeologicSplashDemo/Screens/AlbumContainerScreen.dart';
import 'package:AeologicSplashDemo/Screens/PhotoContainerScreen.dart';
import 'package:AeologicSplashDemo/Screens/VideoContainerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: new NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    title: const Text("Gallery"),
                    actions: <Widget>[
                      new IconButton(
                          icon: new Icon(Icons.search), onPressed: () {}),
                      new IconButton(
                          icon: new Icon(Icons.more_vert), onPressed: () {})
                    ],
                    forceElevated: innerBoxIsScrolled,
                    snap: false,
                    pinned: false,
                    floating: false,
                    bottom: new TabBar(
                        indicatorColor: Colors.red,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 2.5,
                        tabs: <Tab>[
                          new Tab(text: "Photo"),
                          new Tab(text: "Video"),
                          new Tab(text: "Album"),
                        ]),
                  )
                ];
              },
              body: new TabBarView(
                children: <Widget>[
                  new PhotoContainerScreen(),
                  new VideoContainerScreen(),
                  new AlbumContainerScreen()
                ],
              )),
        ));
    // TODO: implement build
  }
}
