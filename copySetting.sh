#!/bin/bash

# The script is used to copy files to another

server_dest=('Master' 'Rserver1' 'Rserver2')

source_path='conf-source/'
files=('hbase-site.xml' 'hbase-env.sh')

dest_path=(
'/usr/local/hbase/conf/' 
'/usr/local/hbase/conf/')

for serv in ${server_dest[@]}
do
	i=0
	echo "======== $serv ========"
	for f in ${files[@]}
	do
		(scp $source_path$f $serv:${dest_path[$i]})
		((i++))
	done
done


