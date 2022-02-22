import 'package:flutter/material.dart';
import './layout/row/base.dart'; // Row 用法
import './layout/Row/demo1.dart'; // Row 用法
import './layout/container/demo1.dart'; // container 用法
import './layout/text/text.dart';  // text 部件
import './layout/stack/stack.dart'; // stack 层叠布局
import './layout/wrap/wrap.dart'; // 自动换行  warp
import './layout/align/align.dart'; //相对布局
import './demo/login/login.dart'; //登录页模拟
import './demo/my/my.dart'; //我的页面模拟
import './demo/calculator/calculator.dart'; //计算器 实践
 
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Welcome to Flutter',
     home: new MyPage());
  }
}

class RowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Row Study'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('你好'),
          const Text('你好'),
          const Text('你好'),
        ],
        
      ),
    );
  }
}

 