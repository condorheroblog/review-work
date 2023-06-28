---
# try also 'default' to start simple
theme: default
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
# page transition
transition: slide-left
# use UnoCSS
css: unocss
layout: cover
background: https://images.unsplash.com/photo-1618411165479-9e6396b7fd0a?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218MHw5NDczNDU2Nnx8fHx8fHwxNjg0OTkyNTg2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1920
---

# 2023 年中 Review

<h6>
	CondorHero
	<br />
	<br />
	2023-05-25
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
重构项目的时候把 2022 年新建的 2023 上半年的年中  review 删除了，尴尬。2023 review】 https://www.bilibili.com/video/BV1Zk4y1K7XF/?share_source=copy_web&vd_source=daf88fd0bb3c2688c9ef0c78149d13f3
-->

---

<Toc />

---
layout: section
---

# 上半年工作回顾

---
layout: cover
---

1. Skechers 项目两个小迭代和上线支持
2. FILA 单点登录
3. 加入波科项目
4. 一个专利(**6.19** 初审通过)

---

## Skechers

<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/e49f6747-5297-4d4e-aed3-d9c974888f0c" />

<!-- 2 月份跑两个迭代，进入三月份就开始修修补补，准备上线了，其中一个很重要的功能是对接 SSO，因为后端限制无法提供环境，盲写代码 -->

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
	振宁：Inbound 和带条件筛选需求等需求~
</blockquote>

</div>

</div>

---
class: patent
---

<style>
	.patent img {
		zoom: .55
	}
</style>

## 一个专利

![image](https://github.com/condorheroblog/review-work/assets/47056890/95c8a711-90ec-4b2b-96cf-f3806aa60d8d)

---
layout: section
---

# 上半年 IDP 回顾

---

## 是否记得用户手册

<div grid="~ cols-[2fr_1fr_2fr] gap-2">
	<img border="rounded" class="h-full object-contain" src="https://github.com/condorheroblog/review-work/assets/47056890/07d8435e-2a05-4e3f-b3d9-c676b8a6c390" />
	<div
		v-motion
		:initial="{ x: 50, y: 200 }"
		:enter="{ x: 10 }"
	>
			Generate PDF =>
	</div>
	<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/40161f32-9716-45fd-a77c-d13a34a7bbf3" />
</div>

<!-- 去年写的插件 [vitepress-export-pdf](https://github.com/condorheroblog/vitepress-export-pdf) 和 [vuepress-plugin-export-pdf](https://github.com/condorheroblog/vuepress-plugin) 用于交付 「用户手册」 插件做到了极致好用，但是有缺憾 -->

---
class: badge
---

<style>
	.badge ol li p {
		display: flex;
		align-items: center;
		gap: 0.5em;
	}
</style>

## 用户手册的遗憾

去年写的两个插件：

1. [vuepress-plugin-export-pdf](https://github.com/condorheroblog/vuepress-plugin-export-pdf) [![NPM Downloads](https://img.shields.io/npm/dm/@condorhero/vuepress-plugin-export-pdf)](https://www.npmjs.com/package/@condorhero/vuepress-plugin-export-pdf)
[![GitHub stars](https://img.shields.io/github/stars/condorheroblog/vuepress-plugin-export-pdf)](https://github.com/condorheroblog/@condorhero/vuepress-plugin-export-pdf)

2. [vitepress-export-pdf](https://github.com/condorheroblog/vitepress-export-pdf) [![NPM Downloads](https://img.shields.io/npm/dm/vitepress-export-pdf)](https://www.npmjs.com/package/vitepress-export-pdf)
[![GitHub stars](https://img.shields.io/github/stars/condorheroblog/vitepress-export-pdf)](https://github.com/condorheroblog/vitepress-export-pdf)

> 有了不错的 start 数量和周下载数量，社区也有人反馈问题

用于交付 「用户手册」 的插件，使用上做到了极致好用，但是有遗憾，缺失了我认为很重要的两个功能：

1. 自动添加 PDF 大纲
2. 页脚自定义源网址

---
class : issue
---

<style>
.issue img {
	zoom: 0.4
}
</style>

## 社区反馈

[How do I change the URL point to the localhost and generate catalogs?](https://github.com/condorheroblog/vuepress-plugin-export-pdf/issues/5)

![](https://user-images.githubusercontent.com/10327999/192126351-cf108183-5309-4514-b3d0-26e69cd7ed06.png)

---

## 如何解决

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

</div>

<div border-1 p-10>

<h3 text-center>效果预览</h3>

![](https://user-images.githubusercontent.com/47056890/237953444-f1662da3-04ff-435a-afcb-f7b214bd1aac.png)

</div>

</div>

<!-- 灵感来源于大量思考，看了很多开源代码，研究 PDF 规范，终于在 4 月份有了眉目，然后一个月周末无休，解决了这个问题 -->

---

## WakeTime

这个新功能，做了整个四月份，无双休日的那种，当然也没申请加班，下面截图是其中一个插件总编码用时。

<img width="1157" alt="image" src="https://github.com/condorheroblog/html-export-pdf-cli/assets/47056890/c103675f-30fe-4305-854c-1be12cfe239e">

---
class: no-find
---

<style>
	.no-find img {
		zoom: 0.6;
	}
</style>

## 小插曲

![image](https://github.com/condorheroblog/review-work/assets/47056890/162ceba7-7824-491c-89e4-27c873c59484)

<!-- 开发过程中还没发布，就有人留言要使用，于是加班加点临时给他发布了一下 -->

---

# 23 年下半年工作

目前看到和打算的安排是：

1. 目前 Skechers 上线还剩一点扫尾工作
2. 继续支持波科
3. 努力下半年在申请一个专利
4. Maybe 重构 react-base-table

<!-- 希望能有个好结果，多攒点薪资，今年 review 我老大和北京的人事竟然都不在，只有 1 和 2 -->
