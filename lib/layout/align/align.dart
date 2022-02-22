/**
 * 相对布局   Align
 */

import 'package:flutter/material.dart';

// 默认用法
class AlignBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Align'),
        ),
        body: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.red,
          child: Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ));
  }
}
