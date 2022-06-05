#!/bin/sh
function branch name(){
    echo “enter branch name”
    branch=`echo $1 | cut -d/ -f3`

    if [ "master" == "$branch" ]; then
        echo “warning you are on master branch”
    fi
    if [ “main” == "$branch" ]; then
        echo “warning you are on main branch”
    fi
    
}
function new branch(){
    echo “enter new branch name”
    branch=`echo $1 | cut -d/ -f3`
    git checkout -b ${branch}
}
function compress format(){
    echo “Choose format and destination?”
    read format
    read destination
    if [ "$format" == "zip"]; then
        zip -r /path/to/save/destination.zip
    elif [ "$format" == "tar.gz" ]; then
        tar -czvf /path/to/save/destination.tar.gz
    else
    exit 1
    fi
}
function debug (){
    read -p "Enable debugging? " debugmode
    case "$debugmode" in
        1|y|Y|yes|YES ) set -x ;;
    esac
}





    


