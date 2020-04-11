
if [[ `uname` == 'Linux' ]]; then
	echo "source ~/init/init.bash" >> ~/.bashrc
elif [[ `uname` == 'MINGW'* ]]; then
	echo "source ~/init/init.bash" >> ~/.bashrc
elif [[ `uname` == "Darwin" ]]; then
	if [[ $SHELL == '/bin/zsh' ]]; then
		echo "source ~/init/init.bash" >> ~/.zshenv
	else
		echo "source ~/init/init.bash" >> ~/.bash_profile
	fi
fi
