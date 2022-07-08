---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# background: https://source.unsplash.com/collection/94734566/1920x1080
# apply any windi css classes to the current slide
class: 'text-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: true
# some information about the slides, markdown enabled
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
# persist drawings in exports and build
drawings:
  persist: false
---

# 年中 Review

<h6>
  CondorHero
  <br />
  <br />
  2022-06-28
</h6>

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-2 py-1 rounded cursor-pointer" hover="bg-white bg-opacity-10">
    let's go <carbon:arrow-right class="inline"/>
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon:edit />
  </button>
  <a href="https://github.com/condorheroblog/review-work" target="_blank" alt="GitHub"
    class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<!--
The last comment block of each slide will be treated as slide notes. It will be visible and editable in Presenter Mode along with the slide. [Read more in the docs](https://sli.dev/guide/syntax.html#notes)
-->

---

# 上半年 IDP 回顾

> TL;DR: monorepo 和 stylelint-config

<br />

- 📃 新建 [`vite-react`](https://internal.cardopt.com/r/#/c/114290/) 模板项目，打算长期维护防止项目老化
- 📝 实践 monorepo 为项目标准化和开源打下基础
- 🛠 实践 [stylelint-config](https://github.com/condorheroblog/stylelint-config) 为项目样式标准化提供了一个统一的模板
- 五篇干货慢慢的浏览器原理
- Ni 源码解析分享

<br />

---

# 下半年 IDP 目标

- 测试自动化平台定制页面开发
- 前端基建能力方面探索
- 带前端搞些事（开源）

<div grid="~ cols-2 gap-2" m="-t-1">

<div>
  分配学习任务
  <br />
  <br />
  <img border="rounded" src="/lesson-20220329-112922.png" />
</div>

<div>


  学习答疑
  <br />

  <img border="rounded" src="/solution-20220329-112858.png" />

  知识分享
  <br />
  <img border="rounded" src="/share-20220329-112729.png" />

</div>


</div>

---
layout: two-cols
---

# 上半年工作回顾

## 项目

- 教研平台
  <img border="rounded" width="450" src="/canvas-2022-01-26.png" />

::right::


<div class="mt-18">

- Revenue 产品化
  <img border="rounded" width="650" src="/revenue-20220630-153843.png" />
</div>

---

## 团队

- Review

- 参与开源

- 脚手架构建

- 个人项目两个

- 测试一体化

---

# 下半年工作

- FILA 项目交付