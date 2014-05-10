#!/bin/bash
PACKAGES=(ack-grep
	        clang
	        valgrind
          astyle
          autojump
          bpython
          calibre
          cmake
          compiz
          compiz-plugins
          compizconfig-settings-manager
          dstat
          exuberant-ctags
          fluxgui
          geany
          gimp
          git
          git-review
          gitg
          guake
          htop
          indicator-multiload
          meld
          mercurial
          nemiver
          openshot
          oracle-java7-installer
          pep8
          pkg-config
          python-matplotlib
          python-numpy
          python-pip
          python-scipy
          retext
          synaptic
          texmaker
          tmux
          ubuntu-tweak
          vim
          vim-gtk
          vlc
          )

#Stop if a command ends in an error
set -e

#Check to see if we are running with root privileges
if [[ $(id -u) -ne 0 ]] ; then
  echo "Please run this script as root (eg using sudo)"
  exit 1
fi

echo "Making sure all system software is up to date."
apt-get update --force-yes
apt-get -y upgrade --force-yes

#Add ppa
#oracle java
add-apt-repository ppa:webupd8team/java
#ubuntu-tweak
add-apt-repository -y ppa:tualatrix/ppa
#flux
add-apt-repository -y ppa:noobslab/indicators
apt-get update --force-yes

#Intall packages
apt-get -y --force-yes install ${PACKAGES[@]}
