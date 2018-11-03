---
title: Pages
permalink: /en/pages/
description: Verison 1.3.0
---

# Links Page

## Add new page

Add a markdown file (`.md`) in `source` folder of your hexo project. Customize its path and name as you like, which will defined the url of the page.

Add those content in it:

```markdown
---
title: links
date:
layout: links
---
```

## Add data

Create `_data` directory in `source` folder of your hexo project. Then create a `links.yml` file in it.

One link configuration as:

```yaml
"Site Name":
    url: https://example.com
    img: https://example.com/avatar.png
    text: "This is a description"
```

You can add my blog as a link by adding:

```yaml
"Sukka's Blog":
    url: https://blog.skk.moe
    img: https://secure.gravatar.com/avatar/979869bac8c7bd23fbd649064eabd48e?s=128
    text: "苏卡卡的有底洞"
```

# Tags Cloud

## Add new page

Add a markdown file (`.md`) in `source` folder of your hexo project. Customize its path and name as you like, which will defined the url of the page.

Add those content in it:

```markdown
---
title: tags
date:
layout: tags
---
```

# Gallery

## Add pages

Add a markdown file (`.md`) in `source` folder of your hexo project. Customize its path and name as you like, which will defined the url of the page.

Add those content in it:

```markdown
---
title: Gallery
date:
layout: gallery
---
```

## Add data

Create `_data` directory in `source` folder of your hexo project. Then create a `gallery.yml` file in it.

One image as:

```yaml
"The Name of the Image":
    full: # URL for full img
    thumb: # URL for thumbnail
    descr: # The description
```

Here an example:

```yaml
住み家:
    full: https://i.jpg.dog/img/c78866c8fcab8e8edb20a9e37c3378b6.png
    thumb: https://i.jpg.dog/img/c78866c8fcab8e8edb20a9e37c3378b6.md.png
    descr: pixiv.net/i/70337807
晩夏の灯　宵の風:
    full: https://i.jpg.dog/img/8975f29cdb459b3a8b1b4f0c8fb0a7af.png
    thumb: https://i.jpg.dog/img/8975f29cdb459b3a8b1b4f0c8fb0a7af.md.png
    descr: pixiv.net/i/70352475
```
