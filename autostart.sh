#!/bin/bash
tmux new -s "RRD Update Skripte" -d
tmux set remain-on-exit on
tmux set-option -g default-shell "/bin/bash"
tmux new-window "/home/russ/temperaturausgabemitkomma.sh"
tmux new-window "/home/russ/bmp280_auslesen.py"
