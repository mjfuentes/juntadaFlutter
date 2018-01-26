import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {

  @override
  _GroupPageState createState() => new _GroupPageState();
}

enum AppBarBehavior { normal, pinned, floating, snapping }


class _GroupPageState extends State<GroupPage> {

  final double _appBarHeight = 200.0;
  AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: _appBarHeight,
            pinned: _appBarBehavior == AppBarBehavior.pinned,
            floating: _appBarBehavior == AppBarBehavior.floating,
            snap: _appBarBehavior == AppBarBehavior.snapping,
            actions: <Widget>[
              new PopupMenuButton<AppBarBehavior>(
                onSelected: (AppBarBehavior value) {
                  setState(() {
                    _appBarBehavior = value;
                  });
                },
                itemBuilder: (BuildContext context) => <PopupMenuItem<AppBarBehavior>>[
                  const PopupMenuItem<AppBarBehavior>(
                      value: AppBarBehavior.normal,
                      child: const Text('App bar scrolls away')
                  ),
                  const PopupMenuItem<AppBarBehavior>(
                      value: AppBarBehavior.pinned,
                      child: const Text('App bar stays put')
                  ),
                  const PopupMenuItem<AppBarBehavior>(
                      value: AppBarBehavior.floating,
                      child: const Text('App bar floats')
                  ),
                  const PopupMenuItem<AppBarBehavior>(
                      value: AppBarBehavior.snapping,
                      child: const Text('App bar snaps')
                  ),
                ],
              ),
            ],

            flexibleSpace: new FlexibleSpaceBar(
              title: const Text('Group name'),
              background: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Image.asset(
                    'images/groups/sample1.jpg',
                    fit: BoxFit.cover,
                    height: _appBarHeight,
                  ),
                  // This gradient ensures that the toolbar icons are distinct
                  // against the background image.
                  const DecoratedBox(
                    decoration: const BoxDecoration(
                      gradient: const LinearGradient(
                        begin: const Alignment(0.0, -1.0),
                        end: const Alignment(0.0, -0.4),
                        colors: const <Color>[const Color(0x60000000), const Color(0x00000000)],
                      ),
                    )
                  ),
                ]
              )
            )
          ),
          new SliverList(
            delegate: new SliverChildListDelegate(<Widget>[
             new Container(
               child:new Column(
                 children: <Widget>[
                   new Text('Members'),
                   new ListView(
                     scrollDirection: Axis.horizontal,
                     children: getGroupMembers(),
                   )
                 ],
               )
             )
            ]),
          )
        ]
      )
    );
  }

  getGroupMembers() {
    var _members = [];
    for (int i=1; i<=4; i++){
      _members.add(new Image.asset('images/groups/sample' + i.toString() + '.jpg'));
    }
    return _members;
  }
}