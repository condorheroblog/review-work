export READMEHEAD=$(
cat << _EOF_
<h1 align="center">review-work 👋</h1>
<p align="center">
	<em>一些工作的分享🤔</em>
</p>

### 🏠 [Work](https://github.com/condorheroblog/review-work)
${REVIEW_CONTENT_ARR[0]}
### 🧐 [Share](./share)
${REVIEW_CONTENT_ARR[1]}
### 🛠 Tech Stack

- [slidev](sli.dev)
- [Marp for VS Code](https://github.com/marp-team/marp-vscode)

### ©opyright

代码遵循 [MIT](./LICENSE) 许可
文字和图像遵循 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) 许可

_EOF_
);
