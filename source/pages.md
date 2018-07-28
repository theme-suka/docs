---
title: 独立页面
permalink: /pages/
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
    url: https://blog.suka.moe
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
