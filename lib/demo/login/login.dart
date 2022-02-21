import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text('登录页'),
        ),
        resizeToAvoidBottomInset:false , //输入框抵住键盘 ,防止键盘弹起布局溢出
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                '欢迎登录',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1, 1), //x,y轴
                        color: Colors.blueGrey.shade100, //投影颜色
                        blurRadius: 10, //模糊半径
                        spreadRadius: 10 //扩展半径

                        )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 16,
                      ),
                      Text(
                        '账户:',
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: TextField(
                            maxLength: 20,
                            maxLines: 1,
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                              hintText: '请输入账户名',
                              labelText: '请输入账户名',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top:20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 16,
                        ),
                        Text(
                          '密码:',
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: TextField(
                            obscureText: true,
                            maxLength: 6,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                                hintText: '请输入用户密码',
                                labelText: '请输入用户密码',
                                helperText: '例如：123456'),
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: MaterialButton(
                minWidth: 350,
                height: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () => {},
                child: Text(
                  '登录',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
        
          ],
        ));
  }
}
