---
marp: true
theme: gaia
class:
#   - lead
  - invert
header: "蜡笔小心"
footer: "2021-11-18"
paginate: true
download: true
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
    margin-top: -20px;
    position: relative;
    left: 50%;
    transform: translateX(-50%);
  }
  th {
      min-width: 110px;
  }
---

![bg](https://upload-images.jianshu.io/upload_images/16069544-d00ad0a02296d3e6.png?imageMogr2/auto-orient/strip|imageView2/2/w/1200/format/webp)

---

**背景** ：上篇 [认识下 ANSI，写个简版 chalk](https://juejin.cn/post/7031352475386904606) 我们系统的学习了 ANSI 关于颜色的知识，并简单实现了一个 [chalk](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2Fchalk%2Fchalk "https://github.com/chalk/chalk")，然而 ANSI 剩下的一大部分关于光标的我们没有讲，这次我们就来学习 ANSI 关于光标的知识，并简单的实现一个 [progress](https://www.npmjs.com/package/progress)。

---

## 目录

-   ANSI 光标
    -   进度指示器
-   progress 的实现
-   总结
-   参考

---

## ANSI 光标

关于 ANSI 的基本语法就不讲了，可以去看 [认识下 ANSI，写个简版 chalk](https://juejin.cn/post/7031352475386904606) 里面有非常详细的讲解，现在直接进入光标功能讲解。

关于光标移动操作最常见的是下面四个：

---


| 编码         | ANSI        | 名称                    | 作用|
| :---------: | :---------: |:---------: | :---------: |
| `{n}` A | `\u001b[{n}A` |光标上移（Cursor Up）           | `向指定的方向移动 n（默认1）格。如光标已在屏幕边缘，则无效`|
| `{n}` B | `\u001b[{n}B` |光标下移（Cursor Down）         |上同|
| `{n}` C | `\u001b[{n}C` |光标前移（Cursor Forward）      |上同|
| `{n}` D | `\u001b[{n}D` |光标后移（Cursor Back）         |上同|

---

为了，更好的观察光标移动的现在，我们先来个小案例热身下。在使用 Webpack 等打包工具，我们启用服务的时候，一般都会有进度指示器，从 0% ~ 100% 从而给我们个心理预期。现在就来实现它。

---

### 进度指示器

思路，要想实现进度指示器，首先要搞定数字的事情，这个简单，一个循序搞定：

```js
for(let i  = 0; i <= 100; i++) {
  console.log(i);
}
```

运行程序控制台换行顺序输出结果：

![1~100 w:250](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/176a46dcd47b46cf87145d6871509ce1~tplv-k3u1fbpfcp-watermark.image?)

---

第二步的思路很关键：

1. 程序输出 1 结束的时候，我们应该把光标拉到行的开头，重写当前行，数字为 2。
2. 程序输出 2 结束的时候，我们应该把光标拉到行的开头，重写当前行，数字为 3。
3. 以此类推
100. 程序输出 99 结束的时候，我们应该把光标拉到行的开头，重写当前行，数字为 100。

---

总结就两个步骤：

1. 前移动光标。
2. 从光标开始，重写当前行。

前移动光标我们使用 `\u001b[{n}D`。重写行我们使用 NodeJs 的 `process.stderr.write`。

好了，结果输出最长位为 `100%` 四位，为了保证光标能前移到行首，我们给的 `n = 4`。

---

```js
// 同步睡眠函数
const asyncSleep = (ms) => {
  const startTime = Date.now();
  let nowTime = startTime;
  while (nowTime - startTime < ms) {
    nowTime = Date.now();
    continue;
  }
}

const loading = () => {
  for(let i = 0; i <= 100; i++) {
    asyncSleep(1000)
    // 光标前移四格
    process.stderr.write("\u001b[4D");

    asyncSleep(1000)
    process.stderr.write(`${i}%`);
  }
}
loading()
```

---

运行程序，中间加了睡眠函数，来模拟加载或打包过程，能很直观的看到光标和重写的变化，动图只录制了十秒：

![2021-11-17 17-11-01.2021-11-17 17_12_21.gif w:350](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/6037be2973ff408a9db60ef04172e1cd~tplv-k3u1fbpfcp-watermark.image?)

上面只是为了给你观察光标的移动，我们可以简单修改下代码，移动光标立刻重写，以达到完全模拟进度提示。

---

```js
// 改了 loading 的代码
const loading = () => {
  for(let i = 0; i <= 100; i++) {
    asyncSleep(100)
    // 光标前移四格
    process.stderr.write(`\u001b[4D${i}%`);
  }
}
```

---

看下完美的运行效果：

![2021-11-17 17-18-07.2021-11-17 17_18_36.gif w:540](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/3455bc726cb44536a75386fe82bae9e0~tplv-k3u1fbpfcp-watermark.image?)

---

刺激不，看到百分比在函数执行完之前从`1%`到无缝变化`100%`。

OK，我们学会了前移操作，那上下后移，甚至清行、清屏对你来说也是小意思了。

Wiki 上维护了一份不完整的 ANSI 控制序列列表如下，大胆的发挥你的想象去使用吧。

![一些ANSI控制序列 bg right w:600](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/89a8af8059854239b75c0d2942d19765~tplv-k3u1fbpfcp-watermark.image?)

---

## progress 的实现

上面的百分比实现有点简单，接下来我们实现一个难点的，实现一个类似 [progress](https://www.npmjs.com/package/progress) 的 barLoading。

![2021-11-16 17-35-45.2021-11-16 17_36_09.gif w:500](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/1838db509e25479ea9994733e0146206~tplv-k3u1fbpfcp-watermark.image?)

---

代码不难写重要的是思路，我们来搞下思路：

0. 光标定位到行首
1. 进度条的长度是函数的参数。
2. 进度条的长度渲染的是空格。
3. 我们给空格加上背景色就完成了。

好了，我们来看代码：

---

```js

// 同步延时器
const asyncSleep = (ms) => {
  const startTime = Date.now();
  let nowTime = startTime;
  while (nowTime - startTime < ms) {
    nowTime = Date.now();
    continue;
  }
}

const barProgress = (total) => {
  for(let i = 0; i <= total; i++) {
    // 1. 光标定位到行首
    process.stderr.write(`\u001b[${total + 100}D`);

    // 2. 睡眠 100ms
    asyncSleep(100);
    let left = i, right = total - i, whiteSpace = "", greenSpace = "";

    // 加载完成的空格数
    while (left) {
      greenSpace += " ";
      left--;
    }

    // 未加载的空格数
    while (right) {
      whiteSpace += " ";
      right--;
    }
    // 填充背景色
    const leftBg = `\u001b[42m${greenSpace}\u001b[49m`;
    const rightBg = `\u001b[47m${whiteSpace}\u001b[49m`;

    // 输出终端
    process.stderr.write(`${leftBg}${rightBg}${i}%`);
  }
}

```

---

使用的时候直接调用就行了，比如说：`barProgress(20);`，你可以随便改变传入的参数来决定 progress 的长度。

除了我们演示的 progress 我们还知道一种井号进度条，有时候安装 npm 包的时候会出现，演示效果如下：

![2021-11-17 18-57-40.2021-11-17 18_58_34.gif](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/cbe87733a47044dab84ac7a229e66d61~tplv-k3u1fbpfcp-watermark.image?)

---
这个实现很简单了，去掉颜色填充，左边填充变井号，右边仍然保持空格，立刻就能见到效果。

```
const poundProgress = (total) => {
  for(let i = 0; i <= total; i++) {
    // 1. 光标定位到行首
    process.stderr.write(`\u001b[${total + 100}D`);

    // 2. 睡眠 100ms
    asyncSleep(50);
    let left = i, right = total - i, whiteSpace = "", greenSpace = "";

    // 加载完成的空格数
    while (left) {
      greenSpace += "#";
      left--;
    }

    // 未加载的空格数
    while (right) {
      whiteSpace += " ";
      right--;
    }

    // 输出终端
    process.stderr.write(`[${greenSpace}${whiteSpace}]${i}%`);
  }
}

poundProgress(100);
```

---

掌握了精髓我们想怎么玩就怎么玩，比如五角星的 progress：


![2021-11-17 22-22-38.2021-11-17 22_23_22.gif w:400](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/00742e11119343d0b329f05cbaca01dd~tplv-k3u1fbpfcp-watermark.image?)

---

## 总结

基于上篇文章 [认识下 ANSI，写个简版 chalk](https://juejin.cn/post/7031352475386904606) 留的知识点，我们系统学习了光标的用法，并带大家实践了平时常见的加载器和 progress，行文最后推荐个基于 ANSI 实现的 npm 包，[ansi-escape-sequences](https://www.npmjs.com/package/ansi-escape-sequences#module_ansi-escape-sequences.style)。

---

## 参考

- [progress](https://www.npmjs.com/package/progress)
