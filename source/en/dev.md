---
title: Dev Guide
description: For developer who want to join "Suka"
permalink: /en/dev/
---

# Continuous integration

All of the test, website, documents of "Suka" are relied on Travis CI.
Here are the build status of them:

## Suka Theme (Branch: master)

[![](https://travis-ci.org/SukkaW/hexo-theme-suka.svg?branch=master)](https://travis-ci.org/SukkaW/hexo-theme-suka)

## Suka Theme (Branch: canary)

[![](https://travis-ci.org/SukkaW/hexo-theme-suka.svg?branch=canary)](https://travis-ci.org/SukkaW/hexo-theme-suka)

## Suka Website

[![](https://travis-ci.org/theme-suka/theme-suka.skk.moe.svg?branch=raw)](https://travis-ci.org/theme-suka/theme-suka.skk.moe)

## Suka Theme Docs

[![](https://travis-ci.org/theme-suka/docs.svg?branch=master)](https://travis-ci.org/theme-suka/docs)

# CONTRIBUTING.md

Read the CONTRIBUTING.md to learn the format of commit message and how to name branch.

https://github.com/SukkaW/hexo-theme-suka/blob/canary/CONTRIBUTING.md

You need to know the following infomation:

- The master branch of "Suka" is stable release. We carry out the development in canary branch. So if you want make a fork and add new Pull Request, please not forget to checkout and develop in canary branch.
- As we only requested you run `npm i --production` to install basically dependencies to run theme, you should run `npm i gulp-cli -g` and `npm i` at directory for installing devDependencies.
- "Suka" is using `gulp@4` which has no vulnerability. We define those task in `gulpfile.js`:
  - `minify-js`: Compress `src/**/*.js`, add `.min` prefix then output `source`
  - `minify-js`: Compress `src/**/*.css`, add `.min` prefix then output `source`
  - `build`: Run both tasks below parallel.
  - `watch`: Watch `src`, will trigger `build`
  - `default`: `build`
- Use [theme-suka/hexo-theme-unit-test](https://github.com/theme-suka/hexo-theme-unit-test) to finish unit test.