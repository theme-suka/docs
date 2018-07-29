---
title: 进阶使用
description: 以下部分可能影响到「Suka」主题的正常运作！
permalink: /expert/
---

> 「Suka」除了提供基本的主题设置和第三方服务以外，还提供了一些进阶的设定，让「Suka」更具定制性。 请注意，这些设定可能影响到「Suka」的正常运作，请务必先了解这些设定背后的相关知识。

# 使用 Git 管理 Hexo

正如在 [开始使用](/docs/) 中所说，为了避免冲突，「Suka」中只有 `_config.example.yml`，`主题配置文件` 需要将 `_config.example.yml` 复制一份并重命名为 `_config.yml`。

为了防止开发中 `_config.yml` 被推送进 Repo 中，我们将 `_config.yml` 写入了 `.gitignore`。这意味着在使用 Git 管理 Hexo 站点文件时，`主题配置文件` 并不会被 Push 到 Repo 中。此时你需要将 `_config.yml` 从 `.gitignore` 中删除，注意这有可能会造成使用 `git pull` 更新「Suka」时造成冲突。

# 添加自定义代码

「Suka」支持在 `</head>` 之前添加自定义 `font face`，统计代码等自定义代码，也支持在站点的 `</body>` 之前添加自定义代码。

需要在站点目录下的 `source` 文件夹内创建一个名为 `_data` 的文件夹，并在文件内分别创建名为 `head.yml` `footer.yml` 的文件，并在其中加入你的自定义代码。`head.yml` 中的代码将被添加在 `</head>` 之前，`footer.tml` 中的代码将被添加在 `</body>` 之前。

代码格式是：

```yaml
custom_head_1: '<!-- 一行自定义代码 -->'
custom_head_2:
  - '<!-- 多行自定义代码 -->'
  - '<!-- 第二行 -->'
  - '<!-- 第三行 -->'
custom_head_3:
  - '<!-- 这还是一行自定义代码 -->'
```

上述自定义代码的配置的渲染成 HTML 会像这样：

```html
<!-- 一行自定义代码 -->
<!-- 多行自定义代码 --><!-- 第二行 --><!-- 第三行 -->
<!-- 这还是一行自定义代码 -->
```

# 使用 CDN

文档中我们会提供以下三种公共 CDN 库的地址：

- jsDelivr：在全球范围内都有良好的速度，包括中国大陆地区
- cdnjs：在除中国大陆地区外的全球范围内速度优秀
- css.net：在中国大陆地区速度优秀，其它地区速度良好

当然，你也可以用你自己的私有 CDN 加载它们；如果你不想使用 CDN、直接从你的站点加载，只需将相关配置留空即可。

在 `主题配置文件` 中，找到 `vendors`。

## Suka Theme 1.0.0

https://theme.suka.moe https://github.com/SukkaW/hexo-theme-suka

**jsDelivr**

```yaml
style_css: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.0.0/source/css/style.min.css
local_search_js: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.0.0/source/js/local-search.min.js
```

## Spectre.css 0.5.3

https://picturepan2.github.io/spectre/

**jsDelivr**

```yaml
spectre_css: https://cdn.jsdelivr.net/npm/spectre.css@0.5.3
```

**cdnjs**

```yaml
spectre_css: https://cdnjs.cloudflare.com/ajax/libs/spectre.css/0.5.3/spectre.min.css
```

**css.net**

```yaml
spectre_css: https://cdnjs.loli.net/ajax/libs/spectre.css/0.5.3/spectre.min.css
```

## Prism 1.15.0 & Prism Theme 1.0.1

https://github.com/PrismJS/prism/ https://github.com/PrismJS/prism-themes

**jsDelivr**

```yaml
theme: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@latestsource/lib/prism/prism-{theme-name}.css
line_number: https://cdn.jsdelivr.net/npm/prismjs@1.15.0/plugins/line-numbers/prism-line-numbers.min.css
```

**cdnjs**

```yaml
theme: https://cdnjs.cloudflare.com/ajax/libs/prism/1.15.0/themes/prism-{theme-name}.min.css
line_number: https://cdnjs.cloudflare.com/ajax/libs/prism/1.15.0/plugins/line-numbers/prism-line-numbers.min.css
```

**css.net**

```yaml
theme: https://cdnjs.loli.net/ajax/libs/prism/1.15.0/themes/prism-{theme-name}.min.css
line_number: https://cdnjs.loli.net/ajax/libs/prism/1.15.0/plugins/line-numbers/prism-line-numbers.min.css
```

## Vanilla-Lazyload 8.9.0

https://github.com/verlok/lazyload

**jsDelivr**

```yaml
lazyload: https://cdn.jsdelivr.net/npm/vanilla-lazyload@8.9.0
```

**cdnjs**

```yaml
lazyload: https://cdnjs.cloudflare.com/ajax/libs/vanilla-lazyload/8.9.0/lazyload.min.js
```

**css.net**

```yaml
lazyload: https://cdnjs.loli.net/ajax/libs/vanilla-lazyload/8.9.0/lazyload.min.js
```

## 不蒜子

https://busuanzi.ibruce.info

> 默认从不蒜子官方 CDN 加载

**jsDelivr**

```yaml
busuanzi: https://cdn.jsdelivr.net/gh/sukkaw/busuanzi@2.3/bsz.pure.mini.js
```

# PWA Manifest

如果你的站点启用了 HTTPS，并启用了 Service Worker，你就可以为你的站点启用 Progressive Web App（PWA）支持。
要启用 PWA 首先需要一个 `manifest.json` 文件。你可以在 [MDN 关于 Web App Manifest](https://developer.mozilla.org/en-US/docs/Web/Manifest) 的文档上找到相关资料。你还可以在 [Web App Minifest Generator](https://app-manifest.firebaseapp.com/) 上快速生成一个 `manifest.json`

将 `manifest.json` 放置在站点的 `source` 目录中，并在 `主题配置文件` 中找到 `pwa_manifest`，配置你的 `manifest.json` 的地址：

```yaml
head:
  ......
  pwa_manifest: path/to/manifest.json
```

# Open Search

「Suka」的本地搜索功能支持通过搜索串搜索，所以可以启用 Open Search。

> 你可以在 [MDN](https://developer.mozilla.org/en-US/docs/Web/OpenSearch) 上或者 [OpenSearch 的项目主页](https://github.com/dewitt/opensearch) 中了解更多关于 OpenSearch。

在这里提供了一份最基础的 Open Search 的定义文件以在大部分浏览器中启用 Open Search：

```xml
<?xml version="1.0" encoding="UTF-8"?>
<OpenSearchDescription xmlns="http://a9.com/-/spec/opensearch/1.1/">
    <ShortName>[[Your Site Name]</ShortName>
    <Description>[[Your Site Description]]</Description>
    <Url type="text/html" template="[[Your Search Page URL]]?s={searchTerms}" />
</OpenSearchDescription>
```

然后将文件保存为 `opensearch.xml` 后放置在站点的 `source` 目录中，并在 `主题配置文件` 中找到 `open_search`，配置你的 `opensearch.xml` 的地址：

```yaml
head:
  ......
  open_search: path/to/opensearch.xml
```
