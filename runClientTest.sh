#!/bin/bash
server_list=('Client1' 'Client2')
env_path='~/workspace/flask-rest/bin/activate'
client_path='~/workspace/phr_client/testupload.py'


for serv in ${server_list[@]}
do
	ssh $serv "
	tmux new-session -d -s ClientTest \"source $env_path; python $client_path\"
	tmux detach -s ClientTest
	"
done

