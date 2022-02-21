/**
 * 流式布局   wrap
 
 */

import 'package:flutter/material.dart';

// 默认用法
class WrapBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Wrap'),
        ),
        body: Wrap(
          children: [for (String item in tags) TagItem(item)]));
  }
}

class TagItem extends StatelessWidget {
  final String text;

  TagItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          border:
              Border.all(color: Colors.blueAccent.withAlpha(60), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}

const List<String> tags = [
  "前端",
  "JavaScript",
  "dart 学习",
  "flutter 学习",
  "跨平台开发Flutter",
  "打包",
  "调试",
  "Flutter 布局",
  "流式布局Wrap",
  "自动换行",
  "Flutter Wrap",
  "加油打工人💪🏻",
  "等等等..."
];
