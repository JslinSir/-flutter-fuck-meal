import 'package:flutter/material.dart';
import './layout/row/base.dart'; // Row 用法
import './layout/Row/demo1.dart'; // Row 用法
import './layout/container/demo1.dart'; // container 用法
import './layout/text/text.dart';  // text 部件
import './layout/stack/stack.dart'; // stack 层叠布局
import './demo/login.dart'; //登录页模拟
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Welcome to Flutter',
     home: new Login());
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

 