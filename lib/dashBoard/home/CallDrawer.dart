import 'package:flutter/material.dart';
import 'package:structurenodes/dashBoard/home/states/zoom_scaffold.dart';

import 'mainPage.dart';

class CallDrawer extends StatefulWidget {
  @override
  _CallDrawerState createState() => _CallDrawerState();
}

class _CallDrawerState extends State<CallDrawer> {

  @override
  Widget build(BuildContext context) {
    return new ZoomScaffold(
      menuScreen: MenuScreen(),
      contentScreen: Layout(
          contentBuilder: (cc)=> Container(
            color: Colors.grey[200],
            child: Container(
              color: Colors.grey[200],
            ),
          )
      ),
    );
  }
}