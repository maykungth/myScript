#!/bin/bash
tmux new-session -d -s testup '
cd
. workspace/flask-rest/bin/activate
cd workspace/phr_client/test
python testupload.py
'
tmux detach -s testup
