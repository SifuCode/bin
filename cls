#!/bin/bash

CURRENT_DIR=$(pwd) # Get the current directory
SEARCHED_DIR_ARG=$@ # used if there are multiple arguments
ARG_TOTAL=$# # used for condition for number of arguments logic

function cls_no_arg() {
    clear;
    echo "Current Directory: ${CURRENT_DIR}"; 
    if [ "${1}" != "" ]
        then
            echo "Searched Directory: ${1}"
        fi;
    if [ "${1}" = "" ]
        then
            ls -F ${1} --color=auto
        else
            ls -F "${1}" --color=auto
    fi
}

function searched_file() {
    for ARG in ${SEARCHED_DIR_ARG}
    do
        if [ "${ARG}" != "" ]
        then
            echo "Searched Directory: ${ARG}"
        fi
    done
    echo ""
    list_file
}

function list_file() {
    for ARG in ${SEARCHED_DIR_ARG}
    do
        if [ "${ARG}" = "" ]
        then
            ls -F ${ARG} --color=auto  
            echo ""  
        else
            ls -F "${ARG}" --color=auto
            echo ""
        fi
    done    
}

# Get Searched Directory
if [ ${ARG_TOTAL} = 0 ]
then
    cls_no_arg
else
    clear;
    # echo "${ARG_TOTAL}";
    echo "Current Directory: ${CURRENT_DIR}"; 
    searched_file
fi