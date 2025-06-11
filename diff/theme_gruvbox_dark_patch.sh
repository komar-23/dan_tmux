#!/bin/bash
sed -i -e 's/\"status\-left\" \"\#\[bg\=\${col_bg/\"status\-left\" \"\#\[bg\=\$\{col_bg\},fg\=\$\{col_bg3\}\]\#\[bg\=\$\{col_bg/' ./theme_gruvbox_dark.sh 
sed -i -e 's/\${_right_status_z\}/\$\{_right_status_z\}\#\[bg\=\$\{col_bg\},fg\=\$\{col_fg3\}\]/' ./theme_gruvbox_dark.sh
sed -i -e 's/\#W\#{?window_zoomed_flag,\*Z,}/#W[#{pane_index}]#{?window_zoomed_flag, ,}/' ./theme_gruvbox_dark.sh
sed -i -e 's/col_fg3\}\] \${_left_status_a/col_fg3\}\]\${_left_status_a/' ./theme_gruvbox_dark.sh 
sed -i -e 's/col_fg4\}\] \${_right_status_x/col_fg2\}\] \${_right_status_x/' ./theme_gruvbox_dark.sh 
