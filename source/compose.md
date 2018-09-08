---
title: 开始创作
permalink: /compose/
---

# 创建文章

## 使用命令行

```bash
hexo new <title>
```

## 手动创建

在站点根目录的 `source/_posts` 目录下新建以 `.md` 为后缀的文件。

# Front-Matter

[Hexo 官方文档 - Front-Matter](https://hexo.io/zh-cn/docs/front-matter.html)

除了 Hexo 官方的 Front Matter 以外，「Suka」扩展了以下 Front-Matter

| 参数          | 描述                | 默认值       |
|:--            |:--                 |:--           |
| `thumbnail`   | 文章缩略图地址       |              |
| `toc`         | 是否显示 TOC        | true         |
| `busuanzi_offset` | 当前页面的不蒜子偏移量 | 0      |
| `license`     | 当前页面的版权协议（覆盖主题配置文件） | |
