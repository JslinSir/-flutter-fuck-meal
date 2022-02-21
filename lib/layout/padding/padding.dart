import 'package:flutter/material.dart';

class PaddingEmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Padding 用法'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.green),
            ),
            new Padding(
              padding: EdgeInsets.all(20),
              child: new Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.red),
                child: Row(
                  children: [
                    Text('内容区域')
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
