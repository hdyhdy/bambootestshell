#!/usr/bin/env bash



N=$(ifconfig eth0 | awk '/inet/{print $2}' | awk -F. '{print $NF}');
Num=$(($N-1))
./server -id $Num -log_dir=. -log_level=info -algorithm=tchs &
echo ready

