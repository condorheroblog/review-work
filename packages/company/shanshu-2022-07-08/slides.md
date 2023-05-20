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
background: https://images.unsplash.com/photo-1619075120156-f5729c752edf?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218MHw5NDczNDU2Nnx8fHx8fHwxNjcxNDMwMDQ1&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1920
---

# 年终 Review

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
layout: two-cols
---

## 内部测试平台

<!-- <img border="rounded" class="w-36 ml-1/2" src="https://github.com/condorheroblog/review-work/assets/47056890/4d183a7d-2ed6-4f62-bd83-f6561bb59274" /> -->
<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/11293999-960b-4dd2-88ea-f8377bff8b2c" />
<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/27d7faf1-3b6d-4931-a03f-3ba527e6a515" />

::right::

<img border="rounded" class="w-full" src="https://github.com/condorheroblog/review-work/assets/47056890/4d183a7d-2ed6-4f62-bd83-f6561bb59274" />
---

## Code Time

<img border="rounded" class="h-9/10" src="https://github.com/condorheroblog/review-work/assets/47056890/ed47f779-2997-46d0-93a2-d27f4265c1f0" />

---
layout: center
---

# 下半年 IDP 回顾

1. SSG(Static Site Generation ) 导出 PDF 开源项目
2. 产品化项目脚手架升级

---

## SSG(Static Site Generation ) 导出 PDF 开源项目

SSG 导出 PDF，是一个通用的技术，可以用在 Vuepress 和 VitePress 生成的静态网站上，内部主要用于「产品手册」生成。

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

### 使用场景

---
layout: center
class: "text-center"
---

### FILA user document

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

## 产品化项目脚手架升级

1. UI 框架 Antd（用户）
2. React 周边（用户和开发）
3. 前端开发工具配置（开发）
4. 重构图标库（开发）

---

### UI 框架 Antd（用户）

产品体验和性能，大版本升级太困难，尝试采用小步慢跑的形式，试了两次暂停了，一个人精力不够，但是努力没有白费，为过度到 Antd5 打下基础。

<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/5601663d-28a4-4584-96fc-7fdda35f0ba1" />

---
layout: two-cols
---

### React 周边（用户和开发）

<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/723d40e1-a465-4eb0-a0b0-4a4c13d17a59" />

::right::

<div class="ml-10 h-full flex justify-center items-center">
  <ul>
    <li>更快（不兼容 IE）</li>
    <li>更小（打包体积小）</li>
    <li>更好（开发体验好）</li>
  </ul>
</div>

---

### 重构图标库（开发）

前端图标库，引用混乱，开发体验不好。

<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/f23c7025-9939-4c4c-8b64-8942bb93ac0c" />

---
layout: two-cols
---

命名文档

```
为了让 Icon 命名规范和更加稳定的运行，把 icon-colorful, icon-fill, icon-line 三个项目迁移到一个 planiverse 项目中了，**丹妮老师**新增的图标需要手动从 icon-colorful 或 icon-fill 或 icon-lin 项目找到添加购物车，然后添加到 planiverse 项目里面，一定要修改名字：

规则：

1. 全部小写
2. 多个单词使用 - 分隔
3. 图标分三类，分别以 Filled、Outlined 和 colorful 结尾

可参考 Ant Design Icons 和 Material Design Icons 命名：
- https://fonts.google.com/icons
- https://ant.design/components/icon-cn/

```

::right::

```
例子:

1. Filled

chenggong             check-circle-filled
Error                 close-circle-filled
Question              question-circle-filled
Warming               exclamation-circle-filled
save                  save-filled

2. Outlined

Calendar1             calendar-outlined
a-Group508            drag-outlined
delete                delete-outlined

3. colorful

Variant2              plus-square-colorful
huabanbeifen          exclamation-circle-colorful
a-huabanbeifen3       exclamation-refresh-colorful
a-huabanbeifen2       check-refresh-colorful
huaban                time-refresh-colorful
zhou                  week-circle-colorful
yue                   month-circle-colorful


```

---
layout: section
---

# 今年工作回顾

---

1. FILA 项目交付（包含项目手册）
2. Skechers 项目五个迭代
3. 一部分教研平台的代码重构

---

## FILA 项目交付（包含项目手册）

<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/b971b908-6761-45b0-a37d-3f0261951867" />

---

## Skechers 项目五个迭代

<img border="rounded" src="https://github.com/condorheroblog/review-work/assets/47056890/2a8fe2c3-14c8-456b-b499-cd1779518b6a" />

---

# 23 年上半年工作

目前项目还未对接算法，迭代在年后应该还会延期一点。但综合来看，上半年的工作是**保斯凯奇的交付**。

<img border="rounded" class="-mt-3" src="https://github.com/condorheroblog/review-work/assets/47056890/93e70ff8-5712-4281-acc5-e343e7d7ab61" />
