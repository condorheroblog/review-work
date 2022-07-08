export READMEHEAD=$(
cat << _EOF_
        \n
        <h1 align="center">review-work 👋</h1>\n

        <p align="center">\n
            \t<p align="center">\n
                \t\t<em>一些工作的分享、总结和思考🤔</em>\n
            \t</p>\n
        </p>\n
        \n
        ### 🏠 [Homepage](https://github.com/condorheroblog/review-work)
        \n
        \n
        ${REVIEW_CONTENT_ARR[0]}

        \n
        ### 🧐 [share](./share)
        \n
        \n
        ${REVIEW_CONTENT_ARR[1]}

        \n
        <!-- 
        ### 🛠 Tech Stack
        \n
        \n
        - [slidev](sli.dev)
        -->
        \n
        \n
        ### 📝 Attention
        \n
        \n
        - [Marp for VS Code](https://github.com/marp-team/marp-vscode) 迁移到 [slidev](sli.dev)。 
        \n
        ### ©opyright
        \n
        \n
        代码遵循 [MIT](./LICENSE) 许可
        \n
        文字和图像遵循 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) 许可
        \n
        \n
_EOF_
);