#!/bin/bash
tmux new-session -d -s DSePHR '
cd
. workspace/flask-rest/bin/activate
python workspace/phr_api/phr_api_runner.py
'
tmux detach -s DSePHR
