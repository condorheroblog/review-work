---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# background: https://source.unsplash.com/collection/94734566/1920x1080
background: black
# apply any windi css classes to the current slide
class: 'text-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: true
# titleTemplate for the webpage, `%s` will be replaced by the page's title
titleTemplate: 'Slidev'
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
---

<div grid="~ cols-2 gap-2" m="-t-2">

<div>
	<img border="rounded" w-full src="https://github.com/condorheroblog/review-work/assets/47056890/162c0db7-37ef-4e62-b1cd-08229b9214c9" />
</div>

<div>
	<h3>
		李心伟的年中考评
		<br />
		<br />
		2021-07-05
	</h3>
</div>


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

# 回顾过去半年

<div grid="~ cols-2 gap-2" m="-t-2">

<h3 border-1 text-center p-10 mt-30>
	业务上
</h3>

<h3 border-1 text-center p-10 mt-30>
	技术上
</h3>

</div>
---

# 业务上

- 工期分布：
	- 三分之二在好丽友二期
	- 三分之一在好丽友三期

---

# 好丽友二期项目部分展示

---

![ali-react-table 的学习](https://github.com/condorheroblog/review-work/blob/d9aeee1/packages/company/shanshu-2021-7-6-midyear/images/2021-07-06_00_29_10.gif?raw=true)

---

# 好丽友三期项目部分展示图

---

![bg](https://github.com/condorheroblog/review-work/blob/d9aeee1/packages/company/shanshu-2021-7-6-midyear/images/2021-07-06_00_52_07.gif?raw=true)

---

# 好丽友三期无限虚拟滚动

采用的是 react-base-table

---


![bg](https://github.com/condorheroblog/review-work/blob/d9aeee1/packages/company/shanshu-2021-7-6-midyear/images/2021-07-06_00_54_04.gif?raw=true)

---

# 技术上

> 半年，当然学了很多的东西，但对团队的贡献主要体现在下面三个方面：

1. 组织三场 TypeScript 分享会，贡献了一份完整的技术文档。

2. 普及了 Web-Components 技术。

3. 彻底解决项目的**虚拟无限**滚动问题。

### 点击链接🔗[什么是无限虚拟滚动](#/8)
<!-- > slogan：比 Vue 更 Vue （写法），比 React 更简单（更贴近原生）。 -->

---

# TypeScript 分享会

> 最大好处：提升了代码的*健壮性*

<div>
	<a href="https://condorheroblog.github.io/learn-ts-vuepress/" target="_blank">TypeScript 文档</a>
</div>

<div style="display: flex;">
	<div>
		<img style="height: 400px;" src="https://github.com/condorheroblog/review-work/assets/47056890/4b089fcd-7603-4009-b8fc-53792e355ae5" />
	</div>
	<div>
		<img style="width: 380px;" src="https://github.com/condorheroblog/review-work/assets/47056890/9e121284-1d1c-4e62-9963-efa7c99674f4" />
		<img style="width: 400px;" src="https://github.com/condorheroblog/review-work/assets/47056890/1118bb87-73f4-4f15-8cf0-317fe8cb73d1" />
	</div>
</div>



---

# 未来规划

自己当然有很多的学习方向，但是对团队来讲两个：

第一个：Vue3 + TS 学习方向

---

## 第二个：ali-react-table 的学习

![ali-react-table 的学习 h:300](https://github.com/condorheroblog/review-work/assets/47056890/41c67278-eee0-4d6b-8816-48e9f3732c62)

> 总结： 多学习，多分享。

---

<div class="flex items-center justify-center h-full text-center">

<h3>
	最后
	<br />
	<br />
	致谢：硕哥
</h3>

</div>
