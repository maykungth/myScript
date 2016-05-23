#!/bin/bash
# This Script to remove all thing in dest's directory
echo "Are you to CLEAN ALL DATA in HDFS ? (Y/N)"
read ans
if [ $ans != 'Y' ]; then
	exit
fi

server_list=('Master' 'Rserver1' 'Rserver2')
path_list=(
"/usr/local/hadoop/data/namenode/"
"/usr/local/hadoop/data/datanode/"
"/usr/local/hadoop/log/"
"/usr/local/zookeeper/"
"/usr/local/hbase/logs/"
)
for serv in ${server_list[@]}
do
	echo '========= ' $serv ' =========='
	for path1 in ${path_list[@]}
	do
		ssh $serv "
		if [ -d "$path1" ]; then
			cd $path1
			#rm -rf *
			pwd
		fi
		exit
		"
	done
done
#hdfs namenode -format
