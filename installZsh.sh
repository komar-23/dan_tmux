#!/bin/bash
#Script prepares my custom ZSH distribution

if [ ! -f "${HOME}/.tmux.conf" ] ; then
  cp ./.tmux.conf ${HOME}/.tmux.conf
else
  echo '.tmux.conf file exist, backup has been created as a .tmux.conf.bkp file'
  cp ${HOME}/.tmux.conf ${HOME}/.tmux.conf.bkp
  cp ./.tmux.conf ${HOME}/.tmux.conf
fi
