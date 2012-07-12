#!/bin/bash

if [ ! -d ~/.dotfile_backup ]; then
  mkdir ~/.dotfile_backup
fi

# Copy all the dotfiles
for i in .*
do
	if [ "$i" != "." ] && [ "$i" != ".." ] && [ "$i" != ".git" ]; then
	  if [ -e ~/$i ]; then
			if ! ( cp ~/$i ~/.dotfile_backup/$i ) || ! ( rm ~/$i || unlink ~/$i ); then
				echo "Failed on $i" > /dev/stderr
				exit 1
			fi
		fi
		if ln -s $(pwd)/$i ~/$i; then
			echo "Linked: $i" > /dev/stderr
		else
			echo "Failed on $i" > /dev/stderr
			exit 1
		fi
	fi
done

if [ ! -d ~/bin ]; then
	mkdir ~/bin
	cd ~/bin
	wget https://github.com/rupa/z/raw/master/z.sh
	chmod u+x z.sh
fi

source ~/.bash_profile
