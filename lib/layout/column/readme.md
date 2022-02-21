# Column 
竖向布局
# 构造函数
```
Column({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    List<Widget> children = const <Widget>[],
  })
```
# 代码示例
```
new Column(
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
        )
```