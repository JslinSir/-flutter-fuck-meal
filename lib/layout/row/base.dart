/**
 * 行布局  Row 基础用法
 * 默认 主轴方向 开始排列 
 * mainAxisAlignment: MainAxisAlignment.start
 */

import 'package:flutter/material.dart';

// 默认用法
class RowBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('RowBase'),
        ),
        body: ListView(
          children: [
            new Row(
              children: <Widget>[
                const Text('你好'),
                const Text('你好'),
                const Text('你好'),
              ],
            ),
            // 主轴开始排列
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text('你好'),
                const Text('你好'),
                const Text('你好'),
              ],
            ),
            // row 居中排列
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('你好'),
                const Text('你好'),
                const Text('你好'),
              ],
            ),
            //  row 结束位置排列
            new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Text('你好'),
                const Text('你好'),
                const Text('你好'),
              ],
            ),
            // row 两边对齐
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('你好'),
                const Text('你好'),
                const Text('你好'),
              ],
            ),
            // row 环绕对齐
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text('你好'),
                const Text('你好'),
                const Text('你好'),
              ],
            ),
            // row 等分对齐
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text('你好'),
                const Text('你好'),
                const Text('你好'),
              ],
            ),
          ],
        ));
  }
}

// 主轴开始排列
class RowBaseMainStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RowBaseMainStart'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Text('你好'),
          const Text('你好'),
          const Text('你好'),
        ],
      ),
    );
  }
}

// row 居中排列
class RowBaseMainCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RowBaseMainCenter'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('你好'),
          const Text('你好'),
          const Text('你好'),
        ],
      ),
    );
  }
}

// row 结束位置排列
class RowBaseMainEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RowBaseMainEnd'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const Text('你好'),
          const Text('你好'),
          const Text('你好'),
        ],
      ),
    );
  }
}

// row 两边对齐
class RowBaseMainSpaceBetween extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RowBaseMainEnd'),
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

// row 环绕对齐
class RowBaseMainSpaceSpaceAround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RowBaseMainEnd'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text('你好'),
          const Text('你好'),
          const Text('你好'),
        ],
      ),
    );
  }
}

// row 等分对齐
class RowBaseMainSpaceSpaceEvenly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RowBaseMainEnd'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Text('你好'),
          const Text('你好'),
          const Text('你好'),
        ],
      ),
    );
  }
}
