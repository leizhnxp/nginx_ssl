#!/usr/bin/env bash

self_dir=`readlink -f $0|xargs dirname`


case $1 in
    start)
    sudo nginx -p $self_dir/ -c $self_dir/nginx.conf
    ;;
    stop)
    sudo sh -c "cat $self_dir/nginx.pid | xargs kill"
    ;;
    *)
    echo "usage : run.sh [start|stop]"
esac
