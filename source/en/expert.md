---
title: Advanced Using
permalink: /en/expert/
description: Don't try what you about to see at home. These are for experts.
---

> "Suka" not only provides basic configuration or third party service but also more advanced settings, making "Suka" more customizable. But attention, these settings may cause "Suka" not work functionally. Take care and make sure you have konwed what they means.

# Using Git with Hexo

As we said at the [Strat Using](/docs/en/), we use `_config.example.yml` to avoid conflict in git.

We also add `_config.yml` to `.gitignore` to prevent our theme config pushing into theme repo. However, it will cause your `theme config` not be pushed. You need to remove `_config.yml` in `.gitignore`. If you do that, there may be some conflict when you are uing `git pull` to upgrade "Suka".

# Add custom code

If you want to add custom code, like font-face or statistical code (such as Piwik Analytics) before `</head>` or something before `</body>`, you need to create a folder named `_data` in the `source` folder in your site directory. Then create files called `head.yml` and `footer.yml`. The code you import to `head.yml` will add before `</head>`, `footer.yml` will add before `</body>`.

The format of those yaml file:

```yaml
custom_head_1: '<!-- Single line Custom Code -->'
custom_head_2:
  - '<!-- Muilt line Custom Code -->'
  - '<!-- Line 2 -->'
  - '<!-- Line 3 -->'
custom_head_3:
  - '<!-- Another way to import Single line Custom Code -->'
```

Then they will be rendered as:

```html
<!-- Single line Custom Code -->
<!-- Muilt line Custom Code --><!-- Line 2 --><!-- Line 3 -->
<!-- Another way to import Single line Custom Code -->
```

# CDN

We will provide three kinds configuration of public CDN below:

- jsDelivr: works fast in everywhere even in China
- cdnjs: works fast in everywhere except China
- css.net: works fast in China and fine in other places

Of course you can also use your own CDN.
If you don't want to use CDN (load files directily from your site), simply leave theme blank.

Find `vendors:` in `theme config`

## Suka Theme 1.3.0

https://theme-suka.skk.moe https://github.com/SukkaW/hexo-theme-suka

**jsDelivr**

```yaml
style_css: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.3.0/source/css/style.min.css
local_search_js: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.3.0/source/js/local-search.min.js
hanabi_browser_js: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.3.0/source/js/hanabi-browser.min.js
highlight_theme: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.3.0/source/css/highlight/[theme-name].min.css
gallery_css: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.3.0/source/css/gallery.min.css
gallery_js: https://cdn.jsdelivr.net/gh/sukkaw/hexo-theme-suka@1.3.0/source/js/gallery.min.js
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

## Prism 1.15.0 & Prism Theme 1.11

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

## Busuanzi

https://busuanzi.ibruce.info

> If you leave it blank, it will load from busuanzi official CDN which only works in China.

## Hanabi

https://github.com/egoist/hanabi

**jsDelivr**

```yaml
hanabi: https://cdn.jsdelivr.net/npm/hanabi@0.4.0
```

## Prettify 0.1.0

> ATTENTION! It isn't the url for `run_prettify.js`!!

## Prettify Theme

**jsDelivr**

```yaml
prisim_theme: https://cdn.jsdelivr.net/npm/color-themes-for-google-code-prettify@2.0.4/dist/themes/{prettify-theme-name}.min.css
```

**jsDelivr**

```yaml
busuanzi: https://cdn.jsdelivr.net/gh/sukkaw/busuanzi@2.3/bsz.pure.mini.js
```

# PWA Manifest

If you have already enabled HTTPS to your site, and add Service Worker to your site, you can make your site a `Progressive Web App` PWA.

You should before make your site a PWA. Learn [What is Web App Manifest at MDN](https://developer.mozilla.org/en-US/docs/Web/Manifest). You can also generate a `manifest.json` online at [Web App Minifest Generator](https://app-manifest.firebaseapp.com/).

Put `manifest.json` to your `source` directory in site directory, then find `pwa_manifest` in "Head Information" of `theme config`:

```yaml
head:
  ......
  pwa_manifest: path/to/manifest.json
```

# Open Search

"Suka" built in local search support search query, which means you can enable Open Search for your site.

> Learn what is Open Search at [MDN](https://developer.mozilla.org/en-US/docs/Web/OpenSearch) and [OpenSearch Official Repo](https://github.com/dewitt/opensearch)

Here are a basic Open Search Description File Template:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<OpenSearchDescription xmlns="http://a9.com/-/spec/opensearch/1.1/">
    <ShortName>[[Your Site Name]</ShortName>
    <Description>[[Your Site Description]]</Description>
    <Url type="text/html" template="[[Your Search Page URL]]?s={searchTerms}" />
</OpenSearchDescription>
```

Fill in template and save as `opensearch.xml` to your `source` directory in site directory. Then find `open_search` in in "Head Information" of `theme config`, fill in with the address of your `opensearch.xml`

```yaml
head:
  ......
  open_search: path/to/opensearch.xml
```
