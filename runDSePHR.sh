#!/bin/bash
server_list=('Master' 'Monitor')
env_path='~/workspace/flask-rest/bin/activate'
runner_path='~/workspace/phr_api/phr_api_runner.py'


for serv in ${server_list[@]}
do
	ssh $serv "
	tmux new-session -d -s DSePHR \"source $env_path; python $runner_path\"
	tmux detach -s DSePHR
	"
done

