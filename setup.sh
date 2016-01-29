
if [[ `uname` == 'Linux' ]]; then
	echo "source ~/init/init.bash" >> ~/.bashrc
elif [[ `uname` == 'MINGW'* ]]; then
	echo "source ~/init/init.bash" >> ~/.bashrc
elif [[ `uname` == "Darwin" ]]; then
	echo "source ~/init/init.bash" >> ~/.profile
fi
