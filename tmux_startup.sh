#!/bin/bash

sessionName="Some Session"
dir="."

if [ $# -eq 1 ]
then
    case "$1" in
        "is")
            sessionName="Informationssicherheit"
            dir="/home/raphael/Nextcloud/HTW/IS/Praktika/"
            ;;
        "dev")
            sessionName="Development"
            dir="/home/raphael/dev/"
            ;;
        "brn")
            sessonName="BRN-Wall Development"
            dir="/home/raphael/dev/brn-wall/"
            ;;
    esac
fi



tmux has-session -t "$sessionName"
if [ $? != 0 ]
then

cd "$dir"
tmux -2 new-session -s "$sessionName" -d
tmux split-window -h
tmux split-window -v

fi

tmux -2 attach -t "$sessionName"

