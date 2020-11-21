#!/bin/bash

session='tmateS'

tmux new-session -d -s $session

tmux splitw
tmux splitw -h
tmux selectp -t 0
tmux splitw -h

tmux selectp -t 0
tmux send-keys 'cd DOCKER/postgres' Enter
tmux send-keys './run.sh' Enter


tmux selectp -t 1
tmux send-keys 'cd DOCKER/ssh-server' Enter
tmux send-keys './run.sh' Enter


tmux selectp -t 2 
tmux send-keys 'cd DOCKER/tmate-master' Enter
tmux send-keys './run.sh' Enter

tmux selectp -t 3
tmux send-keys 'cd DOCKER/tmate-websocket' Enter
tmux send-keys './run.sh' Enter


#tmux rename-window 'postgres'
#tmux split-window -h 'exec cd ./DOCKER/ssh-server'


tmux attach-session -t $session 
