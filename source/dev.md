---
title: 开发相关
description: 为想参与「Suka」的开发者准备
permalink: /dev/
---

# 持续集成

「Suka」的所有测试和周边（官网、Demo、文档）都使用了 Travis CI 持续集成。
下面是 Travis CI 的构建结果：

## Suka Theme (Branch: master)

[![](https://travis-ci.org/SukkaW/hexo-theme-suka.svg?branch=master)](https://travis-ci.org/SukkaW/hexo-theme-suka)

## Suka Theme (Branch: canary)

[![](https://travis-ci.org/SukkaW/hexo-theme-suka.svg?branch=canary)](https://travis-ci.org/SukkaW/hexo-theme-suka)

## Suka Website

[![](https://travis-ci.org/theme-suka/theme-suka.github.io.svg?branch=raw)](https://travis-ci.org/theme-suka/theme-suka.github.io)

## Suka Theme Docs

[![](https://travis-ci.org/theme-suka/docs.svg?branch=master)](https://travis-ci.org/theme-suka/docs)

# CONTRIBUTING.md

请阅读 CONTRIBUTING.md 了解 commit message 规范和 branch 命名规范：

https://github.com/SukkaW/hexo-theme-suka/blob/canary/CONTRIBUTING.zh-cn.md

除此以外，你还需要了解以下内容：

- 「Suka」的 master 分支是稳定的版本，所有开发均在 canary 分支进行。所以如果你想 fork 项目并开 Pull Request，你的代码也需要在 canary 分支下进行 commit。
- 「Suka」的 css 和 js 的压缩使用 gulp 的一系列插件。在安装「Suka」时只要求 `npm i --production` 安装基本依赖，但是如果你的开发涉及到 css js 的变动，请在「Suka」目录下执行 `npm i gulp-cli -g` 和 `npm i` 以安装开发相关依赖。
- 「Suka」使用的是 `gulp@4`（因为没有高危漏洞），并在 `gulpfile.js` 定义了以下 Task：
  - `minify-js`: 将 `src/**/*.js` 下的文件压缩、添加 `.min` 后输出到 `source` 目录中
  - `minify-js`: 将 `src/**/*.css` 下的文件压缩、添加 `.min` 后输出到 `source` 目录中
  - `build`: 使用异步方式同时执行上述任务
  - `watch`: 监听 `src` 目录，当文件改动时触发 `build`
  - `default`: `build`
- 「Suka」使用 [theme-suka/hexo-theme-unit-test](https://github.com/theme-suka/hexo-theme-unit-test) 执行单元测试
