# halo-them-knarc

## 说明

本主题基于 [halo-theme-anatole](https://github.com/halo-dev/halo-theme-anatole) 进行了修改，其主题的原作者为 [Caicai](https://www.caicai.me)。**个人非常喜欢 Anatole 的简约风格，非常感谢主题的原作者！！**

预览效果欢迎参考我的博客：http://wujiawen.xyz


## 预览截图

**首页将备案/版权等信息统一移动到了右边栏最下方，保留 Anatole 原作者信息。** 

![image-20220510231849028](https://gitee.com/kevinng77/picgo_img/raw/master/image-20220510231849028.png)

目录也换成了 typora 风格，点击右下角按钮隐藏目录。

![image-20220411161248923](https://gitee.com/kevinng77/picgo_img/raw/master/image-20220411161248923.png)

有过用 Linux-arc 主题的朋友应该很熟悉上面这种配色，是的该主题参考了 arc 的配色方案（kevin + anatole + arc = knarc [滑稽狗头.jpg]）。当然该主题也保留了Anatole 原始的白色简洁风格，另外文章归档页面做了小小的修改：

![image-20220411161037357](https://gitee.com/kevinng77/picgo_img/raw/master/image-20220411161037357.png)

## 安装与使用

【本地安装】点击 `code` 下载代码为 `.zip` 格式，进入后台 -> 外观 -> 主题 -> 安装 -> 本地安装，上传该 `.zip` 代码即可。

 【远程安装】进入后台 -> 外观 -> 主题 -> 安装 -> 远程下载，输入 https://github.com/kevinng77/halo-theme-knarc.git ，点击下载。

## 修改历史

### Knarc - v1.0

> 相对于  [halo-theme-anatole](https://github.com/halo-dev/halo-theme-anatole)，本主题主要做了以下修改：
>

修改了博客整体布局和风格添加了 Arc 配色方案。包括：

+ 左边栏头像锁定为圆形，缩小左边栏比例；
+ 修改归档页面、首页中的文章块风格；
+ 博客页面风格修改，如行间距、引言风格、评论区等；
+ 搜索栏改为点击触发。
+ 左边栏可配置背景图案
+ 修改了index（首页）的文章展示布局

修改代码高亮方案。包括：

+ 修改行内代码高亮格式，从红色高亮改为了 `灰色背景代码块`。
+ 修正了代码块高亮BUG，代码高亮方案改用 highlightjs，支持更多代码高亮风格。

添加文章目录按钮（基于 [Moon-Menu](https://github.com/jiangtj-lab/hexo-cake-moon-menu) 设计），支持文章 `h1,h2,h3` 标题链接跳转。

优化了手机/平板模式下的显示，小屏幕下仅显示首页会显示左边栏信息。

### TODO

- [ ] 【重要】添加多 Tag 标签功能，优化 Tag 标签风格。
- [ ] 支持通过后台调整目录显示内容： `h1,h2,h3`...
- [ ] 手机端目录大小调整
- [ ] 图片与下面图描述居中(对需要居中的行添加特定的居中符号)
- [ ] 标签显示的方案
- [ ] 备案信息位置
- [ ] 文章加粗字体颜色
- [ ] menu目录样式更改，添加点击效果
- [ ] 目录展开时候特效调整，收缩时候特效调整 
- [ ] index页面支持<--more--> 截取摘要片段

## 其他

#### **数学公式：**

markdown中添加

```html
<link rel="stylesheet" href="https://unpkg.com/katex@0.12.0/dist/katex.min.css" />
```

即可，小工具导入的文章需要手动通过后台发一次才能生效（不知道是不是halo系统原有的bug）

#### **评论头像**

修改 `系统>博客设置>评论设置>Gravatar 镜像源`，换为国内源如 https://sdn.geekzu.org/avatar/

#### **额外代码块风格**

笔者挑选了部分推荐的代码主题，可在后台配置。更多主题和语言可在 [highlightjs 官网](https://highlightjs.org/download/)  下载安装。使用其他代码块风格指南：

1. 该项目使用的是 highlight 的代码高亮插件，首先登录 [highlightjs 官网](https://highlightjs.org/download/)  ，选择代码语言，而后下载 `highlightjs.zip`。
2. 将下载好的文件解压放在 `source/plugins/highlightjs` 下，从 `source/plugins/highlightjs/styles` 文件夹中挑选喜欢的代码皮肤。
3. 在 `settings.yaml` 中的 `code_pretty` 添加 风格名称的选项，如选中 `styles/default.min.css`，则在 `option` 下添加对应的 `value: 'default'`, `label: 'default'` ：

```yaml
    code_pretty:
      name: code_pretty
      label: 文章代码高亮主题
      type: select
      default: 'default'
      options:
        - value: 'default'
          label: 'default'
        - value: '风格名称'
          label：'后台显示的风格名称'
```

4. 在后台选择新代码风格。

#### 添加备案信息：

在 halo 后台点击 设置 -> 博客设置。在 常规设置 -> 页脚信息中添加备案信息，如：

```html
<a href="https://beian.miit.gov.cn/" target="_blank">备案号</a>
&nbsp;
<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=" target="_blank">
<img src="/themes/knarc/source/images/备案图标.png">闽公网安备 备案号 
</a>
```

