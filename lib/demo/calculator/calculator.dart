import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_application_1/demo/calculator/cacuHelp.dart';

class CalculatorDemo extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<CalculatorDemo> {
// 运算符左侧值
  String leftVal = '0';

// 运算符右侧值
  String rightVal = '';

// 选中的操作符
  String optin = '';

// 运算结果
  num result = 0;

  bool JsLin = false;

  reset() {
    setState(() {
      leftVal = '0';
      rightVal = '';
      optin = '';
      result = 0;
    });
  }

  Widget _buildRadioBtn(
    String text,
  ) {
    return ElevatedButton(
      onPressed: () {
        if (text == 'AC') {
          reset();
        } else if (text == 'Jslin') {
          setState(() {
            JsLin = !JsLin;
          });
        } else {
          if (result != 0 && rightVal != '') reset();
          if (rightVal == '' && leftVal.length > 1) {
            var tepArry = leftVal.split('');
            tepArry.removeLast();
            var transfVal = tepArry.join('');
            setState(() {
              leftVal = transfVal;
              result = num.parse(transfVal);
            });
          } //截取左边
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey[400]),
        minimumSize: MaterialStateProperty.all(Size(70, 70)),
        shape: MaterialStateProperty.all(CircleBorder()), //圆角弧度
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 24),
      ),
    );
  }

  // 数字按钮组件
  Widget _buildNumsBtn(String text, [color]) {
    return ElevatedButton(
      onPressed: () {
        if (leftVal.contains('.') && text == '.') {
          return;
        }
        optin == ''
            ? setState(() {
                String lv = '$leftVal$text';
                leftVal = lv;
                result = num.parse(lv);
              })
            : setState(() {
                String rv = '$rightVal$text';
                rightVal = rv;
                result = num.parse(rv);
              });
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(221, 77, 75, 75)),
        minimumSize: MaterialStateProperty.all(Size(70, 70)),
        shape: MaterialStateProperty.all(CircleBorder()), //圆角弧度
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 24),
      ),
    );
  }

// 操作按钮组件
  Widget _buildOptionBtn(
    String _text,
  ) {
    return ElevatedButton(
      onPressed: () {
        if (_text == '=') {
          setState(() {
            result = leftVal != '' && rightVal != ''
                ? CacuHelp()
                    .cacu(optin, num.parse(leftVal), num.parse(rightVal))
                : 0;
            optin = '';
            leftVal = result.toString();
            rightVal = '';
          });
        } else {
          setState(() {
            optin = _text;
          });
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orange),
        minimumSize: MaterialStateProperty.all(Size(70, 70)),
        shape: MaterialStateProperty.all(CircleBorder()), //圆角弧度
      ),
      child: Text(
        _text,
        style: TextStyle(color: Colors.white, fontSize: 24),
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
              '${result == double.infinity ? '错误' : result.toString()}',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: window.physicalSize.width,
            child: Text(
              '${JsLin ? 'Powerd By JsLin' : ''}',
              style: TextStyle(
                color: Colors.white,
              ),
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
                        _buildRadioBtn('Jslin'),
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
