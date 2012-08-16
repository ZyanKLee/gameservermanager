#!/bin/bash
#===================================================================================
#
#	  FILE: cron.sh
#
#	 USAGE: copy to /etc/cron.d/gameservermanager and run as cronjob
#
#  DESCRIPTION: check git repository from config file /etc/gsm/config.cfg
#		for changed definitions and update gameservers accordingly
#
#      OPTIONS: see function ’usage’ below
# REQUIREMENTS: cron daemon
#	  BUGS: ---
#	 NOTES: ---
#	AUTHOR: Phillip "ZyanKLee" Scholz
#      VERSION: 0.1
#      CREATED: 16.08.2012 - 18:32
#     REVISION: ---
#
#===================================================================================

. /etc/gsm/config.cfg


#-----------------------------------------------------------------------------------
# where are we? save it.
#-----------------------------------------------------------------------------------
STARTPWD=$PWD

#-----------------------------------------------------------------------------------
# see if repository already exists
# if so pull changes
# else clone it
#-----------------------------------------------------------------------------------
if ( [ -d "$localrepodir" ] )
then
	cd $localrepodir || exit 2 "could not cd to local repo dir"
	git pull || exit 2 "could not pull updates from repository"
else
	mkdir -p $localrepodir && cd $localrepodir && git clone $repository . || exit 2 "could not create new repository"
fi
