#!/bin/sh
# check if ~/.anope/ exists
#	 - create it
# check if ~/.anope/conf/ exists
#	 - create subdir conf/
#	 - copy example configs from /usr/share/.../ to ~/.anope/conf/
# check if ~/.anope/logs/ 
#	 - create subdir logs/
# check if ~/.anope/data/ exists
#	 - create subdir 

# check if ~/.anope/services.conf exists
#       if not -> print error
#       if yes -> process parameters, run anope

confdir    = "~/.anope"
config     = "$confdir/services.conf"
logdir     = "$confdir/logs/"
localedir  = "/usr/share/locale/"
modulesdir = "/usr/lib/anope/"

params = "--config=$config --confdir=$confdir --dbdir=$confdir --localdir=$localedir --logdir=$logdir --modulesdir=$modulesdir"

/usr/bin/services $params

