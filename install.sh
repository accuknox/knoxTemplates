#!/bin/bash

TMP=/tmp/knoxTemplates

[[ $(id -u) -ne 0 ]] && echo "Please sudo to execute this. Bye." && exit 1

git clone https://github.com/accuknox/knoxTemplates.git $TMP

cd $TMP
cp gh-templates/* /usr/share/git-core/templates/hooks/

rm -rf $TMP
