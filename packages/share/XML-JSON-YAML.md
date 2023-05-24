---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# background: https://source.unsplash.com/collection/94734566/1920x1080
background: https://github.com/condorheroblog/review-work/assets/47056890/fe16df63-4f59-4082-9890-bf2076416a3c
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

## 数据序列化

![数据序列化](https://github.com/condorheroblog/review-work/assets/47056890/68447a4d-e220-4697-a22e-bca6db1ed246)

---
layout: center
---

<blockquote>
数据序列化是将复杂数据结构中存在的数据对象转换为字节流以在物理设备上进行存储、传输和分发的过程。
计算机系统的硬件架构、操作系统、寻址机制可能会有所不同。数据的内部二进制表示在每个环境中也相应地变化。在这种不同环境之间存储和交换数据需要一种所有系统都能理解的平台和语言中立的数据格式。[来源](https://devopedia.org/data-serialization#Microsoft-Docs-2020)
一旦序列化数据从源机器传输到目标机器，就会执行从字节序列创建对象的反向过程，称为*反序列化*。重建的对象是原始对象的克隆。[来源](https://devopedia.org/data-serialization#del-Alba-2016 "德尔阿尔巴 2016")
</blockquote>

通过上面的解释，我们知道数据序列化（data serialization language）其实就是 **数据交换**（Data exchange）的过程。[来源](https://devopedia.org/data-serialization#Reitz-and-Schlusser-2020)

> 应用程序的数据序列化格式的选择取决于数据复杂性、人类可读性需求、速度和存储空间限制等因素。XML、JSON、BSON、YAML、MessagePack 和 protobuf 是一些常用的数据序列化格式。

---

你可以阅读一下这个列表查看 [用于数据交换的常用语言](https://zh.wikipedia.org/wiki/%E6%95%B0%E6%8D%AE%E4%BA%A4%E6%8D%A2#%E7%94%A8%E6%96%BC%E6%95%B8%E6%93%9A%E4%BA%A4%E6%8F%9B%E7%9A%84%E5%B8%B8%E7%94%A8%E8%AA%9E%E8%A8%80)。

![](https://github.com/condorheroblog/review-work/assets/47056890/d40cb173-f7b7-49b4-b696-d19f88a230f2)


搞清了数据序列化，你以为我接下来要带你学习 XML、JSON 和 YAML 了，NO，那不是我们今天的重点。

今天，我的主要任务是帮你对比这三者各有什么优劣，以及它们的应用场景。

---

## JSON

首先，我们来介绍我们最熟悉的 JOSN，也就是 JavaScript Object Notation，被称作 JavaScript 对象表示法，是由[道格拉斯·克罗克福特](https://zh.wikipedia.org/wiki/%E9%81%93%E6%A0%BC%E6%8B%89%E6%96%AF%C2%B7%E5%85%8B%E7%BE%85%E5%85%8B%E7%A6%8F%E7%89%B9 "道格拉斯·克罗克福特")构想和设计的一种轻量级[数据交换格式](https://zh.wikipedia.org/wiki/%E6%95%B0%E6%8D%AE%E4%BA%A4%E6%8D%A2 "数据交换")，归根结底是一种数据交换语言。

需要注意的是，JSON 包含两部分内容：

- 对象（不同的语言中，对*对象（object）*的解释不同 ，纪录（record），结构（struct），字典（dictionary），哈希表（hash table），有键列表（keyed list），或者关联数组 （associative array）。
- 数组（下标可以按顺序索引，即值的有序列表（An ordered list of values））

数组之所以是 JSON，其实因为数组是一种特殊的对象，而 JSON 支持的基本类型有：

---

JSON 的基本数据类型：

- number 数值：十进制数，不能有前导0，可以为负数，可以有小数部分。还可以用`e`或者`E`表示指数部分。不能包含非数，如NaN。不区分整数与浮点数。JavaScript用双精度浮点数表示所有数值。
- string 字符串：以双引号`  ""  `括起来的零个或多个[Unicode](https://zh.wikipedia.org/wiki/Unicode "Unicode")[码位](https://zh.wikipedia.org/wiki/%E7%A0%81%E4%BD%8D "码位")。支持[反斜杠](https://zh.wikipedia.org/wiki/%E5%8F%8D%E6%96%9C%E6%9D%A0 "反斜杠")开始的[转义字符序列](https://zh.wikipedia.org/wiki/%E8%BD%AC%E4%B9%89%E5%AD%97%E7%AC%A6%E5%BA%8F%E5%88%97 "转义字符序列")。
- boolean 布尔值：表示为`true`或者`false`。
- array 数组：有序的零个或者多个值。每个值可以为任意类型。序列表使用方括号`[`，`]`括起来。元素之间用逗号 `,` 分割。形如：`[value, value]`
- object 对象：若干无序的“键-值对”(key-value pairs)，其中键只能是字符串[[1]](https://zh.wikipedia.org/wiki/JSON#cite_note-1)。建议但不强制要求对象中的键是独一无二的。对象以花括号`  {  `开始，并以`  }  `结束。键-值对之间使用逗号分隔。键与值之间用冒号`  :  `分割。
- 空值：值写为`null`

因为我们平时比较熟悉 JSON 这种数据格式，我下面所有的案例代码基本以下面这个例子为基准，这是一个学生信息，包含了对象、列表、数字、字符串，布尔值、null 基本上大部分语言支持的类型，JSON 都包括了，**在兼顾易读的基础上，JSON 尽可能多的兼容语言类型，变得非常的灵活，这就是 JSON 广泛应用的原因，尤其是在前后端通信上。**

---

# 一个 JSON 案例

```json
{
	"id": 100002,
	"name": "令狐冲",
	"age": 28,
	"gender": "male",
	"hobby": [ "ping-pong", "basketball", "swim", "run" ],
	"marriage": true,
	"address": {
		"country": "China",
		"province": "Beijing",
		"district": "Haidian",
		"number": null
	}
}
```

对于 JSON 数据的访问，各个语言有各自的实现，比如 Python 就有切片数组比 JS 是非常的方便，如果你无法确定访问的正确性，自己调试下，也可通过 [jsonpath](https://jsonpath.com/) 来校验。

最后，如果你对 JSON 不是很明白可以去 [www.json.org/](https://www.json.org/json-zh.html) 学习，如果你是个前端还不明白 JSON 可太没天理了，你应该去 MDN 这里好好反思(学习) [Working with objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects)。

---

## XML

XML 全称叫做 Extensible Markup Language，就像 HTML、CSS 一样，它是一种标记语言（标记语言不属于传统意义上的编程语言），且是一种具备结构化特征的数据交换语言，如果你熟悉 HTML 那么两分钟之内你绝对能学会 XML 这种标记语言。我们来实践下它的语法，依然以上面学生信息为例：

```xml
<!-- 这是文档类型描述，没有闭合标签 -->
<?xml version="1.0" encoding="UTF-8" ?>
<!-- 我需要一个根标签 -->
<root>
	<id>100002</id>
	<name>令狐冲</name>
	<age>28</age>
	<gender>male</gender>
	<hobby>ping-pong</hobby>
	<hobby>basketball</hobby>
	<hobby>swim</hobby>
	<hobby>run</hobby>
	<marriage>true</marriage>
	<address>
		<country>China</country>
		<province>Beijing</province>
		<district>Haidian</district>
		<number/>
	</address>
</root>
```

---

XML 其实比 JSON 更加广泛的使用，从名字上你也能看出来，它比较贴近 HTML，所以得到了广泛的支持。

之前的博客时代用于订阅 feed 网站更新的 RSS 语言 和前端 XML Request 请求，就是 XML 语言的最佳实践。

因为你比较习惯 JSON，所以想要写出好的 XML，可以对比 JSON 来写 XML。XML 的标签名就是对象的 key，标签内容是对象的 value，所以 XML 的标签名是自定义的，这点不同于 HTML 中使用的标签都是预定义的。

记住，XML 和 HTML 没有关系，就像 JavaScript 和 Java 、雷锋和雷峰塔一样。XML 是独立于软件和硬件的信息传输工具。

XML 是数据存储的一种方式，那我们还需要取出数据，这个就是 Xpath（[W3C 的一个标准](https://www.w3.org/TR/xpath/all/)）使用路径表达式在 XML 文档中进行导航。

如果你想学习 Xpath 可以去 [WiKi XPath](https://zh.wikipedia.org/wiki/XPath) 或菜鸟教程的 [Xpath-菜鸟教程](https://www.runoob.com/xpath/xpath-tutorial.html) 了解。

当然事实不用辣么麻烦，我们可以利用 [Xpath Generator](https://xmltoolbox.appspot.com/xpath_generator.html) 来直观地生成相应的 XPath，通过 [Xpath-Tester](https://codebeautify.org/Xpath-Tester)  来校验生成的 Xpath。

比如我们在 XML 中索引 swim: `/root/hobby[2]`，其实 JSON 也有对应的索引网站这个应用的太多了没必要介绍。

XML 很简单，可直达 MDN 学习 [XML_introduction](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction)。

---

## XML 和 JSON 的对比

我们观察 XML 和 JSON 对同一个学生不同描述，我们能够发现以下几点：

- JSON 是无法添加注释的，但 XML 可以。
- XML 丧失了部分数据类型的支持，比如数值，而 JSON 支持的比较友好。
- JSON 更加简洁，比如对于数组的处理，JSON 直接通过 `[` 和 `]` 来表示，更直观简洁。

好了，接下来的事情就比较碎三观了。

---

### JSON5 让 JSON 支持注释

[JSON5](https://json5.org/) 是 JSON 的超集，在继承原有语法的基础上对其进行了扩展，比如：

- 对象，数组可以有一个尾随逗号。
- 字符串可以是单引号。
- 数字可能以明确的加号开头。
- 等等。

最重要的是 [JSON5](https://json5.org/) 让 JSON 支持了单行和多行注释。

照理来讲 [JSON5](https://json5.org/) 支持注释，它此时作为配置文件应该很流行才对，但事情并没有这么发展，因为我们🈶更好的替代方案 YAML。

---

### XSD/DTD 让 XML 支持更多的数据类型

XML 本身不支持数值类型，但我们可以借助 XML 是可以定义 tag 属性的，我们预定义一个 type 就可以像下面这样：

```
<age type="number">28</age>
```

自己写的话也太 low 了，我们可以借助一些工具，比如说 XSD(XML Schema Definition（XSD）)/DTD，其中 XSD 是 W3C 推荐的标准，我们就以它为演示好了，把上面的学生信息翻译为 XSD。

---

```xml
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xs:element name="root">
		<xs:complexType>
			<xs:sequence>
				<xs:element type="xs:int" name="id"/>
				<xs:element type="xs:string" name="name"/>
				<xs:element type="xs:byte" name="age"/>
				<xs:element type="xs:string" name="gender"/>
				<xs:element type="xs:string" name="hobby" maxOccurs="unbounded" minOccurs="0"/>
				<xs:element type="xs:string" name="marriage"/>
				<xs:element name="address">
					<xs:complexType>
						<xs:sequence>
							<xs:element type="xs:string" name="country"/>
							<xs:element type="xs:string" name="province"/>
							<xs:element type="xs:string" name="district"/>
							<xs:element type="xs:string" name="number"/>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
</xs:schema>
```

---

我们可以看到 XSD 不仅补充了类型，而且对子节点有哪些，顺序如何等等做了严格的限制，相对 XML，XSD 的语法太不亲民了，你可以使用 [xsd-generator](https://www.freeformatter.com/xsd-generator.html) 让 XML 直接生成 XSD 语法。当然如果你要自己写的话，可以使用 [xml-validator-xsd](https://www.freeformatter.com/xml-validator-xsd.html) 来校验下。

至于 DTD，也就是 Document Type Definition 给你自己学习了，其使用方式和 XSD 差不多。

---

### schema 让 XML 和 JSON 变得更严格

从 XSD 的例子，你应该可以体会到 XML 的严谨性了，不仅对数据做了要求，对格式也做了严格的限定。

目前 JSON 只有数据类型的支持，那么它如何支持更严格的结构呢，这就是 [JSON Schema](https://json-schema.org/)，但是还没有统一成标准，没有被广泛地接纳，但我们可以一窥它的究竟，把案例学生信息放到这个网站[jsonschema](https://jsonschema.net/)直接转换成 [JSON Schema](https://json-schema.org/)。

---

<style>
.slidev-layout {
	overflow: auto;
}
</style>

```json
{
		"$schema": "http://json-schema.org/draft-07/schema",
		"$id": "http://example.com/example.json",
		"type": "object",
		"title": "The root schema",
		"description": "The root schema comprises the entire JSON document.",
		"default": {},
		"examples": [
				{
						"id": 100002,
						"name": "令狐冲",
						"age": 28,
						"gender": "male",
						"hobby": [
								"ping-pong",
								"basketball",
								"swim",
								"run"
						],
						"marriage": true,
						"address": {
								"country": "China",
								"province": "Beijing",
								"district": "Haidian",
								"number": null
						}
				}
		],
		"required": [
				"id",
				"name",
				"age",
				"gender",
				"hobby",
				"marriage",
				"address"
		],
		"properties": {
				"id": {
						"$id": "#/properties/id",
						"type": "integer",
						"title": "The id schema",
						"description": "An explanation about the purpose of this instance.",
						"default": 0,
						"examples": [
								100002
						]
				},
				"name": {
						"$id": "#/properties/name",
						"type": "string",
						"title": "The name schema",
						"description": "An explanation about the purpose of this instance.",
						"default": "",
						"examples": [
								"令狐冲"
						]
				},
				"age": {
						"$id": "#/properties/age",
						"type": "integer",
						"title": "The age schema",
						"description": "An explanation about the purpose of this instance.",
						"default": 0,
						"examples": [
								28
						]
				},
				"gender": {
						"$id": "#/properties/gender",
						"type": "string",
						"title": "The gender schema",
						"description": "An explanation about the purpose of this instance.",
						"default": "",
						"examples": [
								"male"
						]
				},
				"hobby": {
						"$id": "#/properties/hobby",
						"type": "array",
						"title": "The hobby schema",
						"description": "An explanation about the purpose of this instance.",
						"default": [],
						"examples": [
								[
										"ping-pong",
										"basketball"
								]
						],
						"additionalItems": true,
						"items": {
								"$id": "#/properties/hobby/items",
								"anyOf": [
										{
												"$id": "#/properties/hobby/items/anyOf/0",
												"type": "string",
												"title": "The first anyOf schema",
												"description": "An explanation about the purpose of this instance.",
												"default": "",
												"examples": [
														"ping-pong",
														"basketball"
												]
										}
								]
						}
				},
				"marriage": {
						"$id": "#/properties/marriage",
						"type": "boolean",
						"title": "The marriage schema",
						"description": "An explanation about the purpose of this instance.",
						"default": false,
						"examples": [
								true
						]
				},
				"address": {
						"$id": "#/properties/address",
						"type": "object",
						"title": "The address schema",
						"description": "An explanation about the purpose of this instance.",
						"default": {},
						"examples": [
								{
										"country": "China",
										"province": "Beijing",
										"district": "Haidian",
										"number": null
								}
						],
						"required": [
								"country",
								"province",
								"district",
								"number"
						],
						"properties": {
								"country": {
										"$id": "#/properties/address/properties/country",
										"type": "string",
										"title": "The country schema",
										"description": "An explanation about the purpose of this instance.",
										"default": "",
										"examples": [
												"China"
										]
								},
								"province": {
										"$id": "#/properties/address/properties/province",
										"type": "string",
										"title": "The province schema",
										"description": "An explanation about the purpose of this instance.",
										"default": "",
										"examples": [
												"Beijing"
										]
								},
								"district": {
										"$id": "#/properties/address/properties/district",
										"type": "string",
										"title": "The district schema",
										"description": "An explanation about the purpose of this instance.",
										"default": "",
										"examples": [
												"Haidian"
										]
								},
								"number": {
										"$id": "#/properties/address/properties/number",
										"type": "null",
										"title": "The number schema",
										"description": "An explanation about the purpose of this instance.",
										"default": null,
										"examples": [
												null
										]
								}
						},
						"additionalProperties": true
				}
		},
		"additionalProperties": true
}
```

---

### 小结

XML 和 JSON 具备相当程度的相似性，在实际应用中，往往也可以比较和替代，非要分个高下的话，JSON 往往是更为简洁、快速的那一个，而 XML 则更为严谨、周全。

---

## YAML

因为 YAML 容易阅读还能写注释，所以它作为配置文件使用是越来越流行了，随着 YAML 的更新，目前还未看到特别好全的教程，所以需要单独成篇来介绍下它，请期待~

教程已更新：[YAML 教程](https://juejin.cn/post/7040030169670631437 "YAML 教程")

YAML 使用省略了开闭合标志，同时采用缩进，让 YAML 更加符合人类水平的阅读习惯，但 YAML 不为各个语言原生支持，所以 YAML 往往作为配置文件或日志文件出现，数据交换依然是 JSON 为主；

XML、JSON 和 YAML 优雅对比：

![XML、JSON 和 YAML 优雅对比](https://github.com/condorheroblog/review-work/assets/47056890/8a714139-47a3-478c-9c20-ddaceea01947)

---

## 参考

- [data-serialization](https://devopedia.org/data-serialization)
- [Data Serialization Languages](https://www.youtube.com/watch?v=GXQKX7acADc)

