---
title: 第三方服务
permalink: /service/
description: Verison 1.3.0
---

# 评论系统

「Suka」支持多达 8 种的评论系统，它们分别是 DISQUS（支持三种使用方式）、搜狐畅言、来必力、Gitment、Gitalk、Valine、WildFire 和 Facebook Comment。

它们分别对应的键值是 `disqus` `disqusjs` `disqus_proxy` `changyan` `livere` `gitment` `gitalk` `valine` `wildfire`，将你想启用的评论系统的键值填写在 `use` 中，然后找到对应评论系统的配置位置。

## DISQUS

https://disqus.com

「Suka」提供中了三种使用 Disqus 的方式。

**常规模式**

文章页面将会直接加载 Disqus。

```yaml
comment:
  use: disqus
  disqus:
    shortname: # 你的 Disqus shortname
```

如果你不知道你的 `shortname` 是什么，请访问 Disqus 中你的站点的管理后台，此时你浏览器地址栏中的域名应形如是 `example.disqus.com`，`example` 就是你的 `shortname`。

**Click 模式**

这个模式下，浏览器会通过 AJAX 的方式测试 Disqus 能否连通。如果能连通则自动加载 Disqus，如果不能则会显示一个按钮 `阅读评论（请确保 disqus 可以正常加载）`，点击该按钮以后会再次加载 Disqus。

> 这项设置有助于大大改善在 **公开、平等、有序 的 网络审查 地区** 下的浏览者的体验。

```yaml
comment:
  use: disqus_click
  disqus:
    shortname: # 你的 Disqus shortname
```

## DisqusJS

https://github.com/SukkaW/DisqusJS

这个模式下，需要用户配置一个 `https://disqus.com/api/3.0/` 的反向代理，在评论基本模式中使用反代 API 获取评论内容（但是基本模式下仍然不能发表评论）。同时提供一个按钮切换到 Disqus 完整模式下以发表评论。

> 这项设置有助于在 **公开、平等、有序 的 网络审查 地区** 下的浏览者正常阅读评论内容。

```yaml
comment:
  use: disqusjs
  ......
  disqusjs:
    shortname:
    siteName:
    api:
    apikey:
    admin:
    adminLabel:
```

具体配置请阅读 https://github.com/SukkaW/DisqusJS

## 搜狐畅言

http://changyan.kuaizhan.com/

```yaml
comment:
  use: changyan
  ......
  changyan:
    appid: # 畅言的 APPID
    conf: # 畅言的 CONF
    thread_key_type: path # 可选 id 或 path
```

在畅言的后台找到安装方式，畅言应该提供了下述两个代码，你可以从其中找到你的 APPID 和 CONF：

```html
<!-- 畅言公共 js 代码 start -->
<script id="cy_cmt_num" src="https://changyan.sohu.com/upload/plugins/plugins.list.count.js?clientId={这个就是你的 APPID}">
</script>
<!-- 畅言公共 js 代码 end -->
```
```html
<script>
(function(){
var appid = '{这个就是你的 APPID}';
var conf = '{这个就是你的 CONF}';
var width = window.innerWidth || document.documentElement.clientWidth;
if (width < 960) {
window.document.write('<script id="changyan_mobile_js" charset="utf-8" src="https://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>'); } else { var loadJs=function(d,a){var c=document.getElementsByTagName("head")[0]||document.head||document.documentElement;var b=document.createElement("script");b.setAttribute("type","text/javascript");b.setAttribute("charset","UTF-8");b.setAttribute("src",d);if(typeof a==="function"){if(window.attachEvent){b.onreadystatechange=function(){var e=b.readyState;if(e==="loaded"||e==="complete"){b.onreadystatechange=null;a()}}}else{b.onload=a}}c.appendChild(b)};loadJs("https://changyan.sohu.com/upload/changyan.js",function(){window.changyan.api.config({appid:appid,conf:conf})}); } })();
</script>
```

请注意，搜狐畅言提供两种文章的区分方式，`id` 和 `path`（文章目录）。虽然在每次执行 `hexo g` 时每一篇文章都会被赋予一个 `page.id` 变量，但不唯一（该 id 和文章的对应关系存放在 Hexo Database 中，每次 `hexo clean` 时 Database 会被删除），所以如果使用 id 区分文章，你需要在每篇文章的 Front-Matter 中手动添加 id。所以我们推荐使用 `path`，除非你的站点的文章链接经常变动。

## 来必力 (livere)

https://livere.com/

「Suka」主题内置了 `city_version` 的来必力，该版本的来必力是免费的。

```yaml
comment:
  use: livere
  ......
  livere:
    data_uid: # 你的来必力 UID，可以在来必力后台获取
```

## Gitment | Gitalk

https://github.com/imsun/gitment
https://github.com/gitalk/gitalk

```yaml
comment:
  use: gitalk # 或者 gitment
  ......
  gitment:
    repo: # 存放评论的 issue 所在的 repo
    owner: # 持有该 repo 的 GitHub user
    client_id: # GitHub Client ID
    client_secret: # GitHub Client Secret
  gitalk:
    repo: # 存放评论的 issue 所在的 repo
    owner: # 持有该 repo 的 GitHub user
    client_id: # GitHub Client ID
    client_secret: # GitHub Client Secret
```

请仔细阅读两种评论系统的文档、教程，以知晓如何启用、上述参数。一般的，你需要 [创建一个新的 GitHub Application](https://github.com/settings/applications/new)

## Valine

https://valine.js.org

```yaml
comment:
  use: valine
  ......
  valine:
    leancloud_appId: # leancloud application app id
    leancloud_appKey: # leancloud application app key
    notify: false # valine mail notify (true/false) https://github.com/xCss/Valine/wiki
    verify: false # valine verify code (true/false)
    pageSize: 10 # comment list page size
    avatar: identicon # gravatar style https://valine.js.org/#/avatar
    lang: zh-cn # i18n
    placeholder: Just go go # valine comment input placeholder(like: Please leave your footprints )
    guest_info: nick,mail,link #valine comment header info
```

请仔细阅读 [Valine 的文档](https://valine.js.org) 以知晓如何启用、填充上述上述参数。一般的，你需要一个 LeanCloud 的账号。

## WildFire

https://wildfire.js.org

```yaml
comment:
  use: wildfire
  ......
  wildfire:
    database_provider: firebase # firebase or wilddog
    wilddog_site_id:
    firebase_api_key:
    firebase_auth_domain:
    firebase_database_url:
    firebase_project_id:
    firebase_storage_bucket:
    firebase_messaging_sender_id:
    theme: light # light or dark
    locale: en # en or zh-CN
```

请仔细阅读 [WildFire 的文档](https://wildfire.js.org) 以知晓如何启用、填充上述上述参数。

## Facebook

https://developers.facebook.com/docs/plugins/comments/

```yaml
comment:
  use: facebook
  facebook:
    colorschme: light # light | dark
    numposts: 10
    orderby: social # social | reverse_time | time
    # You can only fill in one of them below when configuring.
    # If you fill in both of them then appid method will be used.
    # Read facebook developer documents for more info:
    # https://developers.facebook.com/docs/plugins/comments/#moderation-setup-instructions
    admin_fb_appid:
    admin_fb_username: # Currently "Suka" don't support more than one admin. You can open a new issue if you really need one.
```

请仔细阅读 [Facebook Comment Social Plugin](https://developers.facebook.com/docs/plugins/comments/#settings) 以知晓如何启用、填充上述上述参数。

# 站点访问统计

```yaml
analytics:
  google_site_id:
  gtags_site_id:
  baidu_site_id:
  cnzz_site_id:
```

上面分别对应四种站点访问统计方式：

- Google 传统的 `analytics.js` 统计方式
- Google 新的 `Tag Manager` 统计方式。这种方式需要加载更大更多的文件。
- 百度统计
- CNZZ 统计

## Google

https://analytics.google.com

登陆 Google Analytics 管理后台，找到你的站点 - 媒体资源设置，找到 `跟踪 ID`，一般是以 `UA-` 开头。
根据你想使用的方式，将 `跟踪 ID` 填写到 `google_site_id` 或 `gtags_site_id` 中。

## 百度统计

http://tongji.baidu.com

登陆百度统计后台，定位到代码获取页面，应该会提供类似如下形式的代码：

```html
<script>
    var _hmt = _hmt || [];
    (function() {var hm = document.createElement('script');
    hm.src = 'https://hm.baidu.com/hm.js?{这一长串就是你的 ID}';
    var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
```

把那一长串 ID 设置在 `baidu_site_id` 中。

## CNZZ

CNZZ 已经被友盟（阿里）收购，下面是最新的官网地址

https://web.umeng.com

登陆 CNZZ 后台，找到代码安装页面，应该会提供类似如下形式的代码：

```html
<script src="//s95.cnzz.com/z_stat.php?id=<%= theme.analytics.cnzz_site_id %>&web_id={你的站点 ID}" language="JavaScript"></script>
```

把那一长串 ID 设置在 `cnzz_site_id` 中。

> 默认脚本生成的内容会产生“站长统计”几个字，「Suka」将其隐藏了起来。

## 腾讯分析

http://ta.qq.com

> 腾讯已不再维护该服务，推荐使用腾讯移动分析

登录腾讯分析控制台，登录并获取分析的 ID，填入 `tencent_site_id` 中。

## 腾讯移动分析

http://mta.qq.com

登录腾讯分析控制台，登录并获取 `tencent_mta` 的 ID，填入 `tencent_mta_id` 中。

# 不蒜子

https://busuanzi.ibruce.info

- enable: 是否启用不蒜子计数
- site_uv: 站点访客统计
  - enable: 是否在页面上展示站点访客统计数目
  - before: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - after: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - divider: 站点访客统计展示 与 之后的内容之间的分隔符，支持 HTML，如果你不需要的话可以直接留空配置
  - offset: 设置 不蒜子 的偏移量（如果你不知道这是干什么用的就保持为 0）
- site_pv: 站点访问次数统计
  - enable: 是否在页面上展示站点访问次数数目
  - before: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - after: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - divider: 站点访问次数展示 与 之后的内容之间的分隔符，支持 HTML，如果你不需要的话可以直接留空配置
  - offset: 设置 不蒜子 的偏移量（如果你不知道这是干什么用的就保持为 0）
- post_pv: 每篇文章的访问次数统计
  - enable: 是否在文章页面上展示页面访问次数数目
  - before: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - after: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置

> 如果你同时将 `site_uv.enable` `site_pv.enable` `post_pv.enable` 设置为 `false`，不蒜子将仅作记录而不会在页面上显示。
> 你可以使用在 `before` `after` 中使用 HTML Tag，比如用 `<br>` 换行。
> 每个页面的不蒜子偏移量请在页面的 `front-matter` 中设置，详见 [开始创作 - Front Matter](https://theme-suka.skk.moe/docs/compose/#Front-Matter)。

# Valine 计数器（实验性）

> 这项功能必须搭配 valine 评论系统使用

- enable: 是否启用 valine 计数
- site_pv: 站点访问次数统计
  - enable: 是否在页面上展示站点访问次数数目
  - before: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - after: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - divider: 站点访问次数展示 与 之后的内容之间的分隔符，支持 HTML，如果你不需要的话可以直接留空配置
- index_post_pv: 在文章列表页面展示每篇文章的访问次数
  - enable: 是否在文章列表页面展示每篇文章的访问次数
  - before: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - after: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
- post_pv: 每篇文章的访问次数统计
  - enable: 是否在文章页面上展示页面访问次数数目
  - before: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置
  - after: 统计数目之前显示的内容，支持 HTML，如果你不需要的话可以直接留空配置