---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# background: https://source.unsplash.com/collection/94734566/1920x1080
background: false
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


<img border="rounded" w-full src="https://github.com/condorheroblog/review-work/assets/47056890/162c0db7-37ef-4e62-b1cd-08229b9214c9" />

<h3>
	李心伟的年终考评
	<br />
	<br />
	2021-12-08
</h3>


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

目录

- 第一部分 简述今年的主要工作重心

- 第二部分 做了哪些具体的事情

- 第三部分 问题和遗憾

- 第四部分 自我评定

- 第五部分 明年的工作计划

---
layout: section
---

# 工作重心

---

### 工作重心

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10 mt-30>

<h3 text-center>去年</h3>
<ul>
	<li>六国</li>
	<li>技术的全面升级</li>
</ul>

</div>

<div border-1 p-10 mt-30>

<h3 text-center>今年</h3>
<ul>
	<li>好丽友二期和三期</li>
	<li>伴随技术升级的项目规范化</li>
	<li>知识布道者</li>
</ul>

</div>

</div>

---
layout: section
---

# 做了哪些事

---

# 项目上

1. 好丽友二期的完美交付
2. 好丽友三期的完美交付
3. 增加 TypeScript
4. 增加单元测试
5. code review

---

# 技术上（形式：分享会）

- 公司级

	1. 三场 TypeScript 分享会
	2. Jest 入门与实战

- 项目级

	1. Redux-toolit 实践
	2. 认识下ANIS，写个简版chalk
	3. 认识下ANSI，写个简版progress
	4. YAML 教程
	5. 等等

---

# 专利申请上

![](https://github.com/condorheroblog/review-work/assets/47056890/f3f08aa5-1239-4f7b-9fec-c2a9cb8b6716)

---

# 问题和遗憾

- 初始和新产品经理协作不顺畅
- 技术架构更新未达到预期

---

# 自我评定

符合自己的成长预期，偏向满意。

1. 参与好丽友项目没有任何延期和重大 bug
2. 技术持续提升
3. 学习的技术积极传播到项目成员中去
4. 心智更加成熟，一个良好靠谱的合作者。

---
layout: section
---

# 展望未来

---
layout: section
---

# 流程化规范化的建设

流程化规范化的建设，项目的成功不依赖于个人，尤其是review 机制，单元测试，而是团队协作的结果。

---
layout: section
---

# 分享机制建设

打造学习型前端团队。

---
layout: section
---

# 我

继续输出分享，例如 ni 源码解析，release 发布源码解析。

---

# 两点建议

- 加强沟通
	每月或季度团建，良好的线下关系，会为合作提供基础。
- 内部交流
	主要是学习分享，打破前端孤岛状态，转向学习型组织。

---
layout: section
---

# 致谢

达哥、振宁、等合作的同事

---
layout: section
---

# 感谢

硕哥
