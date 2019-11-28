#! /bin/sh

#=================================================================
# Deploys petshop changes to the local webserver for testing
# Need to implement a project config file that defines what to do with the project if it has been modified
# Author: Adam Young

fatal() { echo "$*"; exit 1; }


test ! -w / && fatal  must be root

#pwd | grep "petsonline/bbqsuitcase.com" > /dev/null
pwd | grep "rmitcs/sept" > /dev/null

if [ "$?" == 0 ]
then
    SRC=/home/adam/rmitcs/sept/sept-appt
    TARG=/var/www/html/sept

    if [ ! -d $SRC ]; then fatal "Can't cp from $SRC"; fi
    if [ ! -d $TARG ]; then fatal "Can't cp to $TARG"; fi

    if [ -z "$1" ]
    then
        cp -rf $SRC/* $TARG
        cp -f $SRC/__config_adam.php $TARG/config.php
    else
        FILE=$1
	TARGFILE="${FILE/$SRC/$TARG}"
        echo $TARGFILE > testdepout.txt
    fi

    # return here to stop all projects being copied over
    exit 0
    #########
    ##SRC=/home/adam/Projects/pfive/trees
    SRC=/home/adam/Projects/pfive
    TARG=/var/www/html/pfive

    if [ ! -d $SRC ]; then fatal "Can't cp from $SRC"; fi
    if [ ! -d $TARG ]; then fatal "Can't cp to $TARG"; fi

    cp -rf $SRC/* $TARG

    ###############
    SRC=/home/adam/Projects/petsonline/bbqsuitcase.com
    TARG=/var/www/html/bbqsuitcase.com
    TMP=/var/www/html/bbqtemp

    if [ ! -d $SRC ]; then fatal "Can't cp from $SRC"; fi
    if [ ! -d $TARG ]; then fatal "Can't cp to $TARG"; fi

    mkdir $TMP
    if [ ! -d $TMP ]; then fatal "Can't mkdir $TMP"; fi

    cp -r $SRC/* $TMP
    cp -rf $TARG/application/config/* $TMP/application/config/

    rm -rf $TARG

    chown -R apache:apache $TMP
    mv $TMP $TARG
fi
