# Align 相对布局
子部件相对与父节点相对位置

# 构造函数
```
const Align({
    Key? key,
    this.alignment = Alignment.center,
    this.widthFactor,
    this.heightFactor,
    Widget? child,
  }) 
```

# 属性介绍
* alignment： 对齐方式
* widthFactor和heightFactor是用于确定Align 组件本身宽高的属性；它们是两个缩放因子，会分别乘以子元素的宽、高，最终的结果就是Align 组件的宽高。如果值为null，则组件的宽高将会占用尽可能多的空间。 比如：如果 widthFactor = 2 意味着 子组件的宽度为 真实宽度*缩放倍数(widthFactor)

# 示例代码
```
Container(
  height: 120.0,
  width: 120.0,
  color: Colors.shade50,
  child: Align(
    alignment: Alignment.topRight,
    child: FlutterLogo(
      size: 60,
    ),
  ),
)
```
等效于
```
Align(
  widthFactor: 2,
  heightFactor: 2,
  alignment: Alignment.topRight,
  child: FlutterLogo(
    size: 60,
  ),
),
```