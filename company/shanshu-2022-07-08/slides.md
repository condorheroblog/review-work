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
layout: cover
background: https://images.unsplash.com/photo-1502189562704-87e622a34c85?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80
---

# 年中 Review

<h6>
  CondorHero
  <br />
  <br />
  2022-07-08
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

<Toc />

---
layout: section
---

# 上半年 IDP 回顾

---
layout: image-left
width: 200
image: https://github.com/condorheroblog/review-work/assets/47056890/4d183a7d-2ed6-4f62-bd83-f6561bb59274
---

<!-- <img border="rounded" class="w-36 ml-1/2" src="https://github.com/condorheroblog/review-work/assets/47056890/4d183a7d-2ed6-4f62-bd83-f6561bb59274" /> -->
<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/11293999-960b-4dd2-88ea-f8377bff8b2c" />
<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/27d7faf1-3b6d-4931-a03f-3ba527e6a515" />

---

# Code Time

<img border="rounded" class="h-9/10" src="api-automation-frontend-20220810-174919.png" />

---
layout: section
---

# 两个开源项目

---
layout: two-cols
---

- [vuepress-plugin](https://github.com/condorheroblog/vuepress-plugin)

  <img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/0510f4ff-7a2b-4fd7-8c2a-2d201cee0b83" />

::right::

- [vitepress-export-pdf](https://github.com/condorheroblog/vitepress-export-pdf)

  <img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/1dfb5875-ce7b-41bc-9333-7fdae432b21a" />

---
layout: section
---

# 使用场景

---
layout: center
class: "text-center"
---

# FILA user document

<div class="columns-3 gap-4">
  <img border="rounded" class="h-full object-contain" src="https://github.com/condorheroblog/review-work/assets/47056890/07d8435e-2a05-4e3f-b3d9-c676b8a6c390" />
  <div
    v-motion
    :initial="{ x: -20, y: 200 }"
    :enter="{ x: 10 }">
      Generate PDF => 
  </div>
  <img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/40161f32-9716-45fd-a77c-d13a34a7bbf3" />
</div>

---
layout: section
---

# 下半年 IDP 目标

---

# 23 年上半年工作