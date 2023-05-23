---
marp: true
theme: gaia
class:
  # - lead
  - invert
header: "蜡笔小心"
footer: "2021-11-18"
paginate: true
style: |
  section a {
      font-size: 30px;
  }
  p img {
    position: relative;
    left: 50%;
    transform: translateX(-50%);
    width: 50ch;
  }
  table {
    position: relative;
    left: 50%;
    transform: translateX(-50%);
  }
---

![bg](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/49cc3a07782b4dcbac5ad4eaa9971d30~tplv-k3u1fbpfcp-watermark.image?)

---

**背景**：对于终端 terminal 的使用，相信我们都不陌生，而且你可能还会拍着胸脯说，终端那不是天天都用，程序员必备呀，而且我还会把它打扮的花里胡哨的，就算使用一些默认的终端命令也是非常的好看，比如 Git、Vim、bash 等等，没错，我们今天说的就是终端的颜色。

比如我们常见的通过终端打开 Git 它的分支高亮提示：


![git 分支高亮](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/29f1c673b9e24cdfad2c72eb190d7a15~tplv-k3u1fbpfcp-watermark.image?)

---

当代码编译错误，我们会在终端收到高亮的错误提示，让我们非常直观且快速的定位到错误：

![错误提示 error](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/f2d09d848d9c48d88482877423ea26f2~tplv-k3u1fbpfcp-watermark.image?)

---

还有一些无关痛痒的警告也是可以通过终端来告诉我们的，比如 `npm install` 的警告：

![npm install的警告⚠️](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/598ed2005a884b779b84ae3f8f3c8d48~tplv-k3u1fbpfcp-watermark.image?)

以上是我们常看到的几个案例，不止看到过，甚至，你可能还写过它们，比如你写系统生成的日志，为了更直观的观察结果，定位问题，你会使用 [chalk](https://github.com/chalk/chalk) 或 [color](https://github.com/Qix-/color) 等这样的第三方库来标记重点信息，就像我们上面看到的几个例子那样。

---

当你看到或用到终端输出彩色字体的时候，不知道你心中有没有闪过一丝的好奇，这到底是怎么实现的，不过要想学明白它，可有点不容易，需要你会点编码的知识，尤其是 ANSI 的知识。

ASCII 你肯定听说过，ANSI 是什么东东来，别急，这就是我们接下来要带你学习的。

> 如果你对 ANSI 比较了解，可直接跳转到 「简版 chalk」章节。

---

## 目录


-   什么是 ANSI 转义序列
-   ANSI 的语法
-   简版 chalk
-   应用在其他语言上
-   概述
-   参考

---

## 什么是 ANSI 转义序列

计算机最底层的机制是二进制，它不认识 `a、b、c、1、2、3` 等等，我们人能识别的字符，那怎么办来，简单，一个字节等于 8 位，一个字符等于一个字节，我们维护一个表，等过变动 0 或 1 的位置，让固定的二进制编码去对应我们人能识别的字符就好了，比如二进制 `0100 0001` 就对应我们的大写字母 A。

---

![ASCII 表 w:500px ](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/26319f3778a94250b43fe962de844bbd~tplv-k3u1fbpfcp-watermark.image?)

---

但是这样也是有问题的，因为 `2**8=256` 我们只能表示二百五十六个字符，汉字都成千上万，所以以后又出现了 Unicode、UTF-8、UTF-16（字符用两个字节或四个字节表示）和 UTF-32（字符用四个字节表示），它们之间的关系，你还可以去看阮老师的文字 [字符编码笔记：ASCII，Unicode 和 UTF-8](http://www.ruanyifeng.com/blog/2007/10/ascii_unicode_and_utf-8.html) 加深印象。

到此，我们的计算机完成了，字符的展示，可是我们人类并不满足预测，为啥文字不能支持丰富的颜色、我想突出重点，文字为啥不能高亮，于是为了支持这种富文本的需求出现了 ANSI 编码。

---

维基百科对它的定义是：

> **ANSI escape sequences** are a standard for [in-band signaling](https://en.wikipedia.org/wiki/In-band_signaling "In-band signaling") to control cursor location, color, font styling, and other options on video [text terminals](https://en.wikipedia.org/wiki/Text_terminal "Text terminal") and [terminal emulators](https://en.wikipedia.org/wiki/Terminal_emulator "Terminal emulator"). Certain sequences of [bytes](https://en.wikipedia.org/wiki/Byte "Byte"), most starting with an [ASCII escape](https://en.wikipedia.org/wiki/Escape_character#ASCII_escape_character "Escape character") character and a [bracket](https://en.wikipedia.org/wiki/Bracket "Bracket") character, are embedded into text. The terminal interprets these sequences as commands, rather than text to display verbatim.'

---

翻译下就是：

> **ANSI 转义序列**是[带内信号](https://en.wikipedia.org/wiki/In-band_signaling "带内信令")的标准，用于控制视频[文本终端](https://en.wikipedia.org/wiki/Text_terminal "文本终端")和[终端仿真器](https://en.wikipedia.org/wiki/Terminal_emulator "终端模拟器")上的光标位置、颜色、字体样式和其他选项。某些[字节](https://en.wikipedia.org/wiki/Byte "字节")序列（大多数以[ASCII 转义](https://en.wikipedia.org/wiki/Escape_character#ASCII_escape_character "转义字符")字符和[括号](https://en.wikipedia.org/wiki/Bracket "括号")字符开头）被嵌入到文本中。终端将这些序列解释为命令，而不是逐字显示的文本。

看完有点懵是吧，你可把它的定位简单理解为这样：

> *ANSI 转义序列*是用于控制台/终端光标位置、更改和设置颜色和字体以及执行其他操作的指令。

这时你仔细想想，其实 ANSI 就是 ASCII 的扩展，只不过提供了额外的命令，我们可以用来改变终端的输出而已。

---

## ANSI 的语法

大部分以`ESC`[转义字符](https://zh.wikipedia.org/wiki/%E8%BD%AC%E4%B9%89%E5%AD%97%E7%AC%A6 "转义字符")和 `[` 字符开始 `m` 结束，中间为 code 码，以分号进行分割。比如：`ESC[31m`(31 表示字体红色)。但 ESC 是个字符串，不转义是不能使用的，通过 ASCII 表知道 ESC 对应的十进制值为 27，就选这个十进制作为转义的基准。

--- 

![Esc 对应的 ASCII 值 w:25ch](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/2a0c677476644267baa4783f97afc1fc~tplv-k3u1fbpfcp-watermark.image?)

---

现在把二十七给转换成八进制和十进制：

```js
const octal = Number(27).toString(8);
const hex = Number(27).toString(16);

console.log(octal, hex); // 33 1b
```

1. 八进制表示为 `\033`；
2. 十六进制表示为 `\x1B`；
3. `\u001B` 十六进制 Unicode 编码。

---

上面三种方式都是可以的，下面通过三种方式打印出红色字体的文字：

```js
// 1. default.js
console.log("Esc[31mhello！"); // Esc[31mhello！

// 2. hex.js
console.log("\x1b[31m我是红色！");

// 3. octal.js
console.log("\033[31m我是红色！");

// 4. unicode.js  \u001B === \u001b
console.log("\u001B[31m我是红色！");

```

---

使用 Node 运行会看到下面结果：


![三种方式打印出红色文字 w:27ch](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/0a5e34e6b30549fbb3dc2b343cd7f869~tplv-k3u1fbpfcp-watermark.image?)

除了第一个不是红色的文字外，其他三个案例都正常打印出红色的文字，这里推荐使用 Unicode 编码的形式的，兼容性更好。

---

### 颜色

第一个我们就学习如何输出颜色相关的知识。

#### 三位色

三位色表示二的三次方等于八，一共八种色，这八种色也是基本色，并且有各自的名称，黑色、红色、绿色、黄色、蓝色、品红、青色、白色。

颜色一般作用在前景色和背景色上，前景色就是文字的颜色，而背景色就是文字的背景颜色了。

从数字 30 ~ 37、40 ~ 47 分别表示前景色的颜色和背景色的颜色。

---

| 颜色 | FG | FG ANSI 写法| BG | BG ANSI 写法 |
| :---: | :---: | :---: | :---: | :---: |
|黑色 | 30 | `\u001b[30m` | 40 | `\u001b[40m` |
|红色 | 31 | `\u001b[31m` | 41 | `\u001b[41m` |
|绿色 | 32 | `\u001b[32m` | 42 | `\u001b[42m` |
|黄色 | 33 | `\u001b[33m` | 43 | `\u001b[43m` |
|蓝色 | 34 | `\u001b[34m` | 44 | `\u001b[44m` |
|品红 | 35 | `\u001b[35m` | 45 | `\u001b[45m` |
|青色 | 36 | `\u001b[36m` | 46 | `\u001b[46m` |
|白色 | 37 | `\u001b[37m` | 47 | `\u001b[47m` |
|默认前/背景色 | 39 | `\u001b[39m` | 49 | `\u001b[49m` |

---

这个有个小知识点，看代码：

```js
console.log("\u001b[31m 我是 ");
console.log(" 红色！ ");
console.log(" 1 + 1 = 2 ");
```

执行结果：

![没有结束命令](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/49be3c0e9a284d49aafa340cc5cfcee8~tplv-k3u1fbpfcp-watermark.image?)

---

发现问题没有，没错所有的字体都变成了红色，包括没有使用 ANSI 命令的代码，ANSI 的使用有点像 HTML 的双闭合标签，上面代码我们给了开始没给结束。

那简单了，我们添加一个结束就行了，有一个比较暴力的办法，**当 code 为 0 的 `\u001b[0m` 会重置我们设置的所有属性**，这个太猛了，我们现在只需要重置字体颜色，所以使用 39 就行了，即 `\u001b[39m` 恢复默认前景色，其实就是重置字体颜色，代码如下。

```js
console.log("\u001b[31m 我是 \u001b[39m");
```

---

结果:

![恢复默认前景色](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8969030ddd92472c9a6433c41016d124~tplv-k3u1fbpfcp-watermark.image?)

OK，现在来把八个字体颜色全部使用下：

```js
const colorText = (text, code, groundCode) => `\u001b[${code}m ${text} \u001b[${groundCode}m`;

const result = `
  ${colorText("A", 30, 39)} ${colorText("B", 31, 39)} ${colorText("C", 32, 39)} ${colorText("D", 33, 39)} 
  ${colorText("E", 34, 39)} ${colorText("F", 35, 39)} ${colorText("G", 36, 39)} ${colorText("H", 37, 39)}
  ${colorText("A", 40, 49)} ${colorText("B", 41, 49)} ${colorText("C", 42, 49)} ${colorText("D", 43, 49)} 
  ${colorText("E", 44, 49)} ${colorText("F", 45, 49)} ${colorText("G", 46, 49)} ${colorText("H", 47, 49)} 
`
console.log(result);
```

---

结果：

![打印出 A ~ H 对应的八种颜色](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/af9deea006e14c51907ba63ba031bdd0~tplv-k3u1fbpfcp-watermark.image?)

---

上面我们案例，前景色和背景色都是分开使用的能不能组合在一起来，答案是可以的，不然文章开头的 npm ERR 和 WARN 如何实现的？对伐！

![image.png](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/af9e47fc700d4c91bbb74d959d48945c~tplv-k3u1fbpfcp-watermark.image?)

---

现在我们就来实现 黑底红字的 ERROR 和 黄底黑字的 WARN：

```js
// 诀窍：多个颜色 分号 分割
console.log(`
  \n
  npm \u001b[31;40m ERROR \u001b[39;49m
  \n
  npm \u001b[30;43m WARN \u001b[39;49m
  \n
`);

```

---

当当当，非常完美的实现

![前/背景色](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/43eaab6b17e64536b344eedd6b981145~tplv-k3u1fbpfcp-watermark.image?)

---

#### 四位色

四位色即二的四次方等于十六，一共十六种色。

就像文字有粗体一样，颜色也有明亮，基于八种颜色分别明亮下，颜色就翻倍了达到了十二种，明亮后的颜色它们有自己的编码，分别是 90 ~ 97 前景明亮，100 ~ 107 背景明亮。

---

现在以蓝色和亮蓝色为例：

```js
console.log(`
  \n
  字体蓝色：\u001b[34m ERROR \u001b[39m 字体亮蓝色：\u001b[94m ERROR \u001b[39m
  \n
  背景：\u001b[44m WARN \u001b[49m 背景亮蓝色：\u001b[104m WARN \u001b[49m
`);
```

控制台运行如下：

![亮色案例 w:33ch](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5be4ef1c2b0744c293da99c4b3782909~tplv-k3u1fbpfcp-watermark.image?)

---
wiki 有一份颜色表充分描述了各平台对十六种颜色的支持。

![wiki 十六种颜色](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/60ae316217c74c73b1ac3ce60c07abbe~tplv-k3u1fbpfcp-watermark.image?)

---

要想达到明亮的效果，除了新的 code，还可以使用基本颜色编码配合编码 1 来实现同样的效果，编码 1 表示粗体或增加强度，使用的时候用分号和其他 code 分隔：

```js
console.log(`
  \n
  字体蓝色：\u001b[34m ERROR \u001b[39m 字体亮蓝色：\u001b[94m ERROR \u001b[39m 字体加粗亮蓝色： \u001b[1;34m ERROR \u001b[22;39m
`);
```

结果如下：

![加粗同时亮蓝色](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/b90e5d13c0154594a87604e32c41ee4a~tplv-k3u1fbpfcp-watermark.image?)

---

既然可以加强，那么就可以弱化（降低强度），弱化的编码为 2，look 下代码：

```js
console.log(`
  \n
  字体蓝色：\u001b[34m ERROR \u001b[39m 字体亮蓝色：\u001b[94m ERROR \u001b[39m
  字体加粗亮蓝色： \u001b[1;34m ERROR \u001b[22;39m 字体强度弱化： \u001b[2;34m ERROR \u001b[22;39m 
`);
```

运行结果，弱化不像强化，只对颜色有影响而对字体粗细没有影响：

![字体弱化](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/b96648ce27da4a38b81d52935c576e4f~tplv-k3u1fbpfcp-watermark.image?)

---

编码 1 和 2 出现的效果，我们可以通过 22 进行重置到正常颜色或强度。

上面探讨的弱化和强化针对的都是前景色，那么对背景色的影响呢，通过代码来观察下：

```js
console.log(`
  \n
  背景色蓝色：\u001b[44m BACKGROUND \u001b[49m 背景色亮蓝色：\u001b[104m BACKGROUND \u001b[49m
  背景色加粗亮蓝色： \u001b[1;44m BACKGROUND \u001b[22;49m 背景色强度弱化： \u001b[2;44m BACKGROUND \u001b[22;49m 
`);

```

---

运行结果：

![背景色运行结果](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/c5f71ddbad7244228e659ea00efb9c87~tplv-k3u1fbpfcp-watermark.image?)

四个颜色，背景亮蓝色的色值为： `#3b8eea`，剩下三个都为：`#2472c8`。**也就是说强化和弱化对背景色没有效果。**

强化和弱化虽然没有效果，但是却可以通过编码 7 来反显把前景色与背景色交换。

---

```
console.log(`
  \n
  背景色蓝色：\u001b[44m BACKGROUND \u001b[49m 
  蓝色反向：\u001b[7;44m BACKGROUND \u001b[27;49m
`);
```

这时我就想到，前景色先弱化在反显不就实现了背景色弱化，实践发现并没有生效。

---

#### 八位色

八位色即二的八次方等于二百五十六，一共 256 种色，它的语法是下面这样。

```
ESC[ … 38;5;<n> … m选择前景色
ESC[ … 48;5;<n> … m选择背景色

0-  7：标准颜色（同ESC [ 30–37 m）
8- 15：高强度颜色（同ESC [ 90–97 m）
16-231：6 × 6 × 6 立方（216色）: 16 + 36 × r + 6 × g + b (0 ≤ r, g, b ≤ 5)
232-255：从黑到白的24阶灰度色
```

---

比如前景色黑色：

```js
// m 前面的数字 0，这个位的数值可从 0 ~ 255 正好对应 256 中颜色
console.log("\u001b[38;5;0m 黑色 \u001b[39m");
```

0 ~ 255 对应的颜色色阶：

![八位色阶图 w:56ch](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/a5e83fce77ba48c384bcb2729b67982d~tplv-k3u1fbpfcp-watermark.image?)

---

我们通过代码把所有的颜色打印出来：

```js
const rangeArr = (len) => Array.from({ length: len }, (_, i) => i);
const color256 = (bg = "foreground") => rangeArr(2 ** 8).reduce((row, colorCode, colorIndex) => {
  const bgCode = bg === "foreground" ? 3 : 4;
  const lright = String(colorCode).padStart(3, 0);
  const text = `\u001b[${bgCode}8;5;${colorCode}m${lright} \u001b[${bgCode}9m`;
  if (colorIndex % 16 === 0) {
    row += `\n ${text}`;
  } else {
    row += text;
  }
  return row;
}, "");
```

如果我们想要 256 种前景色，直接调用 color256 函数即可：

```js
console.log(color256());
```

---

运行结果：

![256 种前景色](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/47474e92c7344ceab8319a0d96481bf8~tplv-k3u1fbpfcp-watermark.image?)

---

如果我们想要 256 种背景色，需要给 color256 函数传入参数 `background` 即可：

```js
console.log(color256("background"));
```

运行结果：


![256 种背景色 w:30ch](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/0c178d5bbe464ee58f910c05f35d28d1~tplv-k3u1fbpfcp-watermark.image?)

---

#### 二十四位色

二十四位色即二的二十四次方等于 16777216，一共 16777216 种色。

语法类似八位色，只不过中间的 5 改成了 2，n 改成了  RGB：

```
   ESC[ … 38;2;<r>;<g>;<b> … m选择RGB前景色
   ESC[ … 48;2;<r>;<g>;<b> … m选择RGB背景色
```

如果我们需要一个前景色品红，就应该这样写：

```js
console.log("\u001b[38;2;255;0;255m 品红 \u001b[39m");
```

---

运行结果：

![RGB 品红色 w:5ch](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/25bdea21f0f54f4f90dbe0a3c76a8c2e~tplv-k3u1fbpfcp-watermark.image?)

这个颜色的结果就不显示了，颜色过多，控制台也承载不下，但是我们可以写出全部展示的伪代码。



```js
const rangeArr = (len) => Array.from({ length: len }, (_, i) => i);
const bit24 = 2 ** 24;
for (r of rangeArr(bit24)) {
  for (g of rangeArr(bit24)){
    for(b of rangeArr(bit24)) {
      const code = String(r * bit24 * bit24 + g * bit24 + b);
      console.log(`\u001b[38;2;${r};${g};${b}m${code.padStart(3, 0)} \u001b[39m`)
    }
  }
}
```

---

若你感兴趣，还可以试试 RGB 对应的八个基准色，甚至是[十六色](https://zh.wikipedia.org/wiki/%E4%B8%89%E5%8E%9F%E8%89%B2%E5%85%89%E6%A8%A1%E5%BC%8F#16%E8%89%B2)。

![RGB 对应的八个基准色 w:45ch](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/9f63bdd970f148b4b322d6a3bdd07779~tplv-k3u1fbpfcp-watermark.image?)

---

### 其他装饰

#### 斜体

未广泛支持：

```js
console.log("\u001b[3m 斜体 \u001b[23m");
```


![斜体字](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/76b1e350a17d497c8af16ba62a552ecc~tplv-k3u1fbpfcp-watermark.image?)

---

#### 下划线


```js
console.log("\u001b[4m 下划线 \u001b[24m");
```

效果如下：

![underline](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/6479bc6bfd2e4ae98d16a162344bfb72~tplv-k3u1fbpfcp-watermark.image?)

---

#### 字体闪烁

闪烁分为两种：快闪（编码 6）和慢闪（编码 5），但是快闪不是所有终端都支持的，目前我的终端只支持慢闪 5，而且调试代码的时候不能在 VSCode 的终端，必须通过全局打开的 terminal。

```js
console.log("\u001b[94;5m 缓慢闪烁 \u001b[39;25m");
```

---

运行结果：


---

#### 隐藏

未广泛支持：

```js
console.log("前面有字 \u001b[8m 隐藏 \u001b[28m 后面有字");
```

运行结果：

![hidden](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/45c1a115dbc94d77ba96a5bcb9f069bc~tplv-k3u1fbpfcp-watermark.image?)

---

#### 删除线

未广泛支持：

```js
console.log("\u001b[9m 删除 delete \u001b[29m");
```

运行结果：

![delete](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/f54ffc6627574a27a00a9f9c76859b0b~tplv-k3u1fbpfcp-watermark.image?)

---

#### 选择图形再现参数

我们上面学习的编码都是比较常用的，Wiki 上维护了一个比较全的编码，如下图，基本上常用的都讲到了。

![选择图形再现参数 bg right w:35ch](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/a29fe0d391744da191e72738e06f7fbe~tplv-k3u1fbpfcp-watermark.image?)

---

### 光标

[ANSI 转义序列]((https://zh.wikipedia.org/wiki/ANSI%E8%BD%AC%E4%B9%89%E5%BA%8F%E5%88%97#24%E4%BD%8D)) 还有另一个更有用的模块即，终端窗口的光标操作，让你可以移动，或擦除终端部分内容。例如，让你在输入命令上左右移动光标以响应箭头键，或者制作进度条如下图这种。

这个内容我们留下次再展开讲。

---

## 简版 chalk

### 终端是否支持颜色

第一步肯定要判断下我们的终端是否支持颜色功能，NodeJS 可以使用内置的 TTY 来判断：

```js
const tty = require("node:tty");
// 支持 TRUE，否则 FALSE
const hasColors = tty.WriteStream.prototype.hasColors();
```

---

### 封装 format 函数

根据第一步检测的结构，封装 format 函数，变色采用的 ANSI 编码，前景色即字体颜色的格式为：`\u001B[31m需要变色的字符串\u001B[39m`，31 表示红色，39 表示关闭当前色，避免影响后面的内容。

所以 format 需要开始 startCode 和结束 endCode。

然后，如果终端不支持颜色功能，正确打印出传入的字符就行了，如果支持，那么就根据拼装 ANSI 语法打印出变色字体。

```js
const format = (startCode, endCode) => hasColors ? string => '\u001B[' + startCode + 'm' + string + '\u001B[' + endCode + 'm' : string => string;
```

---

### 封装颜色函数

比如说前景色红色，对应的 code 为 31，重置 code 为 39：

```
const red = format(31, 39);
```

### 使用

传入需要变色的字符串：

```js
console.log(red("变红！"));
```

---

### 输出结果

运行代码输出结果：

![red w:200](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/16a5912a477d44c18ffd92d34c947ed0~tplv-k3u1fbpfcp-watermark.image?)

---

## 应用在其他语言上

上文的演示案例，虽然全部都是使用 JS 的方法实现的，但只要你掌握了 ANSI 的知识，在任何语言都能使用，我们举个 Python 的例子：

```py
print("\033[31mHello\033[39m \033[33mPython3!\033[39m");
```

打印出红色的 `Hello` 黄色的 `Python3！`。

![打印出红色的 `Hello` 黄色的 `Python3！` w:900](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/856403d49aa44ee9bc281152c0378ccc~tplv-k3u1fbpfcp-watermark.image?)

---

## 概述

总结时刻，今天我们学习了 ANSI 转义序列，它主要包含颜色和光标两大类，颜色功能可以用来美化终端输出，光标功能可以用来制作 progress 或 loading，来增加代码友好的编译提示。

顺便我们实践了一把简版的chalk，光标功能实践 progress，我们只给出了案例，留待下篇文章再谈。

---

## 参考

- [Build your own Command Line with ANSI escape codes](https://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html#background-colors)
- [Wiki ANSI 转义序列](https://zh.wikipedia.org/wiki/ANSI%E8%BD%AC%E4%B9%89%E5%BA%8F%E5%88%97#24%E4%BD%8D)
- [yoctocolors](https://github.com/sindresorhus/yoctocolors)
- [progress](https://github.com/visionmedia/node-progress)


