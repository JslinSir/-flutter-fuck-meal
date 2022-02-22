# Mac 下 Flutter 环境搭建


# 设置环境变量
```
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```
# Mac 下如何设置环境变量
```
vim ~/.bash_profile
```
* 设置环境变量 加入path
`export PATH= xxxxxx`
* 退出并保存
* 重启profile
```
source ~/.bash_profile
```
# 去官网 下载Flutter SDK 安装到本地

# 添加flutter相关工具到path中
`export PATH="$PATH:/Users/xxx/flutter-sdk/flutter/bin"`

# 运行 flutter doctor
```
flutter doctor
```

# 报错问题解决相关
1. Flutter requires Android SDK 29 and the Android BuildTools 28.0.3
> 这个错误其实是 我的 ansroid SDK 版本太低导致的，
>- 打开 Android studio -> SDK Manager -> 
>- SDk Platforms 选择Android 9.0+
>- SDK Tolls 选择 29.0+

2. cmdline-tools component is missing
* 问题描述：`cmdline-tools component is missing
Run `path/to/sdkmanager --install "cmdline-tools;latest"``
* 解决：
选择 Android Studio 下的 Android SDK Command-line Tools（latest） 选择安装
