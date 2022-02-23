# dart 学习

# 变量的定义

```
var name = 'Bob';
//此时 name 会被类型推断为 String 类型，如果再改变其类型，会报错
// 类型一旦确定后则不能再更改其类型。
```
此时 name 会被类型推断为 String 类型，等同于
```
String name = 'Bob'
```
如果定义变量时，类型未知，Object（或 dynamic）类型
```
Object name = 'Bob';
name = []
```
