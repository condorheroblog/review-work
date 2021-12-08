#!/usr/bin/env bash

REVIEW_COMPANY=company;

REVIEW_DIRS=$(ls $REVIEW_COMPANY)
for REVIEW_FILENAME in $REVIEW_DIRS
    do
        REVIEW_TEMP="$REVIEW_TEMP - [$REVIEW_FILENAME](./$REVIEW_COMPANY/$REVIEW_FILENAME/PPT.md)\n";
    done

READMEHEAD=$(cat << _EOF_
\n
<h1 align="center">review-work 👋</h1>\n

<p align="center">\n
	\t<p align="center">\n
		\t\t<em>一些工作的总结和思考🤔</em>\n
	\t</p>\n
</p>\n
\n
### 🏠 [Homepage](https://github.com/condorheroblog/review-work)
\n
\n
$REVIEW_TEMP
_EOF_);

echo -e $READMEHEAD > README.md;

REVIEW_NORMAL="$(printf '\033[0m')";
REVIEW_YELLOW="$(printf '\033[33m')";
echo -e "$REVIEW_YELLOW Success！$REVIEW_NORMAL $REVIEW_TEMP";