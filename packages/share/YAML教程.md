---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# background: https://source.unsplash.com/collection/94734566/1920x1080
background: https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/b57d56b846204d20ac1915343aa3fcae~tplv-k3u1fbpfcp-zoom-crop-mark:1304:1304:1304:734.awebp?
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
class : zoom
---

<style>
.zoom {
	zoom: 0.58
}
</style>

<Toc />

---

# 快速入门

YAML 最基础的三个部分：

1. mappings (hashes/dictionaries)
2. sequences (arrays/lists)
3. scalars (strings/numbers)

![](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/b0eb7e6ea1114babbc54b1a572d35400~tplv-k3u1fbpfcp-watermark.image?)

---

## YAML 的名字🤓

根据[YAML 1.0 规范文档 (2001-05-26)](https://yaml.org/spec/history/2001-05-26.html) YAML 是 `Yet Another Markup Language` 首字母缩略词，但后来为了和真正的标记语言区分，在[2002-04-07 ](https://yaml.org/spec/history/2002-04-07.html) 标准中改为 `YAML Ain't Markup Language` 的首字母缩写，缩写字母里面还有 YAML 这其实是个递归缩写。

`YAML（/ˈjæməl/）` 的发音 [jeml]，YAML 前取 Yet 的 [je] 发音，后押英文单词 camel(骆驼) 的 [ml] 。

## YAML 的特点

- `YAML`是一种非常**简单的基于文本的人类可读的语言**，用于在人和计算机之间交换数据。
- `YAML`是*不是一种编程语言*。它主要用于**存储配置信息**。
- `YAML` 的缩进就像 Python 的缩进一样优雅。
- `YAML` 还减少了 JSON 和 XML 文件中的大部分“噪音”格式，例如引号、方括号和大括号。

---

## YAML 需要注意的

- `YAML` 是**区分大小写**。
- `YAML` 不允许使用制表符 Tab 键，(你之所按下 Tab YAML 仍能使用，是因为编辑器被配置为按下 Tab 键会导致插入适当数量的空格)。
- `YAML`是遵循严格缩进的。

## YAML 基本使用

因为我们最熟悉的是 JSON，YAML 又是 JSON 的超集，可以通过简单的转换，让我们更容易的理解 YAML 的语法，这里有个不错的在线工具 [codebeautify](https://codebeautify.org/yaml-to-json-xml-csv)，你可以随时把写好的 YAML 语法转化为 JSON，来帮助你理解，不过并不建议你强烈依赖它。

---

### 后缀名

YAML 文件的后缀名是 `.yaml` 或 `.yml`，本着能少写不多写的原则，我们常用的是`.yml`。

### 键值对

YAML 易学就在这里，即使你没学习过任何 YAML 的语法，你也能大致看懂 YAML 文件，而 YAML 文件，最常见的就是键值对，常见的称法是对象、map 或 dict。

```bash
<key>: <value> 
```

其中`<key>`代表 *名称*，`<value>`代表 *数据* ，之间用分隔`: `（空格是必需的）。

```yaml
name: CondorHero
age: 18
```

对应到 JSON：

```json
{
	"name": "CondorHero",
	"age": 18
}
```

---

### 列表

说数组大家可能更加熟悉，列表通过在其项目前加上`-`（连字符）来表示。

```yaml
number:
  - One
  - Two
  - Three
```

对应到 JSON：

```json
{
	"number": [
		"One",
		"Two",
		"Three"
	]
}
```

---

这个列表是包含在对象里面的，如果我们像直接要一个数组呢，比如说下面这个 JSON 列表：

```json
[
	{
		"name": "CondorHero",
		"age": 18
	},
	{
		"name": "Shavahn",
		"age": "16"
	}
]
```

对应的 YAML 我们就可以这么写：

```yaml
-
  name: CondorHero
  age: 18
-
  name: Shavahn
  age: 16
```

---

### 注释

这个就很强大了，YAML 作为配置文件比 JSON 更流行，一在易读，而就在支持注释。YAML 的注释和 Bash、Python 的注释一样。例如：

```yaml
# 这是一行注释
```

> `YAML`不支持**块**或者**多行**注释。

---

### 多文档

在一个文件里面创建多个文档，它以三个破折号(---)开头，以三个句点(...)结束，开始和结束都是可选的，开头可以单独使用，但结束不能单独使用。

这个用的不多但很强大，可以把相同或类似的部分归为同一部分。

```yaml
---
 - XML
 - JSON
 - CSV
---
 - Unicode
 - ASCII
 - UTF8
...
```

---

对应在 JSON 中:

```json
[
	"XML",
	"JSON",
	"CSV",
	"Unicode",
	"ASCII",
	"UTF8"
]
```

---

以下介绍的 YAML 语法在其他语言可能并没有实现。

### Pairs

Pairs 是允许重复的命名值的有序列表。许多编程语言没有这种数据类型，因此应用程序可能会解释成对作为哈希表数组，每个哈希表包含一个键。请参见下面的示例以了解其用法。

这个有点像 JS 中 key 为 symbol 的对象。

```yaml
# Explicitly typed pairs.
Block tasks: !!pairs
  - meeting: standup
  - meeting: demo
  - break: lunch
  - meeting: all hands
Flow tasks: !!pairs [ meeting: standup, meeting: lunch ]
```

---

### Set

Set 更多的叫法是集合，它是具有**不同值**的无序节点集合，数组去重最快捷的方法了。请参见下面的示例以了解其用法。

```yaml
# Explicitly typed set.
players: !!set
  ? Mark
  ? Steve
  ? Smith

# Flow style
soccer teams: !!set { Chelsea, Arsenal, Liverpool }
```

---

Python 是支持这种数据类型的，上面的代码在 Python 展示为

![image.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/331160fc90f74694a710492bf3510228~tplv-k3u1fbpfcp-watermark.image?)

你可以通过这个网站 http://yaml-online-parser.appspot.com/ 来把 YAML 编译成 Python 代码。

---

## YAML 中的类型

`Perl`, `Python`, `PHP`, `Java`, `C#`, `Ruby`, and `JavaScript` 等大多数语言有的类型，YAML 都能很好地支持。

YAML 支持的数据类型列表如下：

Boolean、Numbers、Strings、Arrays、Maps、Null、Dates、Timestamp

> 关于变量这里有个好玩的事情，变量对应的英文单词是 variable，YAML 还可以用另一个单词 **scalars** 标量。不过也能理解 YAML 里面没有变量的定义，都是直接使用，所以数据类型更多像用于区分类型，这难道不是衡量标准吗，所以叫标量很合适。（这个异曲同工之妙就像 Typescript 中的**类型注解**一样）

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-3 mt-3>

<h3 text-center>比如：</h3>

```yaml
dataType:
  string: "YAML"
  integer: 123
  float: 12.345
  boolean: No
```

</div>

<div border-1 p-3 mt-3>

<h3 text-center>编译成 JSON：</h3>

```json
{
	"dataType": {
		"string": "YAML",
		"integer": 123,
		"float": 12.345,
		"boolean": "No"
	}
}
```

</div>

</div>

---

### 字符串（string）

字符串可以加单引号或双引号或者没有引号。

```yaml
quoted: 
  - 'single quoted string'
  - "double quoted strings"
  - without quoted string
```

上面定义的字符串都是有效的，编译成 JSON 如下：

```json
{
	"quoted": [
		"single quoted string",
		"double quoted strings",
		"without quoted string"
	]
}
```

---

### 单行/多行文本

涉及到字符串还有一个问题，当字符串比较多的时候，更好的展示，选择单行/多行文本展示。

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10 mt-10>

<h3 text-center>例如，配置 GitHub Actions 时候运行一些命令：</h3>

```yaml
# Multiline strings start with |
execute: |
  npm ci
  npm build
  npm test
```

</div>

<div border-1 p-10 mt-10>

<h3 text-center>编译成 JSON：</h3>

```json
{
	"execute": "npm ci\nnpm build\nnpm test\n"
}
```

</div>

</div>

---

例如，你想通过换行让 YAML 更加易读，而真正展示的时候是单行：

```yaml
single-line-string: >
  This
  should
  be
  one
  line
```

这就是它在 JSON 中的样子：

```json
{
	"single-line-string": "This should be one line\n"
}
```

Notion: 当使用 `>` 字符而不是 时 `|` ，每一个新行都将被解释为一个**空格**。

---

### 数值（Number）

数值有整数、小数、正数、负数、正无穷大、负无穷大、NaN（not a number）、科学计数法、进制表示。

<div grid="~ cols-2 gap-2" m="-t-2">

<div border-1 p-10 mt-3>

<h3 text-center>例如：</h3>

```yaml
integer: 12
decimal: 0.5
positive: +12
negative: -12
positive infinity: .inf
negative infinity: -.inf
not a number: .nan
# JS 数值可以通过下划线分割
number: 687_456
scientific counting method: 2.3e4
# 二进制
binary: 0b101010
```

</div>

<div border-1 p-10 mt-3>

<h3 text-center>通过 <a href="https://nodeca.github.io/js-yaml/" target="_blank">js-yaml</a> 转换为 JS 对象如下：</h3>


```js
{
	integer: 12,
	decimal: 0.5,
	positive: 12,
	negative: -12,
	'positive infinity': Infinity,
	'negative infinity': -Infinity,
	'not a number': NaN,
	number: 687456,
	'scientific counting method': 23000,
	binary: 42
}
```

</div>

</div>

---

### 布尔（boolean）

```yaml
boolean: true
```

编译为 JSON：

```json
{
	"boolean": true
}
```

用于表示真假，你在其他地方可能看到还可以使用 `True/False`, `ON/OFF`, `Yes/No` 或  `y/n`。

根据[YAML 1.2 规范文档，](https://yaml.org/spec/1.2/spec.html) “yes”和“no” 等不再被解释为布尔值。

> We have removed unique implicit typing rules and have updated these rules to align them with JSON's productions. In this version of YAML, boolean values may be serialized as “true” or “false”;
>
> 我们删除了独特的隐式类型规则并更新了这些规则以将它们与 JSON 的产生式保持一致。在这个版本的 YAML 中，布尔值可能被序列化为“true”或“false”；

不过，您可以使用 `!!bool` 来解析它们，这个就属于显示声明类型 *tags* 标签的内容了。

当然了，我更推荐直接 true 和 false 了。

---

### 空值（null）

YAML 声明空值有以下几种方法：

```yaml
manager: null
blank:
tilde: ~
title: null
~: null key
```

编译成 JSON:

```json
{
	"manager": null,
	"blank": null,
	"tilde": null,
	"title": null,
	"null": "null key"
}
```

---

### 时间戳（timestamp）

时间戳表示单个时间点。它使用符号形式 ISO8601。如果未添加时区，则假定该时区为 UTC。要描述日期格式，可以省略时间部分。在这种情况下，时间默认为00:00:00Z。请参见下面示例中的用法。

```yaml
time: 2020-12-07T01:02:59:34.02Z
timestamp: 2020-12-07T01:02:59:34.02 +05:30
datetime: 2020-12-07T01:02:59:34.02+05:30
notimezone: 2020-12-07T01:02:59:34.02
date: 2020-12-07
```

---
class: table-zoom
---

<style>
.table-zoom table {
	zoom: 0.7
}
</style>

### 类型值对照表

| 值                  | 描述                               |
| :-----------------: | :-------------------------------: |
| `~`, `null`, `Null` | null values                       |
| `1234`              | decimal                           |
| `0b101010`          | binary (base 64 encoding)         |
| `0x12AD`            | hexadecimal                       |
| `02677`             | octal                             |
| `.inf`, `-.Inf`     | infinity                          |
| `.NAN`              | not a number                      |
| `true`              | true                              |
| `false`             | false                             |
| `2020-12-07`        | date or timestamps                |
| `123_456.78`        | floating point or decimal numbers |
| `123.45e+78`        | exponential numbers               |

---

### 显示类型

默认情况下，YAML 会自动推断数据类型，就像 TypeScript 的类型推断一样，但是当你需要你也可以使用 标签（tags）显示指定类型，比如整数类型 两个英文感叹号 `!!` 再加上 int 就变成了一个整数 tag ——`!!int`。

```yaml
# The following value should be an int, no matter what:
should-be-int: !!int 3.2

# Parse any value to string:
should-be-string: !!str 30.25

# I need the next value to be boolean:
should-be-boolean: !!bool yes
```

编译成 JSON：

```json
{
	"should-be-int": 3,
	"should-be-string": "30.25",
	"should-be-boolean": true
}
```

---
class: table-zoom
---

<style>
.table-zoom table {
	zoom: 0.77
}
</style>

我这里也整理了一张：

| tags                | description                       |
| :-----------------: | :-------------------------------: |
| `!!int`             | integer                           |
| `!!float`           | float                             |
| `!!str`             | string                            |
| `!!bool`            | boolean                           |
| `!!null`            | null                              |
| `!!seq`             | Array                             |
| `!!map`             | map                               |
| `!!set`             | set                               |
| `!!omap`            | order map                         |
| `!!pairs`           | pairs                             |

---

## 高级功能

### 代码复用 [Node Anchors](https://yaml.org/spec/1.2.2/#692-node-anchors)

任何代码都讲究个复用，最基本的就是定义变量，但 YAML 无法定义变量，那么怎么做代码复用来，YAML 有自己的解决方案，通过 [Node Anchors](https://yaml.org/spec/1.2.2/#692-node-anchors)。

例如，复用 `Value` 值：

```yaml
First occurrence: &anchor Value
Second occurrence: *anchor
```

对应的 JSON 文件：

```json
{
	"First occurrence": "Value",
	"Second occurrence": "Value"
}
```

通过 `&` 标记一个节点，使用 `*` 字符引用它，从而达到复用。

---

### 块样式和流样式

#### 块样式

在文档**块样式**使用块用于结构化文档。它更容易阅读，但不那么紧凑，**例子**：

```yaml
color: 
  - red
  - yellow
  - blue
```

#### 流样式

`YAML`有一种称为**flow style**的替代语法，它允许在不依赖缩进的情况下内联编写*序列*和*映射*，分别使用一对方括号`[]`和大括号`{}`。

Flow 风格是`JSON`. 它不太容易阅读；然而，它提供了更多的紧凑性。


```yaml
color: [red, blue]
```

和

```yaml
- { name: "CondorHero", age: 18 } 
```

---

## YAML 与 JSON 的关系

你可能听说过 YAML 和 JSON 之间的超集与子集这样的关系，这个可以推荐你阅读 YAML1.2 版本的官方文档 1.3 小节 [Relation to JSON](https://yaml.org/spec/1.2-old/spec.html#id2759572)。

这里偷来 Google 翻译的：

![YAML 与 JSON 的关系](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/89e4f0b900de452d8a15df8e6a2e61b9~tplv-k3u1fbpfcp-watermark.image?)

实践中也是如此；每个 JSON 文件也是一个有效的 YAML 文件。

---

## XML、JSON、YAML

看下图，从左往右是 XML、JSON、YAML 文件，JSON 通过 `{}` 和 `[]` 等简化了 XML，变得更加直观，但是当嵌套过深 XML 需要找结尾标签，JSON 需要找结尾的 `}`，无论 XML 还是 JSON 都需要找结尾标记，很不直观，但 YAML 直接做的比 JSON 更加激进，连符号都没了，立体结构也变得扁平了，更加符合人类阅读习惯。

![XML、JSON、YAML](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5f9bf9a1f750470a8077f5bb4239a98a~tplv-k3u1fbpfcp-watermark.image?)

当我们从 XML 过渡到 JSON 的时候，你会惊叹，哇哦，少了这么多字符，优雅的符号变现更加直观，这真是绝绝子，现在当你看到 YAML，仔细了解了它的语法，肯定惊呼，哇哦，这么简洁的吗，那种感受不亚于从 XML 过渡到 JSON。

如果你熟悉 Markdown 和 HTML，YAML 的优雅写法丝毫不亚于从 HTML 迁移到 Markdown ，但是请注意的一点是，YAML 革命 JOSN 只限定在书写配置文件这个领域，不同设备的数据交互，依然是 JSON，因为它获得更好的兼容性更能被大多属于语言识别。

---

## YAML 频繁出现在哪些应用上

你或多或少肯定用过 YAML 作为配置文件，但你可能想不到它已经大规模的应用到各种应用上，比如：

- GitHub Action
- Swagger
- VuePress 等各种博客的配置文件
- Docker
- Kubernetes(K8s)
- Ansible
- Azure DevOps 
- Jenkins
- ...

对于前端，甚至可以大胆想象，从简单易读的方面来讲，前端 Babel、Eslint、TypeScript 等配置文件完全可以直接 YAML 取代。

需要注意的是，各个语言无法直接识别 YAML 文件，需要借助对应语言对应 YAML 库，例如 Python 是 PyYAML、Go 是 go-yam、JavaScript 是 js-yaml 等等。

---

## 工具汇总

因为各种语言没有对 YAML 提供了原生支持，所以还是在线调试比较方便，下面是我用到的几个使用 YAML 网站，主要包括了**校验、美化、转换**。

1. 校验 YAML 语法的正确性
	- [YAML Lint](http://www.yamllint.com/) 
	- [YAML Validator](https://codebeautify.org/yaml-validator) 

2. 美化
	- [YAML Beautifier](https://codebeautify.org/yaml-beautifier)

3. 转换
	- [YAML Converter](https://codebeautify.org/yaml-to-json-xml-csv) - 转换 `YAML` 到 `JSON`、`XML` 或 `CSV`(comma separated values) 格式。
	- [Online YAML Parser](http://yaml-online-parser.appspot.com/) - 输出 `YAML` 到 `JSON` 和 `Python`。
	- [YAML to PDF Table Converter](https://www.beautifyconverter.com/yaml-to-pdf-converter.php) - `YAML` 转换为 `PDF table`。
	- [js-yaml](https://nodeca.github.io/js-yaml/) YAML 输出到 JS。

---

## 总结

今天我们先了解了 YAML 名字，总结了 YAML 的特点和值得注意的地方，然后就是 YAML 的基本用法，后学习了高级用法，通过对比 XML、JSON、YAML 明白了数据序列化的演变，明白了 YAML 为何能取得开发者的芳心，作为配置文件出现在各大应用上面。

---

## 参考

- [yaml.org](https://yaml.org/)
- [introduction-to-yaml-125f](https://dev.to/paulasantamaria/introduction-to-yaml-125f)
- [introduction-to-yaml](https://www.educative.io/courses/introduction-to-yaml)
