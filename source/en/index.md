---
title: Start
description: Hello, welcome to「Suka」!
---

Hexo is a static site generator which based on [Node.js](https://nodejs.org). You can learn how to install Hexo and generate your own website or blog at [Hexo's Official Documents](https://hexo.io/docs).

> In this documents, we suppose you have already sucessfully installed hexo and used `hexo init` to bring up an site.

There are two config file in Hexo Project, one in the root directory of your Hexo Project and another in the theme directory. For convenience of description, in the following description, the former is referred to as the `site config` and the latter as the `theme config`.

Before using "Suka" theme, please read [Hexo's Official Documents](https://hexo.io/docs) carefully and configure the basic config, such as title, subtitle, description, author, timezone, language else.

# Download "Suka"

[Download latest Release](https://github.com/SukkaW/hexo-theme-suka/releases/latest)

> The latest release. Recommended for most users.

[Download latest Canary Branch](https://github.com/SukkaW/hexo-theme-suka/archive/canary.zip)

> Maybe unstable, but includes latest features. Recommended for developers or advanced users.

[Download other version](https://github.com/SukkaW/hexo-theme-suka/releases)

> You can decide which version to use. May no longer provide support.

Choose your the one you want to use, find `Assets` in new page, download Source Code (zip).
Here is an example of download version 0.2.0:

![](/docs/assets/img/download-suka.png)

Unpack it and rename it to `suka`, then move it to `themes` directory of your Hexo Project.

----

[Using Git](https://github.com/SukkaW/hexo-theme-suka)

In this way you can decide which version and branch you want to use. You can use `git pull` to update the "Suka" if you are using this way.

```bash
cd themes
git clone https://github.com/SukkaW/hexo-theme-suka.git suka
cd suka
git checkout {branch/tags name/commit hash}
```

# Install "Suka"

When install "Suka" you need extra steps which is diffrent from other theme. First you need to enter themes directory and install dependencies for "Suka".

```bash
cd themes/suka
npm install --production
```

Then you need to make a copy of `_config.example.yml` and rename the copy to `_config.yml`.

```bash
cp -i _config.example.yml _config.yml
```

As the theme is developing, the theme config template will changes. It will avoid conflict for users who are using git pull to upgrade the theme.

> If you are using git for your Hexo Project or you are using CI to generate and deploy your site, please read [Advanced Setting - CI] for more details.

Now back to the root directory of your Hexo Project, then run:

```bash
cat /themes/suka/site_config.yml >> _config.yml
```

Now your `site config` should be something like:

```yaml
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
theme: landscape

# Suka Theme config
# Documents: https://theme-suka.github.io/docs/
suka_theme:
  search:
    enable: false
    path: search.json
    field: post # Page | Post | All. Default post
  prism:
    enable: false
    line_number: true
    theme: default
```

# Enable "Suka"

Change `theme` key's value to `suka`.

```diff
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
-theme: landscape
+theme: suka

# Suka Theme config
# Documents: https://theme-suka.github.io/docs/
suka_theme:
  search:
    path: search.json
    field: post # Page | Post | All. Default post
  prism:
    line_number: true
    theme: default
```

# Start "Suka"

Run the command below to start a local Hexo Server.

```bash
hexo s --debug
```

> During the service startup process, pay attention to whether there are any abnormal information. If you want to report problems, those information will help.

When there were something like lines below

```
INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.
```

It means Hexo has already run on your device, check https://localhost:400 at your browser.

> If you have problem using "Suka", try search in the docs at sidebar or [add new issue](https://github.com/SukkaW/hexo-theme-suka/issues/new) at GitHub.

# Update "Suka"

If you downloaded "Suka" at GitHub release, then you should rename your theme directory from `suka` to `suka-old`, rename the new version "Suka" directory to `suka`. Then follow the guide at change log to migrate your configuration into newer one. After test you can delete `suka-old` directory.

---

If you used git to download "Suka", you need to backup your `theme config` (for example, rename it to `_config.old.yml`) then run `git pull` to update the "Suka". Now you have a new `_config.example.yml`, make a copy of it and rename the copy to `_config.yml`. Now you can migrate your old `theme config` from `_config.old.yml` to `_config.yml`. After the test you can delete `_config.old.yml`.
