---
title: 开始使用
description: Hello, welcome to「Suka」!
---

Hexo 是基于 [Node.js](https://nodejs.org/) 的高效静态站点生成框架。你可以在 [Hexo 的官方文档](https://hexo.io/zh-cn/docs/) 了解如何安装 Hexo、生成一个站点。

> 在这篇文档中，我们假定你已经成功安装了 Hexo，**并使用 Hexo 提供的命令创建了一个站点。**

在 Hexo 中，通常有两份配置文件，一个是站点根目录下的 `_config.yml`；另外一个是主题目录下的 `_config.yml`。 为了描述方便，在以下说明中，将前者称为 `站点配置文件`，后者称为 `主题配置文件`。

在使用「Suka」主题之前，请仔细阅读 [Hexo 的官方文档](https://hexo.io/zh-cn/docs/)，完成对 Hexo 的安装，并完成对 `站点配置文件` 的基本配置（标题、介绍、关键词、作者、时区、语言等）。

# 下载「Suka」

[下载最新 Release 版本](https://github.com/SukkaW/hexo-theme-suka/releases/latest)

> 最新的释出版本，适合大部分用户。

[下载 Canary 版本](https://github.com/SukkaW/hexo-theme-suka/archive/canary.zip)

> 包含最新的、尚在开发中的特性，可能不稳定；适合进阶用户和开发者。

[下载其他版本](https://github.com/SukkaW/hexo-theme-suka/releases)

> 你可以自己决定想要使用的版本；部分版本可能不再提供技术支持。

选择你所需要的版本，在新打开的页面中找到 Assets 区域，下载 Source Code (zip) 到本地。
以下载 0.2.0 版本为例：

![](/docs/assets/img/download-suka.png)

解压所下载的压缩包至站点的 `themes` 目录下， 并将 解压后的文件夹名称 更改为 `suka`（推荐）。

----

[使用 Git](https://github.com/SukkaW/hexo-theme-suka)

> 你可以自己决定想要使用的分支；使用 Git 下载「Suka」以后还可以使用 `git pull` 更新「Suka」。

```bash
cd themes
git clone https://github.com/SukkaW/hexo-theme-suka.git suka
cd suka
git checkout {branch/tags name/commit hash}
```

# 安装「Suka」

和其他主题不同，安装「Suka」需要额外的步骤；前往「Suka」主题目录下执行 `npm install --production` 指令安装「Suka」运行时所必须的依赖。

```bash
cd themes/suka
npm install --production
```

同时你需要把「Suka」主题目录下的 `_config.example.yml` 复制一份并把副本重命名为 `_config.yml`。

```bash
cp -i _config.example.yml _config.yml
```

因为在主题的开发迭代过程中，`主题的配置文件` 很有可能会有变动。这样可以避免使用 `git pull` 更新主题的用户出现冲突。

> 如果你在使用 Git 管理你的 Hexo 站点目录，或者使用持续集成（CI）部署你的 Hexo 博客，请阅读 [进阶使用 - 使用 Git 管理 Hexo](/docs/expert/#%E4%BD%BF%E7%94%A8-Git-%E7%AE%A1%E7%90%86-Hexo) 了解应该怎么办。

然后回到站点根目录，打开 `站点配置文件`，复制下述内容并添加到 `站点配置文件` 中 `theme: landscape` 之后。

```yaml
# Suka Theme config
# Documents: https://theme.suka.moe/docs/
suka_theme:
  search:
    path: search.json
    field: post # Page | Post | All. Default post
  prism:
    line_number: true
    theme: default
```

现在你的 `站点配置文件` 应该是这样：

```yaml
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
theme: landscape

# Suka Theme config
# Documents: https://theme.suka.moe/docs/
suka_theme:
  search:
    path: search.json
    field: post # Page | Post | All. Default post
  prism:
    line_number: true
    theme: default
```

# 启用「Suka」

在 `站点配置文件中`，修改 `theme` 的值为 `suka`。

>如果在安装时你将主题文件夹重命名为其它名字，就修改为你重命名后文件夹的名字

```diff
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
-theme: landscape
+theme: suka

# Suka Theme config
# Documents: https://theme.suka.moe/docs/
suka_theme:
  search:
    path: search.json
    field: post # Page | Post | All. Default post
  prism:
    line_number: true
    theme: default
```

# 运行「Suka」

在站点根目录下运行下面的命令在本地启动一个 Hexo Server。

```bash
hexo s --debug
```

> 在服务启动的过程，注意观察命令行输出是否有任何异常信息，如果你碰到问题，这些信息将帮助他人更好的定位错误。

当命令行输出下述内容时说明 Hexo 已经监听在本机的 4000 端口，使用浏览器访问 http://localhost:4000 ，检查站点是否正确运行。

```
INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.
```

> 如果你在使用过程中遇到问题，请尝试在文档左侧菜单中进行搜索，或者在 GitHub 上 [提出 issue](https://github.com/SukkaW/hexo-theme-suka/issues/new)

# 更新「Suka」

如果你是在 版本发布页 下载并安装的「Suka」，那么你需要备份你的 `主题备份文件`，然后将旧的主题文件夹命名为 `suka-old`，将下载的新版本「Suka」重命名为 `suka`，根据更新日志的指导迁移旧的 `主题配置文件` 到新的 `主题配置文件` 中。测试通过后你可以将 `suka-old` 删除。

----

如果你使用 Git 安装的「Suka」，你可以直接在主题文件夹下运行 `git pull` 更新主题，并把备份之前的 `主题配置文件` 重命名为 `_config.old.yml`，复制一份 `_config.example.yml` 并重命名为 `_config.yml`。从 `_config.old.yml` 迁移你的配置到新的 `_config.yml`测试通过后你可以将 `_config.old.yml` 删除。