import 'package:flutter/material.dart';
import 'dart:ui';

class CalculatorDemo extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<CalculatorDemo> {
  final cacuConfig = [];

  Widget _buildRadioBtn(String text,) {
    return ElevatedButton(
      onPressed: () => {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey[400]),
        minimumSize: MaterialStateProperty.all(Size(70, 70)),
        shape: MaterialStateProperty.all(CircleBorder()), //圆角弧度
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black,fontSize: 24),
      ),
    );
  }

  // 数字按钮组件
  Widget _buildNumsBtn(String text, [color]) {
    return ElevatedButton(
      onPressed: () => {},
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(221, 77, 75, 75)),
        minimumSize: MaterialStateProperty.all(Size(70, 70)),
        shape: MaterialStateProperty.all(CircleBorder()), //圆角弧度
      ),
      child: Text(
        text,
        style: TextStyle(color: color,fontSize: 24),
      ),
    );
  }

// 操作按钮组件
  Widget _buildOptionBtn(
    String text,
  ) {
    return ElevatedButton(
      onPressed: () => {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orange),
        minimumSize: MaterialStateProperty.all(Size(70, 70)),
        shape: MaterialStateProperty.all(CircleBorder()), //圆角弧度
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white,fontSize: 24),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 38, 38),
      appBar: new AppBar(
        title: Text('计算器 Demo'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.bottomRight,
            width: window.physicalSize.width,
            height: 240,
            child: Text(
              '123',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildRadioBtn('AC'),
                        _buildRadioBtn('Back'),
                        _buildRadioBtn('%'),
                        _buildOptionBtn('÷')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildNumsBtn('7'),
                        _buildNumsBtn('8'),
                        _buildNumsBtn('9'),
                        _buildOptionBtn('x')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildNumsBtn('4'),
                        _buildNumsBtn('5'),
                        _buildNumsBtn('6'),
                        _buildOptionBtn('-')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildNumsBtn('1'),
                        _buildNumsBtn('2'),
                        _buildNumsBtn('3'),
                        _buildOptionBtn('+')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildNumsBtn('00'),
                        _buildNumsBtn('0'),
                        _buildNumsBtn('.'),
                        _buildOptionBtn('=')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
