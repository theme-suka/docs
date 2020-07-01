---
title: 内置插件
permalink: /plugin/
description: Verison 1.3.0
---

# 搜索

「Suka」主题支持三种搜索引擎，分别是本地搜索、Google 搜索和 Swiftype。

在设置搜索前，请参考 [独立页面](/docs/pages/) 相关文档、新建搜索页面。

## 本地搜索

在 `主题配置文件` 中设置使用 本地搜索 作为站内搜索引擎。

```yaml
search:
  use: local
```

定位到 `站点配置文件`，启用本地搜索插件：

```yaml
suka_theme:
  search:
    path: search.json # 生成索引文件的位置
    field: post # Page | Post | All
```

`field` 设置搜索索引文件包含的范围，可以仅生成文章或独立页面的索引，也可以同时生成包含两者的索引。

## Google 搜索

在 `主题配置文件` 中设置使用 Google 作为站内搜索引擎即可。

```yaml
search:
  use: google
```

## Swiftype 搜索

https://swiftype.com

注册 Swiftype，创建一个 `Site Search`，配置你的站点信息以后，Swiftype 会开始索引你的站点。当索引完成后，在页面中找到 `Install Search`，Switype 会给你一段代码，在其中找到类似于 `_st('install','*****','2.0.0');`，`*****` 即为你的 `swiftype_key`，

然后在 `主题配置文件` 中配置 Swiftype：

```yaml
search:
  use: swiftype
  swiftype_key: # 你的 swiftype_key
```

# 代码高亮

「Suka」主题支持四种代码高亮引擎：Hexo 内置的 `highlight.js`、「Suka」内置的 Prism 、Hanabi 和 Google Code Prettify。
你一次只能启用其中一种代码高亮以避免问题。
当你切换代码高亮时，需要执行一次 `hexo clean` 以清除缓存。

> 如果你在 `vendors` 中有关配置里为对应代码高亮的主题设置了 CDN，将会覆盖这里对代码高亮主题的设定。

## Hexo Highlight

首先你需要在 `主题配置文件` 中禁用其它的代码高亮选项，然后将 `站点配置文件` 中启用 highlight 并禁用 Prism：

```yaml
highlight:
  enable: true
......
suka_theme:
  ......
  prism:
    enable: false
```

然后在 `主题配置文件` 中配置 Hexo Highlight 的代码高亮主题：

```yaml
highlight:
  theme: # 代码高亮主题名称
```

「Suka」内置了以下 83 种 Highlight.js 代码高亮主题：

```
agate
androidstudio
an-old-hope
arduino-light
arta
ascetic
atelier-cave-dark
atelier-cave-light
atelier-dune-dark
atelier-dune-light
atelier-estuary-dark
atelier-estuary-light
atelier-forest-dark
atelier-forest-light
atelier-heath-dark
atelier-heath-light
atelier-lakeside-dark
atelier-lakeside-light
atelier-plateau-dark
atelier-plateau-light
atelier-savanna-dark
atelier-savanna-light
atelier-seaside-dark
atelier-seaside-light
atelier-sulphurpool-dark
atelier-sulphurpool-light
atom-one-dark
atom-one-light
brown-paper
codepen-embed
color-brewer
darcula
dark
darkula
default
docco
dracula
far
foundation
github-gist
github
googlecode
grayscale
gruvbox-dark
gruvbox-light
hopscotch
hybrid
idea
ir-black
kimbie.dark
kimbie.light
lightfair
magula
mono-blue
monokai-sublime
monokai
obsidian
ocean
paraiso-dark
paraiso-light
pojoaque
purebasic
qtcreator_dark
qtcreator_light
railscasts
rainbow
routeros
school-book
shades-of-purple
solarized-dark
solarized-light
solarized-white
sunburst
tomorrow-night-blue
tomorrow-night-bright
tomorrow-night-eighties
tomorrow-night
tomorrow
vs
vs2015
xcode
xt256
zenburn
```

## Hanabi

首先你需要在 `主题配置文件` 中禁用其它的代码高亮选项，然后将 `站点配置文件` 中禁用 highlight 和 Prism：

```yaml
highlight:
  enable: false
  line_number: false
  auto_detect: false
  tab_replace: false
......
suka_theme:
  ......
  prism:
    enable: false
```

然后在 `主题配置文件` 中启用 Hanabi：

```yaml
hanabi:
  enable: true
```

## Prism

首先你需要在 `主题配置文件` 中禁用其它的代码高亮选项，然后将 `站点配置文件` 中禁用 highlight，并启用 Prism：

```yaml
highlight:
  enable: false
  line_number: false
  auto_detect: false
  tab_replace: false
......
suka_theme:
  ......
  prism:
    enable: true
    line_number: true # 是否启用行号
    theme: default # 主题
```

「Suka」支持以下 24 种 Prism 代码高亮主题：

```
a11y-dark
atom-dark
base16-ateliersulphurpool.light
cb
coy
darcula
dark
default
duotone-dark
duotone-earth
duotone-forest
duotone-light
duotone-sea
duotone-space
funky
ghcolors
hopscotch
okaidia
pojoaque
solarizedlight
tomorrow
twilight
vs
xonokai
```

## Google Code Prettify

首先你需要在 `主题配置文件` 中禁用其它的代码高亮选项，然后将 `站点配置文件` 中禁用 highlight 和 Prism：

```yaml
highlight:
  enable: false
  line_number: false
  auto_detect: false
  tab_replace: false
......
suka_theme:
  ......
  prism:
    enable: false
```

然后在 `主题配置文件` 中启用 Google Code Prettify：

```yaml
prettify:
  enable: true
  linenumber: true # 是否启用行号，建议启用
  theme: # 代码高亮主题名称
```

「Suka」内置了以下 31 种 Google Code Prettify 代码高亮主题：

```
atelier-cave-dark
atelier-cave-light
atelier-dune-dark
atelier-dune-light
atelier-estuary-dark
atelier-estuary-light
atelier-forest-dark
atelier-forest-light
atelier-heath-dark
atelier-heath-light
atelier-lakeside-dark
atelier-lakeside-light
atelier-plateau-dark
atelier-plateau-light
atelier-savanna-dark
atelier-savanna-light
atelier-seaside-dark
atelier-seaside-light
atelier-sulphurpool-dark
atelier-sulphurpool-light
github-v2
github
hemisu-dark
hemisu-light
tomorrow-night-blue
tomorrow-night-bright
tomorrow-night-eighties
tomorrow-night
tomorrow
tranquil-heart
vibrant-ink
```
