import 'package:flutter/material.dart';
import './layout/row/base.dart';
import './layout/Row/demo1.dart';
import './layout/container/demo1.dart';
import './layout/text/text.dart';
import './layout/stack/stack.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Welcome to Flutter',
     home: new StackEmp());
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

 