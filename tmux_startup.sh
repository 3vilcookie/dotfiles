#!/bin/bash

tmux new-session -s "Some Session" -d
tmux split-window -h
tmux split-window -v
tmux -2 attach-session -d
