---
title: Third Party Services
permalink: /en/service/
description: Verison 1.3.0
---

# Comment Systems

"Suka" supports up to 8 Comment systems: DISQUS (three ways are provided), Sohu Changyan, Livere, Gitment, Gitalk, Valine, WildFire, and Facebook Comment.

Their key values are `disqus` `disqusjs` `disqus_proxy` `changyan` `livere` `gitment` `gitalk` `valine` `wildfire`. Configure `use` key value as which comment system you wants. Then skip to its configuration below.

## DISQUS

https://disqus.com

"Suka" provides three ways to use Disqus.

**Common Mode**

Your pages will load Disqus directly.

```yaml
comment:
  use: disqus
  disqus:
    shortname: # Your Disqus shortname
```

If you don't know what your `shortname` is, please visit the background of your site in Disqus, which address should look like `example.disqus.com`, and `example` is your `shortname`.

**Click Mode**

In this mode, the browser will test Disqus for connectivity via AJAX. Disqus will be loaded automatically if it can be connected. If it cannot, a button looks like `Read the comment (please make sure that Disqus can be loaded properly)` will be displayed. Clicking this button will load Disqus again later.

> This mode improves the experience of visitors who using poor network connections.

```yaml
comment:
  use: disqus_click
  disqus:
    shortname: # Your Disqus shortname
```

## DisqusJS

https://github.com/SukkaW/DisqusJS

This mode requires visitors to configure a reverse proxy of `https://disqus.com/api/3.0/`. Visitors use the reverse proxy to get the comments. It provides a button to switch to Disqus full mode to post a comment as well.

> This mode improves the experience of visitors who using poor network connections.

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

Specific configuration please read https://github.com/SukkaW/DisqusJS

## Sohu Changyan

http://changyan.kuaizhan.com/

```yaml
comment:
  use: changyan
  ......
  changyan:
    appid: # APPID of Changyan
    conf: # CONF of Changyan
    thread_key_type: path # id / path
```

You can find the following two codes, `APPID` and `CONF` in the installation method in the background of Changyan:

```html
<!-- Changyan js start -->
<script id="cy_cmt_num" src="https://changyan.sohu.com/upload/plugins/plugins.list.count.js?clientId={THIS IS YOUR APPID}">
</script>
<!-- Changyan js end -->
<script>
(function(){
var appid = '{THIS IS YOUR APPID}';
var conf = '{THIS IS YOUR CONF}';
var width = window.innerWidth || document.documentElement.clientWidth;
if (width < 960) {
window.document.write('<script id="changyan_mobile_js" charset="utf-8" src="https://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>'); } else { var loadJs=function(d,a){var c=document.getElementsByTagName("head")[0]||document.head||document.documentElement;var b=document.createElement("script");b.setAttribute("type","text/javascript");b.setAttribute("charset","UTF-8");b.setAttribute("src",d);if(typeof a==="function"){if(window.attachEvent){b.onreadystatechange=function(){var e=b.readyState;if(e==="loaded"||e==="complete"){b.onreadystatechange=null;a()}}}else{b.onload=a}}c.appendChild(b)};loadJs("https://changyan.sohu.com/upload/changyan.js",function(){window.changyan.api.config({appid:appid,conf:conf})}); } })();
</script>
```

Please note that Sohu Changyan provides two ways to distinguish between articles, `id` and `path` (the article directory). Although each article is assigned a `page.id` variable each time `hexo g` is executed, it is not unique (the relationship between this id and the article is stored in the hexo Database, and the Database is deleted each time `hexo clean` is executed), so if you use `id` to distinguish articles, you need to manually add an id in the Front-Matter of each article. So we recommend using `path` unless the links to articles on your site change frequently.

## Livere

https://livere.com/

'Suka' theme is built with Livere of 'city_version', which is free to use.

```yaml
comment:
  use: livere
  ......
  livere:
    data_uid: # Your Livere UID
```

## Gitment | Gitalk

https://github.com/imsun/gitment
https://github.com/gitalk/gitalk

```yaml
comment:
  use: gitalk # or gitment
  ......
  gitment:
    repo: # repo where the issue of the comment resides
    owner: # the GitHub owner of the repo
    client_id: # GitHub Client ID
    client_secret: # GitHub Client Secret
  gitalk:
    repo: # repo where the issue of the comment resides
    owner: # the GitHub owner of the repo
    client_id: # GitHub Client ID
    client_secret: # GitHub Client Secret
```

Please read the documentation and tutorials for both comment systems to see how to enable the above parameters. Generally, you need to create a new [GitHub Application](https://github.com/settings/applications/new)

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

Please read the [Valine Documentation](https://valine.js.org) to see how to enable the above parameters. Generally, you need an accountant of LeanCloud.

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

Please read the [WildFire Documentation](https://wildfire.js.org) to see how to enable the above parameters.

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

Please read the [Facebook Comment Social Plugin](https://developers.facebook.com/docs/plugins/comments/#settings) to see how to enable the above parameters.

# Site Analytics

```yaml
analytics:
  google_site_id:
  gtags_site_id:
  baidu_site_id:
  cnzz_site_id:
```

The above four site access statistics are respectively corresponding to:

- Google's traditional `analytics.js`
- Google's new `Tag Manager`. This approach requires loading larger and more files.
- Baidu Statistics
- CNZZ Statistics

## Google

https://analytics.google.com

Login to Google Analytics background, find your site-media resource Settings, and find `trace ID`, commonly starting with `UA-`.
Depending on how you want to use it, type `trace ID` into `google_site_id` or `gtags_site_id`.

## Baidu Statistics

http://tongji.baidu.com

Login to Baidu Statistics background, locate the code acquisition page, should provide code similar to the following form:

```html
<script>
    var _hmt = _hmt || [];
    (function() {var hm = document.createElement('script');
    hm.src = 'https://hm.baidu.com/hm.js?{THIS IS YOUR ID}';
    var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
```

Configure `baidu_site_id` as your ID.

## CNZZ

https://web.umeng.com

Login to the background of CNZZ and find the code installation page. Code in the following form should be provided:

```html
<script src="//s95.cnzz.com/z_stat.php?id=<%= theme.analytics.cnzz_site_id %>&web_id={YOUR ID}" language="JavaScript"></script>
```

Configure `cnzz_site_id` as your ID.

> The default script generates the word "站长统计", which "Suka" hides.

## Tencent Analysis

http://ta.qq.com

> Tencent no longer maintain the service. It's recommended to use [Tencent Mobile Analysis](/docs/en/service/#Tencent-Mobile-Analysis) instead.

Login to tencent analysis console, login and get the `tencent_mta` analysis ID, fill in `tencent_site_id`.

## Tencent Mobile Analysis

http://mta.qq.com

Login to tencent analysis console, login and get the `tencent_mta` analysis ID, fill in `tencent_mta_id`.

# Busuanzi

https://busuanzi.ibruce.info

- enable: whether to enable Busuanzi counting
- site_uv: site visitor statistics
  - enable: whether to display site visitor statistics on the page
  - before: the content displayed before counting, HTML Tag is supported, leaves it blank if you don't need it
  - after: the content displayed after counting, HTML Tag is supported, leaves it blank if you don't need it
  - divider: the separator between the number of visits to the site and the content that follows, HTML Tag is supported, leaves it blank if you don't need it
  - offset: the offset of Busuanzi (keep it zero if you don't know what it's for)
- site_pv: site visit statistics
  - enable: whether to display site visit statistics on the page
  - before: the content displayed before counting, HTML Tag is supported, leaves it blank if you don't need it
  - after: the content displayed after counting, HTML Tag is supported, leaves it blank if you don't need it
  - divider: the separator between the number of visits to the site and the content that follows, HTML Tag is supported, leaves it blank if you don't need it
  - offset: the offset of Busuanzi (keep it zero if you don't know what it's for)
- post_pv: site visit statistics per post
  - enable: whether to display site visit statistics per article on the page
  - before: the content displayed before counting, HTML Tag is supported, leaves it blank if you don't need it
  - after: the content displayed after counting, HTML Tag is supported, leaves it blank if you don't need it

> If you set `site_uv.enable` `site_pv.enable` `post_pv.enable` to `false` , statistics will only be recorded by Busuanzi and not displayed on the page.
> HTML Tags can be used in `before` `after`. e.g. `<br>`
> the Busuanzi's offset is set in `front-matter`.See [Compose - Front Matter](/docs/en/compose/#Front-Matter)。

# Valine Counter（Experimental）

> Must be used with Valine comment system.

- enable: whether to use valine counter
- site_pv: site visit statistics
  - enable: whether to display site visitor statistics on the page
  - before: the content displayed before counting, HTML Tag is supported, leaves it blank if you don't need it
  - after: the content displayed after counting, HTML Tag is supported, leaves it blank if you don't need it
  - divider: the separator between the number of visits to the site and the content that follows, HTML Tag is supported, leaves it blank if you don't need it
- index_post_pv: display the number of visits per article on the article list page
  - enable: whether to display the number of visits per article on the article list page
  - before: the content displayed before counting, HTML Tag is supported, leaves it blank if you don't need it
  - after: the content displayed after counting, HTML Tag is supported, leaves it blank if you don't need it
- post_pv: site visit statistics per post
  - enable: whether to display site visitor statistics on the post page
  - before: the content displayed before counting, HTML Tag is supported, leaves it blank if you don't need it
  - after: the content displayed after counting, HTML Tag is supported, leaves it blank if you don't need it