---
title: 主题配置
permalink: /config/
---

定位到 `主题配置文件`

# 站点信息配置

## Head

配置生成的 HTML 文件的头部信息。

**favicon**

- ico: 网站的 favicon，要求是 ico 格式
- small: 网站的 favicon，要求是 png 格式、16x16 大小
- medium: 网站的 favicon，要求是 png 格式、32x32 大小
- apple_touch_icon: 将会显示在 iOS 上，要求是 png 格式，大小在 128px 到 192px 之间
- safari_pinned_tab: 将会显示在 MBP Touchbar 上，最好是 svg 格式

> 你可以在 [这里](https://realfavicongenerator.net) 生成上述所需的 favicon。如果你没有上述 favicon 中的一种或其中几种，只需要将对应配置留空即可。

**color**

将会决定页面在 Android Chrome 上地址栏的颜色和 Safari 工具栏的颜色。

> 如果你没有设置这一项，同时又设置了接下来的背景颜色，那么 Android Chrome 地址栏的颜色会被 fallback 到你设置的页面背景颜色。

**pwa_manifest**

请参阅 [进阶使用 - PWA Manifest](/docs/expert/#PWA-Manifest)

**open_search**

请参阅 [进阶使用 - Open Search](/docs/expert/#Open-Search)

**keywords**

站点的关键词，使用 `,` 分开；最后一个关键词后面不需要带 `,`。

**site_verification**

向搜索引擎验证你对站点的所有权，用于向搜索引擎提交 sitemap 和管理站点被搜索引擎收录的情况。

- google: Google Search Console 站点所有权验证
- baidu: 百度站长平台站点所有权验证

获取 site_verification 键值的方法：

1. 登录搜索引擎后台，添加站点后，验证所有权时选择 `HTML 标记` 方式。搜索引擎接下来会告诉你把类似于一串下面的东西添加到你的页面中：

```html
<meta name="xxxx-site-verification" content="xxxxxxxxxxxxxxxx" />
```

2. 将 `xxxxxxxxxxxxxxxx` 字符串复制出来，填入 `主题配置文件` 中对应搜索引擎的设置中，站点重新部署以后即可通过验证。

## Footer

**copyright_since**

用于设置站点成立的时间，将在底部显示。例如，如果你设置了 2015，那么 footer 就会显示类似于这样的内容： `© 2015 - 2018`。

如果这个值为空，那么 footer 只会显示现在的年份；如果站点成立时间就是今年，footer 也只显示现在的年份。

**custom_text**

你可以在页面的 Footer 指定你想显示的文字，支持 HTML 标签，默认为空。
以下是一些常见的 Footer Text 配置：

ICP 备案号

```yaml
footer:
  ......
  custom_text: '<a href="http://www.miitbeian.gov.cn" rel="nofollow">某ICP备xxxxxxxx号-x</a>'
```

Hosted on Coding Pages

```yaml
footer:
  .......
  cutom_text: 'Hosted on <a href="https://pages.coding.me" rel="nofollow noopener noreferrer">Coding Pages</a>'
```

多行文字

```yaml
footer:
  .......
  cutom_text:
    - '<a href="http://www.miitbeian.gov.cn" rel="nofollow">某ICP备xxxxxxxx号-x</a>'
    - 'Hosted on <a href="https://pages.coding.me" rel="nofollow noopener noreferrer">Coding Pages</a>'
```

# 客制化配置

## UIUX

**slogan**

一小段介绍性文字作为标语，会显示在页面头部中；支持多行文字。

单行标语配置范例

```yaml
uiux:
  # Muilt line slogan is supported.
  slogan: Hi, nice to meet you.
```

多行标语配置范例

```yaml
uiux:
  # Muilt line slogan is supported.
  slogan: 
   - Hi, nice to meet you.
   - This is my Blog
```

**link_color**

超链接颜色

**primary_color**

主题主要颜色；一些按钮和组件会使用这个颜色

**bg_color**

页面的背景颜色

## img

**avatar**

设置你的头像的地址

# 菜单设置

## nav

设置显示在页面头部的 Navbar 的链接。

**home**

主页，设置 `use` 为 true 以启用。

**archive**

归档，设置 `use` 为 true 以启用。

**rss**

RSS，设置 `use` 为 true 以启用；使用 `hexo-generator-feed` 插件生成 RSS 后可以启用。

**search**

搜索，设置 `use` 为 true 以启用；`link` 为搜索页面的地址。

**pages**

设置独立页面的入口，默认为空。

```yaml
    Name:
        link: "/about/"
```

上述是一个独立页面入口的单位。多个独立页面入口只需重复上述配置即可。

其中 `Name` 是独立页面的名称，`link` 是独立页面的链接。

## sns_share

用于定义分享菜单中的项目， `false` 的项将不会显示在分享菜单中。

「Suka」支持文章或站点分享到下述社交平台：

- weibo
- facebook
- twitter
- telegram
- googleplus
- linkedin
- qq

## qrcode

输出当前文章的 URL 的二维码，显示在分享菜单中。

> 你不需要再额外安装二维码生成插件，「Suka」内置了二维码生成功能。

**index_share**

是否显示在首页的分享菜单中。可选 `true` `false`

**post_share**

是否显示在文章的分享菜单中。可选 `true` `false`

# 文章信息设置

## entry_excerpt

我们推荐在文章中使用 `<!-- more -->` 来精确截断文章作为摘要。
如果不想精确截断文章，你可以在此处设置截断字数，从文章开头开始这一字数的内容会作为摘要。

## expire

设置为 `true` 以后，如果你的文章长时间没有更新过，访客在文章尾部的地方将会看到 `这篇文章最后更新于 xx 天前，文中内容，文中所描述的信息可能已发生改变` 的提示信息

## share

是否在文章页面中启用分享菜单。

## license

你可以设置你的文章的版权的协议，将会显示在文章结尾；支持 HTML Tag。版权中会包含 本文作者、本文链接和协议 等信息。

比如，你可以这样设置 CC 知识共享协议：

```yaml
post:
  ......
  license: '本文使用 <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">署名-非商业性使用-相同方式共享 4.0 国际 (CC BY-NC-SA 4.0)</a> 协议'
```

你也可以在文章的 `Front-Matter` 中覆盖这一设置，从而为你的部分文章设置独立的、不同的协议信息，详情可见 [开始创作 - Front Matter](#)

# toc

设置文章的目录（Table of Content）。

**enable**

是否启用。

> 如果你想在部分文章中禁用 ToC，你可以在 `Front-Matter` 中覆盖这一设置，详情可见 [开始创作 - Front Matter](#)

**line_number**

是否在 ToC 中显示行号。

----

# 「Suka」内置插件设置

定位到 `站点配置文件`

## 本地搜索

```yaml
suka_theme:
  search:
    path: search.json # 生成索引文件的位置
    field: post # Page | Post | All
```

`field` 设置搜索索引文件包含的范围，可以仅生成独立页面或文章的索引，也可以同时生成包含两者的索引。

## 代码高亮

```yaml
suka_theme:
  .......
  prism:
    line_number: true # 是否启用行号
    theme: default # 主题
```

「Suka」支持以下的 Prism 代码高亮主题

- a11y-dark
- atom-dark
- base16-ateliersulphurpool.light
- cb
- coy
- darcula
- dark
- default
- duotone-dark
- duotone-earth
- duotone-forest
- duotone-light
- duotone-sea
- duotone-space
- funky
- ghcolors
- hopscotch
- okaidia
- pojoaque
- solarizedlight
- tomorrow
- twilight
- vs
- xonokai

> 如果你在 `vendors` 中有关配置里为 Prism 设置了 CDN，将会覆盖这里的 theme 的设定。
