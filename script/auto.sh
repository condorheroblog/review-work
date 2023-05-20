#!/usr/bin/env bash
# author: Condor Hero
# set -x

# check unbound variable error
set -u # set -u = set -o nounset

# check command not found
set -e

SOURCE_CODE_LINK=https://github.com/condorheroblog/review-work/tree/main
SLIDES_LINK=https://condorheroblog.github.io/review-work

# generate ol
function OL_ITEM_LIST() {
    local REVIEW_DIRS="packages/${1}/*";
    local REVIEW_TEMP="\n| Title | SourceCode Link | Slides Link |\n|:---:|:---:|:---:|\n";
    for REVIEW_FILENAME in $REVIEW_DIRS
        do
            if [[ "$1" == "share" ]]
            then
                local FILE_NAME=$(basename $REVIEW_FILENAME)
                local HYPE_LINK_TITLE=$(echo $FILE_NAME | cut -d "." -f 1);
                REVIEW_TEMP+="| $HYPE_LINK_TITLE | [$HYPE_LINK_TITLE]($SOURCE_CODE_LINK/$REVIEW_FILENAME) | [$HYPE_LINK_TITLE]($SLIDES_LINK/$HYPE_LINK_TITLE) |\n";
            else
                local dir="./$REVIEW_FILENAME";
                if [ -d $dir ]
                then
                    # echo "\n Directory $dir exists. \n";
                    if [ -e "$dir/PPT.md" ]
                    then
                       REVIEW_TEMP+="| $(basename $REVIEW_FILENAME) | [$(basename $REVIEW_FILENAME)]($dir/PPT.md) | [$(basename $REVIEW_FILENAME)]($SLIDES_LINK/$(basename $REVIEW_FILENAME)) |\n";
                    elif [ -e "$dir/slides.md" ]
                    then
                       REVIEW_TEMP+="| $(basename $REVIEW_FILENAME) | [$(basename $REVIEW_FILENAME)]($dir/slides.md) | [$(basename $REVIEW_FILENAME)]($SLIDES_LINK/$(basename $REVIEW_FILENAME)) |\n";
                    fi
                else
                    REVIEW_TEMP+="| $(basename $REVIEW_FILENAME) | [$(basename $REVIEW_FILENAME)]($SOURCE_CODE_LINK/$REVIEW_FILENAME) | - |\n";
                    # echo "\n Error: Directory $dir does not exists. \n";
                fi
            fi
        done
    echo "$REVIEW_TEMP";
}

REVIEW_DIRS_ARR=(
    company
    share
);

# show content
REVIEW_CONTENT_ARR=(
    ""
    ""
);

for REVIEW_DIR_NAME in "${REVIEW_DIRS_ARR[@]}"
    do
        case $REVIEW_DIR_NAME in
           company )
                REVIEW_CONTENT_ARR[0]=$(OL_ITEM_LIST $REVIEW_DIR_NAME) ;;
            share )
                REVIEW_CONTENT_ARR[1]=$(OL_ITEM_LIST $REVIEW_DIR_NAME) ;;
            * )
                echo "Condition mismatch" ;;
        esac
    done

# ${BASH_SOURCE%/*} = __dirname
source "${BASH_SOURCE%/*}/template-readme.sh";

echo -e "$READMEHEAD" > README.md;

CHALK_NORMAL="$(printf '\033[39m')";
CHALK_YELLOW="$(printf '\033[93m')";
CHALK_BLUE="$(printf '\033[94m')";
CHALK_CYAN="$(printf '\033[96m')";

LOG=$(
cat << _EOF_
$CHALK_CYAN ${REVIEW_CONTENT_ARR[0]} $CHALK_NORMAL
$CHALK_BLUE ${REVIEW_CONTENT_ARR[1]}  $CHALK_BLUE
$CHALK_YELLOW Success！$CHALK_NORMAL
_EOF_
);

echo -e "$LOG";
