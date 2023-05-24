export READMEHEAD=$(
cat << _EOF_
<h1 align="center">review-work 👋</h1>
<p align="center">
	<em>一些工作的分享🤔</em>
</p>

### 🏠 [Work](https://github.com/condorheroblog/review-work)
${REVIEW_CONTENT_ARR[0]}
### 🧐 [Share](https://github.com/condorheroblog/review-work/tree/main/packages/share)
${REVIEW_CONTENT_ARR[1]}
### 🛠 Tech Stack

- [slidev](sli.dev)
- [Marp for VS Code](https://github.com/marp-team/marp-vscode)

### 🧱 Guide

#### Clone only the main branch.

\`\`\`bash
git clone -b main --single-branch git@github.com:condorheroblog/review-work.git
\`\`\`

#### Start a local server for Slidev

\`\`\`bash
# https://sli.dev/guide/install.html#slidev-entry
npm run slidev:dev
\`\`\`

#### Build hostable SPA

\`\`\`bash
# https://sli.dev/guide/install.html#slidev-build-entry
npm run slidev:build
\`\`\`

#### Commit triggers deploy

\`\`\`bash
deploy: shanshu-2021-12-08-year-end
# ===
deploy(company): shanshu-2021-12-08-year-end

deploy(share): shanshu-2021-12-08-year-end
\`\`\`

### ©opyright

代码遵循 [MIT](https://github.com/condorheroblog/review-work/blob/main/LICENSE) 许可
文字和图像遵循 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) 许可

_EOF_
);
