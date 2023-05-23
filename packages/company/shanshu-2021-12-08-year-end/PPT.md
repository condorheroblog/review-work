---
marp: true
size: 16:9
# theme: default
# theme: Uncover
theme: gaia
# _class: lead
class:
    - lead
    - invert
header: CondorHero
footer: 杉数科技
paginate: true
style: |
  section {
    background-color: #1f1f1f;
  }
---

<style>
  /* https://github.com/marp-team/marpit/issues/137#issuecomment-524175560 */
  section.column {
    overflow: visible;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-template-rows: 110px auto;
    grid-template-areas:
        "slideheading slideheading"
        "leftpanel rightpanel";
  }

  section.column h3,
  section.column .ldiv,
  section.column .rdiv {
    border: 1.5pt dashed dimgray;
    padding: 0 25pt;
  }
  section.column h3 {
      grid-area: slideheading;
      line-height: 110px;
      font-size: 50px;
      text-align: center;
  }
  section.column .ldiv { grid-area: leftpanel; }
  section.column .rdiv { grid-area: rightpanel; }
</style>

![bg left:40% 80%](https://github.com/condorheroblog/review-work/assets/47056890/162c0db7-37ef-4e62-b1cd-08229b9214c9)

# 李心伟的年终考评

2021-12-08

---

目录

- 第一部分 简述今年的主要工作重心

- 第二部分 做了哪些具体的事情

- 第三部分 问题和遗憾

- 第四部分 自我评定

- 第五部分 明年的工作计划

---

# <!--fit-->工作重心

---

### 工作重心
<!-- _class: column -->

<div class=ldiv>

#### 去年
  - 六国
  - 技术的全面升级
</div>

<div class=rdiv>

#### 今年
  - 好丽友二期和三期
  - 伴随技术升级的项目规范化
  - 知识布道者
</div>

---
# <!--fit--> 做了哪些事

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

![ width:600px](https://github.com/condorheroblog/review-work/assets/47056890/f3f08aa5-1239-4f7b-9fec-c2a9cb8b6716)

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

# <!--fit--> 展望未来
---

# 流程化规范化的建设

流程化规范化的建设，项目的成功不依赖于个人，尤其是review 机制，单元测试，而是团队协作的结果。

---
# 分享机制建设

打造学习型前端团队。

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

# 致谢

达哥、振宁、等合作的同事

---

# 感谢

硕哥

---

# END
