---
# try also 'default' to start simple
theme: default
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://source.unsplash.com/collection/94734566/1920x1080
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
# page transition
transition: slide-left
# use UnoCSS
css: unocss
layout: cover
---

# 2023 年终 Review

<h6>
	CondorHero
	<br />
	<br />
	2023-12-25
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

---

<Toc />

---
layout: section
---

# 全年工作回顾

---
layout: cover
---

1. Skechers 项目两个小迭代和上线支持
2. FILA 单点登录
3. 支援波科项目
4. 雪花仓网系统（7 月  ～ 9 月）
5. 玛氏（3+）迭代（10 月 ～ Now）

---

## Skechers 迭代进度

<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/e49f6747-5297-4d4e-aed3-d9c974888f0c" />

<!-- 2 月份跑两个迭代，进入三月份就开始修修补补，准备上线了，其中一个很重要的功能是对接 SSO，折扣仿真功能涉及到阿拉伯数字和中文数字转换的需求 -->

---

## Skechers 迭代内容

### 1. 折扣仿真

![折扣仿真](https://github.com/condorheroblog/review-work/assets/47056890/0443a917-d0de-47a5-b025-17d7f3bbd24e)

---

### 2. 玩法编辑

![添加玩法](https://github.com/condorheroblog/review-work/assets/47056890/a34c815d-f730-4196-bd47-0ff2b4e8451d)

---
class : sso
---

<style>
.sso img {
	zoom: 0.53
}
</style>

## FILA 单点登录

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10 mt-3>

<h3 text-center>FILA 新需求</h3>

![20230525-154633](https://github.com/condorheroblog/review-work/assets/47056890/4e1fa54b-4675-464d-a6fc-7c12f67aaeb1)

</div>

<div border-1 p-10 mt-3>

<h3 text-center>联调</h3>


![image](https://github.com/condorheroblog/review-work/assets/47056890/5a2f97a8-aa88-4154-b2cc-e5c7ae13a7be)

前端盲调的，另外代码作为案例，用在其他（两个）同事开发的项目中。

</div>

</div>

<!-- 这里之所以对流程比较熟悉还是因为系统学过极客时间的  OAuth 2.0 的课程，所以显得比后端还要精通  -->
---

## 加入波科项目


<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10 mt-30>

<h3 text-center>加入波科项目</h3>

<p class="flex items-center justify-center h-20">
	<time datetime="2023-03-13 10:09">
		2023-03-13 10:09
	</time>
</p>

</div>

<div border-1 p-10 mt-30>

<h3 text-center>开发支持</h3>

<blockquote mt-3>
	黄亮：波科这边有个 bug。你看看能不能帮忙处理一下~
https://internal.cardopt.com/z/index.php?m=bug&f=view&bugID=14263
	<br />
	<br />
	<br />
	振宁：Inbound 和带条件筛选需求等需求~
</blockquote>

</div>

</div>

---

## 雪花仓网系统(7 ～ 9 月)

1. 重构了前端路由模块
2. 表格的编辑模式
3. 多场景行的合并模式
4. 其他页面的定制化

---

### 表格的编辑模式

![snow-hetu](https://github.com/condorheroblog/review-work/assets/47056890/6d7e2778-cf2e-4a7a-90aa-983f57426466)

---

### 多场景行的合并模式

![scenario_name](https://github.com/condorheroblog/review-work/assets/47056890/17c7ec95-bba9-46c9-bbc3-2b73f6ce2e63)

---

### 其他页面的定制化

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10 mt-3>

<h3 text-center>结果看板</h3>

![result-board](https://github.com/condorheroblog/review-work/assets/47056890/9efa8fcc-b791-4796-9679-a715c6f3b3e5)

</div>

<div border-1 p-10 mt-3>

<h3 text-center>约束配置</h3>

![constraint-config](https://github.com/condorheroblog/review-work/assets/47056890/b590f197-bd0e-4111-8cef-6cd4ad52330a)

</div>

</div>

---

## 玛氏（3+）迭代（10 月 ～ Now）

1. 三个以上的迭代
2. 两次重大版本升级

<br />
<br />

### 项目遇到的痛点

1. 没有产品经理，研发需要承担更多的角色
2. 需要对接产研，项目升级风险太大
3. 项目经理的职责变动，导致开发节奏很乱

---
layout: section
---

# 沉淀

---
class: patent
---

<style>
	.patent img {
		zoom: .55
	}
</style>


## 一个专利

4. 一个专利(**6.19** 初审通过)

![image](https://github.com/condorheroblog/review-work/assets/47056890/95c8a711-90ec-4b2b-96cf-f3806aa60d8d)

---

## 用户手册添加大纲

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-5>

<h3 text-center>网页</h3>

<img border="rounded" style="zoom: 0.3" src="https://github.com/condorheroblog/review-work/assets/47056890/07d8435e-2a05-4e3f-b3d9-c676b8a6c390" />

两个难以解决的问题：

1. 自动添加 PDF 大纲
2. 页脚自定义源网址

</div>

<div border-1 p-5>

<h3 text-center>PDF</h3>

<img border="rounded" style="zoom: 0.3" src="https://github.com/condorheroblog/review-work/assets/47056890/40161f32-9716-45fd-a77c-d13a34a7bbf3" />

</div>

</div>

---

## 解决历程

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10>

<h3 text-center>分为两个步骤</h3>

1. 网页生成自带大纲的 PDF，`html-export-pdf-cli`

<div class="flex gap-2">

<p>

[![NPM Downloads](https://img.shields.io/npm/dm/html-export-pdf-cli)](https://www.npmjs.com/package/html-export-pdf-cli)

</p>

<p>

[![GitHub stars](https://img.shields.io/github/stars/condorheroblog/html-export-pdf-cli)](https://github.com/condorheroblog/html-export-pdf-cli)

</p>


</div>

<p></p>

2. PDF 合并大纲不丢失，`@condorhero/merge-pdfs`

<div class="flex gap-2">

<p>

[![NPM Downloads](https://img.shields.io/npm/dm/@condorhero/merge-pdfs)](https://www.npmjs.com/package/@condorhero/merge-pdfs)

</p>

<p>

[![GitHub stars](https://img.shields.io/github/stars/condorheroblog/merge-pdfs?style=social)](https://github.com/condorheroblog/merge-pdfs)

</p>

</div>

<div>

3. [vitepress-export-pdf](https://github.com/condorheroblog/vitepress-export-pdf) 下载量和 stars

[![NPM Downloads](https://img.shields.io/npm/dm/vitepress-export-pdf)](https://www.npmjs.com/package/vitepress-export-pdf)
[![GitHub stars](https://img.shields.io/github/stars/condorheroblog/vitepress-export-pdf)](https://github.com/condorheroblog/vitepress-export-pdf)

</div>

</div>

<div border-1 p-10>

<h3 text-center>效果预览</h3>

![](https://user-images.githubusercontent.com/47056890/237953444-f1662da3-04ff-435a-afcb-f7b214bd1aac.png)

</div>

</div>

<!-- 灵感来源于大量思考，看了很多开源代码，研究 PDF 规范，终于在 4 月份有了眉目，然后一个月周末无休，解决了这个问题 -->

---

## 阿拉伯数字与中文数字

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10 mt-3>

<h3 text-center>Number ZH</h3>

> 需求：好丽友项目 FILA 项目、斯凯奇项目遇到，实现阿拉伯数字与中文数字互转

![number-zh](https://github.com/condorheroblog/review-work/assets/47056890/52c9fc1a-597b-4903-9428-41f948afd767)

</div>

<div border-1 p-10 mt-3>

<h3 text-center>
	<a href="https://condorheroblog.github.io/number-zh-app/number-to-zh">在线体验</a>
</h3>

![number-zh-app](https://github.com/condorheroblog/review-work/assets/47056890/c8e4e335-a09c-4439-bf36-dd7c8328cbaf)

</div>

</div>

---

# 2024 年打算

- 保交付 Mars 项目
- 前端项目脚手架的优化

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-3 mt-3>

![react-antd-admin-home](https://github.com/condorheroblog/review-work/assets/47056890/bd3b07e5-2578-4a4f-84e1-ffd9d48567cc)

</div>

<div border-1 p-3 mt-3>

![react-antd-admin-dashboard](https://github.com/condorheroblog/review-work/assets/47056890/8e919cd6-b3b2-4bd5-bf2a-32c12fe4cb49)

</div>

</div>

<!-- 一些项目的沉淀，开启 https://github.com/condorheroblog/react-antd-admin 项目 -->
