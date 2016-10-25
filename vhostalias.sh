#!/bin/bash

vagrant ssh 843a4a0 -c "sudo vhost -s $1 -a www.$1 -d $2"
echo "Added new vhost for $1 with an alias of www.$1 that maps to $2."
