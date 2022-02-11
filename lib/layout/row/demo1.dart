/**
 * 一个 横向排列的展示
 */

import 'package:flutter/material.dart';

class RowDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('横向排列的展示'),
        ),
        body: new Column(
          children: [
            new Row(
              children: [Text('收益展示',style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),)],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Text(
                      '￥201',
                      style: TextStyle(color: Colors.red),
                    ),
                    Text('今日收益')
                  ],
                ),
                new Column(
                  children: <Widget>[
                    Text(
                      '￥121',
                      style: TextStyle(color: Colors.red),
                    ),
                    Text('今日收益')
                  ],
                ),
                new Column(
                  children: <Widget>[
                    Text(
                      '￥3332',
                      style: TextStyle(color: Colors.red),
                    ),
                    Text('近30日收益')
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
