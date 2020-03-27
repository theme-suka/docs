---
title: Built-in Plugins
permalink: /en/plugin/
description: Verison 1.3.0
---

# Search

"Suka" theme supports three search engines: local search, Google search, and Swiftype.

Before setting up a search engine, refer to the [Pages](/docs/en/pages/) and create a new search page.

## Local Search

In `theme config`, set up the use of local search as the site search engine.

```yaml
search:
  use: local
```

Edit the `site config` to enable the local search plugin:

```yaml
suka_theme:
  search:
    path: search.json # the location of the index file
    field: post # Page | Post | All
```

`field` sets the scope of the search index file to include.You can generate index for posts or pages only, or both.

## Google Search

In `theme config`, set up the use of Google as the site search engine.

```yaml
search:
  use: google
```

## Swiftype

https://swiftype.com

Register Swiftype, create a `Site Search`, and after configuring your Site, Swiftype will begin indexing your Site. When the index is complete, find `Install Search`, Switype will show you a code that looks like `_st('install','*****','2.0.0');`, `*****` is your `swiftype_key`.

In `theme config`, set up the use of Swiftype as the site search engine.

```yaml
search:
  use: swiftype
  swiftype_key: # your swiftype_key
```

# Code Highlighting

"Suka" theme supports four Code highlighting engines: Hexo's built-in `highlight. Js`, "Suka" built-in Prism, Hanabi, and Google Code Prettify.

You can only enable one type of code highlighting at a time to avoid problems.

When you switch code highlights, run `hexo clean` once to clear the cache.

> If you set CDN in the `vendors` configuration for the theme to be highlighted in the code, it will override the configuration here. 

## Hexo Highlight

First you need to disable other code highlighting options in `theme config`, then enable highlight and disable Prism in the `site config`:

```yaml
highlight:
  enable: true
......
suka_theme:
  ......
  prism:
    enable: false
```

Then configure the Hexo code highlighting theme in `theme config`:

```yaml
highlight:
  theme: # code highlighting theme
```

"Suka" has built in following 83 Highlight.js themes:

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

First you need to disable other code highlighting options in `theme config`, then disable highlight and Prism in the `site config`:

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

Then configure Hanabi code highlighting theme in `theme config`:

```yaml
hanabi:
  enable: true
```

## Prism

First you need to disable other code highlighting options in `theme config`, then enable Prism and disable highlight in the `site config`:

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
    line_number: true # whether enable displaying line numbers
    theme: default # theme
```

"Suka" supports following 24 Prism themes:

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

First you need to disable other code highlighting options in `theme config`, then disable highlight and Prism in the `site config`:

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

Then configure Google Code Pretty in `theme config`:

```yaml
prettify:
  enable: true
  linenumber: true # whether enable displaying line numbers("true" is recommended)
  theme: # Theme
```

"Suka" has built in following 31 Google Code Prettify themes:

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
