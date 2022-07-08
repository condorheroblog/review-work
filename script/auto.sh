#!/usr/bin/env bash
# author: Condor Hero
# set -x

# check unbound variable error
set -u # set -u = set -o nounset

# check command not found
set -e

# generate ol
function OL_ITEM_LIST() {
    local REVIEW_DIRS="${1}/*";
    local REVIEW_TEMP;
    for REVIEW_FILENAME in $REVIEW_DIRS
        do
            if [[ "$1" == "share" ]]
            then
                local HYPE_LINK_TITLE=$(echo "${REVIEW_FILENAME/"${1}/"/}" | cut -d "." -f 1);
                REVIEW_TEMP+=" - [$HYPE_LINK_TITLE](./$REVIEW_FILENAME)\n";
            else
                local dir="./$REVIEW_FILENAME";
                if [ -d $dir ] 
                then
                    # echo "\n Directory $dir exists. \n";
                    if [ -e "$dir/PPT.md" ]
                    then
                       REVIEW_TEMP+=" - ["${REVIEW_FILENAME/"${1}/"/}"]($dir/PPT.md)\n";
                    elif [ -e "$dir/slides.md" ]
                    then
                       REVIEW_TEMP+=" - ["${REVIEW_FILENAME/"${1}/"/}"]($dir/slides.md)\n";
                    fi
                else
                    REVIEW_TEMP+=" - ["${REVIEW_FILENAME/"${1}/"/}"](./$REVIEW_FILENAME)\n";
                    # echo "\n Error: Directory $dir does not exists. \n";
                fi
            fi
        done
    echo $REVIEW_TEMP
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

echo -e $READMEHEAD > README.md;

CHALK_NORMAL="$(printf '\033[39m')";
CHALK_YELLOW="$(printf '\033[93m')";
CHALK_BLUE="$(printf '\033[94m')";
CHALK_CYAN="$(printf '\033[96m')";

LOG=$(
cat << _EOF_
        \n
        $CHALK_CYAN ${REVIEW_CONTENT_ARR[0]} $CHALK_NORMAL
        \n
        $CHALK_BLUE ${REVIEW_CONTENT_ARR[1]}  $CHALK_BLUE
        \n
        $CHALK_YELLOW Success！$CHALK_NORMAL
        \n
_EOF_
);

echo -e $LOG;