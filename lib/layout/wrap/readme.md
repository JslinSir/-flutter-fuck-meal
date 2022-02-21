# wrap 
流式布局  wrap  自动换行
 

# 构造函数
```
 Wrap({
    Key? key,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.clipBehavior = Clip.none,
    List<Widget> children = const <Widget>[],
  })
```

# 属性介绍
* direction ： 主轴方向 默认 Axis.horizontal,  横向
* alignment： 主轴对齐方式
* spacing：主轴方向子widget的间距
* runSpacing ： 纵轴方向的间距
* runAlignment ：run的对齐方式。run可以理解为新的行或者列，如果是水平方向布局的话，run可以理解为新的一行
* crossAxisAlignment：交叉轴（crossAxis）方向上的对齐方式。
* textDirection：文本方向
* verticalDirection：定义了children摆放顺序，默认是down

# 代码示例
```
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

```