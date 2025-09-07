#!/bin/bash

dbus-cleanup-sockets
killall dwlrc
killall -s SIGKILL dwl 
#killall -KILL --user blank
