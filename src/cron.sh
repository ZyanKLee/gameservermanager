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

