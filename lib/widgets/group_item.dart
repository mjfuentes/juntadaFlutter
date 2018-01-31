
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GroupItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 1.0,
        child: new Container(
            color: Colors.white,
            child: new GestureDetector(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            alignment: FractionalOffset.topCenter,
                            image: new AssetImage(
                                'images/groups/sample1.jpg'),
                          )),
                    ),
                  ),
                  new Container(
                      alignment: Alignment.centerLeft,
                      child: new Padding(
                        padding: new EdgeInsets.all(8.0),
                        child: new Text(
                          'Sample group 1',
                          textAlign: TextAlign.start,
                          style: new TextStyle(fontSize: 15.0),
                        ),
                      )
                  )
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/groupPage');
              },
            )
        )
    );
  }
}