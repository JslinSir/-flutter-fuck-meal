import 'package:flutter/material.dart';
import 'dart:ui';

class CalculatorDemo extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<CalculatorDemo> {
  final cacuConfig = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('计算器 Demo'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(30),
            alignment: Alignment.bottomRight,
            width: window.physicalSize.width,
            height: 200,
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: Text(
              '123',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              width: window.physicalSize.width,
              child: new GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: new List.generate(20, (index) {
                  return new Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color:Colors.blue[100], border: new Border.all()),
                    child: Text(
                      'Item $index',
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
