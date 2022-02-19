
# 一些实战页面

# 关于布局登录页遇到的问题
* TextField 需要明确宽度
* 如果在row中使用，则报错信息如下
```
An InputDecorator, which is typically created by a TextField, cannot have an unbounded width.
This happens when the parent widget does not provide a finite width constraint. For example, if the InputDecorator is contained by a Row, then its width must be constrained. An Expanded widget or a SizedBox can be used to constrain the width of the InputDecorator or the TextField that contains it.
'package:flutter/src/material/input_decorator.dart':
package:flutter/…/material/input_decorator.dart:1
Failed assertion: line 959 pos 7: 'layoutConstraints.maxWidth < double.infinity'

```
* 解决方法：嵌套一层 Expanded



# 效果展示
<img src='./login.png' width=325 height=660 object-fit='contain'/>