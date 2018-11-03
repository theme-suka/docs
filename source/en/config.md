---
title: Theme Config
permalink: /en/config/
description: Verison 1.3.0
---

Located to `theme config`.

# Site information

## Head

Configure the `<head>` in HTML.

**favicon**

- ico: path to an ico file
- small: path to a 16x16 size png file
- medium: path to a 32x32 size png file
- apple_touch_icon: path to a png file, size between 128x128 and 192x192
- large: path to a 192x192 size png file
- safari_pinned_tab: path to a svg file

You can generate those needed favicon [here](https://realfavicongenerator.net). If you don't have one or more kinds of favicon mentioned above, you can simply leave it blank.

**color**

It will change the color of visitor's Android Chrome Appbar Color and Safari Toolbar.

> If you leave this option blank but configure the site background color below, the toolbar color will fallback to the background color you configured.

**pwa_manifest**

Read [Expert - PWA Manifest](/docs/en/expert/#PWA-Manifest) for more information.

**open_search**

Read [Expert - Open Search](/docs/en/expert/#Open-Search) for more information.

**keywords**

The keywords of your site, split with `,`.

**site_verification**

You can verify your site at search engine console or webmaster tools.

- google: Google Webmaster Verification
- baidu: Baidu Search Console Verification

You can get your site_verification value by doing:

After logged in the console of search engine, choose to use `<meta>` tag to finish the verification. Then console will give you something like:

```
<meta name="xxxx-site-verification" content="xxxxxxxxxxxxxxxxxxxxxxxxxxxx" />
```

The things like xxxxxxxxxxxxxxxxxxxxxxxxxxxx is your site_verification value.

> If you use the google anylytics for your site by configure as [Third Party Services - Analytics](https://theme-suka.skk.moe/docs/en/service/#Google) mentioned, you can pass Google Webmaster Verification without any other action.

## Footer

**copyright_since**

Configure when your site start, which will show at the footer of your page. For instance, if you set it as `2015`, you will get something like `© 2015 - 2018` in your footer.

If you leave it blank, there will be only current year in footer. Also, if your site start in current year, it will only show current year either.

**custom_text**

You can configure the text you want to show at footer here, HTML Tag is supported.

For Instance, if you run your site in China and you already have a valid ICP License, you can configure it as:

```yaml
footer:
  ......
  custom_text: '<a href="http://www.miitbeian.gov.cn" rel="nofollow">某ICP备xxxxxxxx号-x</a>'
```

Another example, you host your site on Coding Pages. To avoid the ad redirect page, you can configure it as:


```yaml
footer:
  .......
  cutom_text: 'Hosted on <a href="https://pages.coding.me" rel="nofollow noopener noreferrer">Coding Pages</a>'
```

You can add muilt line text by adding array here:

```yaml
footer:
  .......
  cutom_text:
    - '<a href="http://www.miitbeian.gov.cn" rel="nofollow">某ICP备xxxxxxxx号-x</a>'
    - 'Hosted on <a href="https://pages.coding.me" rel="nofollow noopener noreferrer">Coding Pages</a>'
```

# Custom Configuration

## UIUX

**slogan**

It will show at your site header. Muilt line text is supported.

An example for one line slogan:

```yaml
uiux:
  # Muilt line slogan is supported.
  slogan: Hi, nice to meet you.
```

An example for muilt line slogan:


```yaml
uiux:
  # Muilt line slogan is supported.
  slogan: 
   - Hi, nice to meet you.
   - This is my Blog
```

**link_color**

The color of hyper_link color

**primary_color**

The primary color of the theme, will be used at some button components.

**bg_color**

The background color.


## img

**avatar**

Path to your avatar.

# Menu Configuration

## nav

Configure the link which will be show at header.

**Home**

A link to the home of your site. Set `use: true` to enable it.

**Archives**

A link to the archive pages of your site. Set `use: true` to enable it.

**rss**

After your installation and configuration of `hexo-generator-feed` plugin, you can set `use: true` to enable it.

**search**

Set `use: true` to enable it, and `links` with the url of your search page.

**pages**

Some other configuration of your pages' entry.

```yaml
    Name:
        link: "/about/"
```

It is a unit of an entry to pages. You can add muilt entries for your other pages.


## sns_share

Ddefined the menu items which will be shown in share menu.

"Suka" support to share your site or posts to those socail media:

- weibo
- facebook
- twitter
- telegram
- googleplus
- linkedin
- qq

## qrcode

Output qrcode of current page to share menu.

> You don't need to install `hexo-helper-qrcode` plugin as "Suka" Theme has already built in a qrcode generate plugin.

**index_share**

Whether to show qrcode in share menu for site, `true` or `false`.

**post_share**

Whether to show qrcode in share menu for posts & pages, `true` or `false`.

# Post information

## entry_excerpt

You should always use `<!-- more -->` to cut your post more accurately. If you don't have `<!-- more -->` in some posts the home page outputs the character length of the digest you configured here.

## expire

When you set it true, visitor can see some notify like `This article was last updated on %s days ago, and the information described in the article may have changed.` at the end of your post which hasn't been modified for more than 90 days.

## share

Enable share menu for posts and pages or not.

## license

You can configure the copyrights of your posts here, which will be shown at the end of your post; HTML Tag is supported. The license will includes author, permalinks and your copyright.

For instance, you can configure Creative Commons as:

```yaml
post:
  ......
  license: 'The page is under<a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">CC BY-NC-SA 4.0 International</a>'
```

You can also override the configuration for some specific posts by adding front-matter, see [Compose - Front Matter](https://theme-suka.skk.moe/docs/en/compose/#Front-Matter) for more details.

# toc

Configuration for Table of Content

**enable**

Enable it or not.

> If you want override the configuration for some specific posts you can add the related front-matter, see [Compose - Front Matter](https://theme-suka.skk.moe/docs/en/compose/#Front-Matter) for more details.

**line_number**

Enable line number for ToC or not.
