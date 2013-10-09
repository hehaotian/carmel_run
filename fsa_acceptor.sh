#!/bin/sh

while read line ;
do
    if [[ "$(echo $line | carmel -sli $1 2>&1)" == *Empty* ]]
    then
        echo "$line => no"
    else
        echo "$line => yes"
    fi
done < $2