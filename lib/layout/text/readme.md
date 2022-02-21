# Text 学习
Text widget 可以用来在应用内创建带样式的文本。
[官方介绍](https://api.flutter-io.cn/flutter/widgets/Text-class.html)
# 构造函数
```
 const Text(
    String this.data, { //this.data 要显示的文本内容
    Key? key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,  //国际化
    this.softWrap,  //是否自动换行  默认true
    this.overflow, ////文字超出屏幕之后的处理方式，TextOverflow.clip剪裁   TextOverflow.fade 渐隐  TextOverflow.ellipsis省略号
    this.textScaleFactor, //文本字体的缩放倍数，如：1.5则在默认字体上变成1.5倍大小字体，0.5则是0.5倍
    this.maxLines,  // 本最多显示多少行
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })
```
# 属性介绍
text 默认换行，
* maxLines： 最大行数，如果最大行数设置2，那么超过一行讲自动换行，如果超过2行，则只显示两行，一般和 overflow 配合使用，超过行数... 显示
* overflow  文字超出屏幕之后的处理方式，TextOverflow.clip剪裁   TextOverflow.fade 渐隐  TextOverflow.ellipsis省略号
* semanticsLabel 另一种语译标签，很少用到
* softWrap： 是否自动换行 false文字不考虑容器大小，单行显示，超出屏幕部分将默认截断处理
* style ：TextStyle
* textAlign 文本对齐方式
* textDirection  文本方向

## TextStyle 属性
[官方介绍](https://api.flutter-io.cn/flutter/painting/TextStyle-class.html)

### 构造函数
```
 const TextStyle({
   this.inherit = true,  //是否继承父类
    this.color,  // 字体颜色
    this.backgroundColor,//背景色
    this.fontSize, //字体大小 默认是14.0的
    this.fontWeight, // 字体加粗
    this.fontStyle, // 系统字体 normal正常 italic 斜体
    this.letterSpacing, //字母间距
    this.wordSpacing, // 单词间距
    this.textBaseline,  // 字体基线
    this.height,  //高度,用在Text控件上的时候，会乘以fontSize做为行高
    this.leadingDistribution, // 
    this.locale,  //国际化
    this.foreground, // 	前置层
    this.background,  // 背景层
    this.shadows,  //阴影
    this.fontFeatures,  //指定字体的多种变体
    this.decoration,  //文字划线：上，中，下
    this.decorationColor, // 划线颜色
    this.decorationStyle, // 划线样式：虚线，单线，双线
    this.decorationThickness, // 线宽，默认1.0
    this.debugLabel,  // 
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    this.overflow,
  })
```
 

# 用法示例
* 基本用法

```
new Scaffold(
        appBar: new AppBar(
          title: new Text('Text 用法'),
        ),
        body: Text(
          'Hello, flutter! How are you? ',
        ));
```
*  示例2

```
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
            )
          ],
        ));
  }
}


```
#  Text.rich
一般用于 行内多个样式
## 用法
```
const Text.rich(
  TextSpan(
    text: 'Hello', // default text style
    children: <TextSpan>[
      TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
      TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
)
```







