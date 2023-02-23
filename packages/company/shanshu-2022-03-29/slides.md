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
# page transition
transition: slide-left
# use UnoCSS
css: unocss
---

# CondorHero IDP

<h6>
  只有当程序员非常积极以至于没有奖励他(她)也愿意工作时，才是唯一给予绩效奖励的时候。 -- 《大教堂与集市》
  <br />
  <br />
  2022-03-29
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

# 既定目标

完成浏览器的工作原理

- 📝 深入了解现代网络浏览器（第 1 部分）
- 🎨 深入了解现代网络浏览器（第 2 部分）
- 🧑‍💻 深入了解现代网络浏览器（第 3 部分）
- 🤹 深入了解现代网络浏览器（第 4 部分）

<br />
<br />

<!--
link: https://internal.cardopt.com/confluence/pages/viewpage.action?pageId=39748307
-->

<style>
h1 {
  background-color: #2B90B6;
  background-image: linear-gradient(45deg, #4EC5D4 10%, #146b8c 20%);
  background-size: 100%;
  -webkit-background-clip: text;
  -moz-background-clip: text;
  -webkit-text-fill-color: transparent;
  -moz-text-fill-color: transparent;
}
</style>

---

# 带领一部分人学习

在完成 IDP 的同时，也完成团队建设。

<div grid="~ cols-2 gap-2" m="-t-2">

<div>
  分配学习任务

  <br />
  <br />
  <img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/376e267f-fee0-4081-a548-2012d810c035" />
</div>

<div>


  学习答疑
  <br />

  <img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/32e015d3-6bd1-4d9c-8335-ce69998b5737" />

  知识分享
  <br />
  <img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/ab23c544-3f6f-4b9a-b888-68621f997c7f" />

</div>


</div>


---

# 下个目标

21 天类型体操学习

<img
  v-click
  class=""
  border="rounded"
  src="https://github.com/condorheroblog/review-work/assets/47056890/959e6897-ff8b-49df-9871-a70be584c7df"
/>
<p v-after class="absolute bottom-23 left-45 opacity-30 transform -rotate-10">Here!</p>
