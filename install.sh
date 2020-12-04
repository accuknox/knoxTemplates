#!/bin/bash


install_latest_templates()
{
	TMP=/tmp/knoxTemplates
	export GIT_TEMPLATE_DIR=$HOME/.git/templates/hooks
	mkdir -p $GIT_TEMPLATE_DIR 2>/dev/null

	rm -rf $TMP
	[[ ! -d $TMP ]] && git clone https://github.com/accuknox/knoxTemplates.git $TMP
	cd $TMP
	cp gh-templates/* $GIT_TEMPLATE_DIR
	cd -
}

install_latest_templates
git init
