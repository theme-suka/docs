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
