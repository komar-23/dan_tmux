#!/bin/bash
#Script prepares my custom ZSH distribution
echo 'TMUX installer'

if [ ! -d "${HOME}/.tmux/plugins/tpm/" ] ; then
  echo 'TPM installation...'
  mkdir -p "${HOME}/.tmux/plugins/tpm"
  git clone https://github.com/tmux-plugins/tpm ${HOME}/.tmux/plugins/tpm 
  echo 'TPM has been cloned'
else
  echo 'TPM is already cloned.'
fi

while true ; do
  echo 'Please choose TMUX theme:'
  echo '1. Catppuccin'
  echo '2. Gruvbox'
  read -p "Enter your choice [1-2]: " TMUX_SCHEM

  case $TMUX_SCHEM in
    1)
      if [ ! -f "${HOME}/.tmux.conf" ] ; then
        cp ./.tmux-catppuccin.conf ${HOME}/.tmux.conf
      else
        echo '.tmux.conf file exist, backup has been created as a .tmux.conf.bkp file'
        cp ${HOME}/.tmux.conf ${HOME}/.tmux.conf.bkp
        cp ./.tmux-catppuccin.conf ${HOME}/.tmux.conf
      fi
      ${HOME}/.tmux/plugins/tpm/bin/install_plugins
      echo 'Catppuccin theme has been installed'
      break
      ;;
    2)
      if [ ! -f "${HOME}/.tmux.conf" ] ; then
        cp ./.tmux-gruvbox.conf ${HOME}/.tmux.conf
      else
        echo '.tmux.conf file exist, backup has been created as a .tmux.conf.bkp file'
        cp ${HOME}/.tmux.conf ${HOME}/.tmux.conf.bkp
        cp ./.tmux-gruvbox.conf ${HOME}/.tmux.conf
      fi
      ${HOME}/.tmux/plugins/tpm/bin/install_plugins
      echo 'Gruvbox theme has been installed'
      #Patching gruvbox theme (special customization)
      echo 'Gruvbox customization ...'
      if [ ! -f "${HOME}/.tmux/plugins/tmux-gruvbox/src/theme_gruvbox_dark.sh" ] ; then
        
        echo 'There is no needed file theme_grubox_dark.sh!. Gruvbox has not been customized!'
      else
        echo 'theme_gruvbox_dark.sh has been backed up as a theme_gruvbox_dark.sh.bkp'
        cp ${HOME}/.tmux/plugins/tmux-gruvbox/src/theme_gruvbox_dark.sh ${HOME}/.tmux/plugins/tmux-gruvbox/src/theme_gruvbox_dark.sh.bkp 
        ./diff/theme_gruvbox_dark_patch.sh
        echo 'Gruvbox has been customized'
      fi
      break
      ;;
    *)
      echo 'Invalid option. Enter your choice [1-2]: '
      ;;
  esac
done


echo 'TMUX Installation process completed'
