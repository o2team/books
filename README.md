## 补间动画 DEMO - 京东招聘宣讲日程

这是掘金小册《大厂 UI 开发实战手册》中『7.动效开发：补间动画』章节的手把手教导案例DEMO。

## 项目运行

项目是基于[Athena](https://github.com/o2team/athena)前端流程工具进行开发的。

因此，运行此项目需要以下步骤：

1. `git clone` 本项目

```
git clone git@github.com:xtutor/ui-dev-handbook.git
```

2. 安装 [Athena](https://github.com/o2team/athena)

按照[官方指南](https://github.com/o2team/athena)进行安装。

3. 新建项目 `H5Demo`，并创建`recruit`同名模块

```
// 生成一个名为 `H5Demo` 项目
$ ath app H5Demo // 使用默认模版

// 进入项目根目录，创建模块
$ cd H5Demo
$ ath m recruit // 指定项目使用sass，其余配置默认
```

3. 替换`page`文件夹内容

拷贝本项目的[page](./recruit/page)目录，把本地`H5Demo/recruit`目录下的`page`文件夹进行替换。

4. 本地运行项目

```
$ ath s
```
