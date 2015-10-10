
if [[ `uname` == 'Linux' ]]; then
	echo "source ~/lazypicinit/init.bash" >> ~/.bashrc
elif [[ `uname` == "Darwin" ]]; then
	echo "source ~/lazypicinit/init.bash" >> ~/.profile
fi
