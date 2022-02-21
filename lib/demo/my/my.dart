import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('我的'),
      ),
      resizeToAvoidBottomInset: false, //输入框抵住键盘 ,防止键盘弹起布局溢出
      body: Column(
        children: [],
      ),
    );
  }
}
