import 'package:flutter/material.dart';

class TextEmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Text 用法'),
        ),
        body: ListView(
          children: [
            Text(
              'Hello, flutter! How are you?',
            ),
            Text(
              '对齐方式右对齐?',
              textAlign: TextAlign.right,
            ),
            Text(
              '超出换行展示，超出换行展示，超出换行展示，超出换行展示，超出换行展示，超出换行展示，',
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '-->设置最大展示函数,设置最大展示函数-,设置最大展示函数-,设置最大展示函数-,设置最大展示函数-',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              '设置文本样式',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffff0000),
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: ' beautiful ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'world',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' world2',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ));
  }
}
