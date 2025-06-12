# Preface

Repository contains dotfile (*.tmux.conf*) for my personal TMUX configuration.
In addition provides shell script for easy setup.
Following TMUX plugins will be installed:

- TPM
- VIM TMUX Navigator
- TMUX senssible
- TMUX resurrect
- TMUX theme - catppuccin or gruvbox

# Requirements

 - *tmux* has to be installed
 - *zsh* has to be installed

# Installation

1. Run *installTmux.sh* script.
IMPORTANT!
**Before running script make sure to be inside directory where *installTmux.sh* script is located.**
1. Start TMUX by type command *tmux*
2. Refresh TMUX environment by press *Ctrl-b* and next *I* keys
3. Enjoy TMUX :)

# Default shell configuration

Preseted TMUX configuration uses ZSH as a default shell. It you prefer different please change following parameter in *$HOME/.tmux.conf* file.

- *set-option -g default-shell /bin/zsh* ---> e.g. *set-option -g default-shell /bin/bash*
