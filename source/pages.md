---
title: 独立页面
permalink: /pages/
description: Verison 1.3.0
---

# 友情链接

## 创建页面

在站点根目录下的 `source` 文件夹内创建一个 `.md` 文件，文件名和路径根据个人喜好决定，会决定渲染生成以后页面的路径。

在文件中写入以下内容：

```markdown
---
title: links
date:
layout: links
---
```

> title 可以更换为自己喜欢的标题；也可以添加其它 `front-matter`。

## 添加数据

在站点根目录目录下的 `source` 文件夹内创建一个名为 `_data` 的文件夹。

然后在文件内创建一个名为 `links.yml` 的文件。

单个友情链接的格式为：

```yaml
站点名称:
    url: https://example.com
    img: https://example.com/avatar.png
    text: "这是一个描述"
```

比如你可以这样添加 Sukka 的博客为友链：

```yaml
"Sukka's Blog":
    url: https://blog.skk.moe
    img: https://secure.gravatar.com/avatar/979869bac8c7bd23fbd649064eabd48e?s=128
    text: "苏卡卡的有底洞"
```

# 标签云

## 创建页面

在站点根目录下的 `source` 文件夹内创建一个 `.md` 文件，文件名和路径根据个人喜好决定，会决定渲染生成以后页面的路径。

在文件中写入以下内容：

```markdown
---
title: tags
date:
layout: tags
---
```

> title 可以更换为自己喜欢的标题；也可以添加其它 `front-matter`。

# 画廊

## 创建页面

在站点根目录下的 `source` 文件夹内创建一个 `.md` 文件，文件名和路径根据个人喜好决定，会决定渲染生成以后页面的路径。

在文件中写入以下内容：

```markdown
---
title: Gallery
date:
layout: gallery
---
```

## 添加数据

在站点根目录目录下的 `source` 文件夹内创建一个名为 `_data` 的文件夹。

然后在文件内创建一个名为 `gallery.yml` 的文件。

单个图片的格式为：

```yaml
图片名称（唯一）:
    full: # 完整图片 URL
    thumb: # 缩略图 URL
    descr: # 图片简介
```

比如这样：

```yaml
住み家:
    full: https://i.jpg.dog/img/c78866c8fcab8e8edb20a9e37c3378b6.png
    thumb: https://i.jpg.dog/img/c78866c8fcab8e8edb20a9e37c3378b6.md.png
    descr: pixiv.net/i/70337807
晩夏の灯　宵の風:
    full: https://i.jpg.dog/img/8975f29cdb459b3a8b1b4f0c8fb0a7af.png
    thumb: https://i.jpg.dog/img/8975f29cdb459b3a8b1b4f0c8fb0a7af.md.png
    descr: pixiv.net/i/70352475
```

# 搜索

## 创建页面

在站点根目录下的 `source` 文件夹内创建一个 `.md` 文件，文件名和路径根据个人喜好决定，会决定渲染生成以后页面的路径。

在文件中写入以下内容：

```markdown
---
title: Search
date:
layout: search
---
```

> title 可以更换为自己喜欢的标题；也可以添加其它 `front-matter`。
