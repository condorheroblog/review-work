#!/usr/bin/env bash

PATH=company;

DIRS=$(ls $PATH)
for FILENAME in $DIRS
    do
        TEMP="$TEMP - [$FILENAME](./$PATH/$FILENAME/PPT.md)\n";
    done
echo $TEMP;

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
$TEMP
_EOF_);

echo -e $READMEHEAD > README.md;