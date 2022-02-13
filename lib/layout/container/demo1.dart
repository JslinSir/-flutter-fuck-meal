/**
 *  container 用法
 */

import 'package:flutter/material.dart';

class ContainerDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('信息卡片'),
        ),
        body: Column(
          children: [
            Container(
              //约束盒子最大最小宽高
              constraints: new BoxConstraints(
                  minHeight: 100, maxHeight: 200, minWidth: 100, maxWidth: 200),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.bottomRight,
              decoration: new BoxDecoration(
                color: Colors.green,
                //设置四周圆角 角度
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                //设置四周边框
                border: new Border.all(width: 4, color: Colors.red),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 1), //x,y轴
                      color: Colors.indigo, //投影颜色
                      blurRadius: 30, //模糊半径
                      spreadRadius: 20 //扩展半径

                      )
                ],
                image: new DecorationImage(
                  image: new NetworkImage(
                      'https://semantic-ui.com/images/avatar2/large/kristy.png'),
                 
                ),
              ),
              transform: new Matrix4.rotationY(0),
              child: Text('内容'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  margin: EdgeInsets.all(15),
                  child: Icon(Icons.settings),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('JsLin'), Text('深圳打工仔')],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 100),
                  child: Text('不可描述'),
                )
              ],
            )
          ],
        ));
  }
}
