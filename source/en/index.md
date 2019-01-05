---
title: Start
description: Hello, welcome to「Suka」!
---

Hexo is a static site generator which is based on [Node.js](https://nodejs.org). You can learn how to install Hexo and generate your own website or blog at [Hexo's Official Documents](https://hexo.io/docs).

> In this documentation, we suppose you have already successfully installed hexo and finished `hexo init` to set up a site.

There are two configuration files in Hexo Project, one in the root directory of your Hexo Project and the other in the theme directory. For the convenience of description, the former is referred to as `site config` and the latter as `theme config`.

Before using "Suka" theme, please read [Hexo's Official Documents](https://hexo.io/docs) carefully and configure the basic configuration, such as title, subtitle, description, author, timezone, language etc.

# Download desired versions

[Download latest Release](https://github.com/SukkaW/hexo-theme-suka/releases/latest)

> The latest release. Recommended for most users.

[Download latest Canary Branch](https://github.com/SukkaW/hexo-theme-suka/archive/canary.zip)

> This build may be unstable, but it includes the latest features. Recommended for developers and advanced users.

[Download other version](https://github.com/SukkaW/hexo-theme-suka/releases)

> You can decide which version to use. Some releases are no longer supported.

Choose the version you want to deploy, expand `Assets` tab in releases page, and download Source Code (zip).
Here is an example of downloading version 0.2.0:

![](/docs/assets/img/download-suka.png)

Unpack it and rename it to `suka`, and then move it to `themes` directory of your Hexo Project.

----

[Using Git](https://github.com/SukkaW/hexo-theme-suka)

With git you can decide which version and branch you want to use. You can use `git pull` to update the theme if you goes this way.

```bash
cd themes
git clone https://github.com/SukkaW/hexo-theme-suka.git suka
cd suka
git checkout {branch/tags name/commit hash}
```

# Install "Suka"

When installing "Suka" you need extra steps which is diffrent from other themes. First you need to enter themes directory and install dependencies for "Suka".

```bash
cd themes/suka
npm install --production
```

Then you need to make a copy of `_config.example.yml` and rename it to `_config.yml`.

```bash
cp -i _config.example.yml _config.yml
```

With the theme being developed, the theme config template will change. By copying the config you can avoid potential conflicts for users who use git pull to upgrade the theme.

> If you are using git for your Hexo Project or you are using CI to generate and deploy your site, please read [Advanced Setting - CI] for more details.

Now go back to the root directory of your Hexo Project, then execute:

```bash
cat themes/suka/site_config.yml >> _config.yml
```

Now your `site config` should look like:

```yaml
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
theme: landscape

# Suka Theme config
# Documents: https://theme-suka.skk.moe/docs/
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
# Documents: https://theme-suka.skk.moe/docs/
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

> During the service startup process, pay attention any abnormal outputs. If you want to report issues, those information will help.

When the output looks like the lines below

```
INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.
```

It means Hexo is already running on your device, check https://localhost:400 in your browser.

> If you have any problem using "Suka", try searching in the documentation at sidebar or [open new issue](https://github.com/SukkaW/hexo-theme-suka/issues/new) at GitHub.

# Update "Suka"

If you downloaded "Suka" from a  GitHub release, you should rename your theme directory from `suka` to `suka-old`, and rename the newer version of "Suka" directory to `suka`. Then follow the guide at changelog to migrate your configuration to the newer version. You can delete `suka-old` directory afterwards if you want.

---

If you use git to download "Suka", you need to backup your `theme config` (for example, rename it to `_config.old.yml`), and then run `git pull` to update "Suka". You will see a new `_config.example.yml`. Make a copy of it and rename it as `_config.yml`. Now you can migrate your settings from `_config.old.yml` to `_config.yml`. After the test you can delete `_config.old.yml`.
