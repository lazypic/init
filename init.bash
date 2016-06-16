#load help
source ~/init/help.bash

#update cmd for artist
if [ -d "$HOME/init" ]; then
	alias update="cd ~/init && git pull && cd \$OLDPWD"
fi

#golang setting for mac
if [[ `uname` == 'Linux' ]]; then
	if [ -d "$HOME/go" ]; then
		export GOPATH=$HOME/go
		export GOBIN=$GOPATH/bin
		export PATH=$PATH:$GOBIN:/usr/local/go/bin
	fi
elif [[ `uname` == 'MINGW'* ]]; then
	browser="start"
elif [[ `uname` == 'Darwin' ]]; then
	if [ -d "$HOME/go" ]; then
		export GOPATH=$HOME/go
		export GOBIN=$GOPATH/bin
		export PATH=$PATH:$GOBIN
	fi
	export RMANTREE=/Applications/Pixar/RenderManProServer-20.9
	export PATH=$PATH:$RMANTREE/bin
fi


go() {
	if [[ $1 == 'to' ]]; then
		command cd $GOPATH/src/$2
	else
		command go $*
	fi
}

git() {
	if [[ $@ == "log" ]]; then
		command git log --graph --oneline --decorate --all
	else
		command git "$@"
	fi
}

#dependency command for other OS.
if [[ `uname` == 'Linux' ]]; then
	browser="firefox"
elif [[ `uname` == 'MINGW'* ]]; then
	browser="start"
elif [[ `uname` == 'Darwin' ]]; then
	browser="open"
fi

#google search
g() {
	$browser "http://www.google.com/search?q=$*";
}

#other connect url
alias flameman="$browser http://docs.autodesk.com/flamepremium2015"
alias chat="$browser http://lazyd.org:8065/lazyd-dev/channels/town-square"
alias reddit="$browser http://www.reddit.com/r/golang"
alias wacom="$browser http://www.wacom.com/en-us/support/intuos-pro-support-detail"
alias cloudb="$browser http://cloud.blender.org"
alias vimeo="$browser https://vimeo.com/channels/lazypic"
alias tensorflow="$browser https://www.tensorflow.org"
alias youtube="$browser http://www.youtube.com"
alias soundcloud="$browser https://soundcloud.com/groups/lazypic"
alias gmail="$browser http://www.gmail.com"
alias imail="$browser https://www.icloud.com"
alias github="$browser http://www.github.com"
alias hwp="$browser https://www.netffice24.com"
alias bugs="$browser http://www.bugs.co.kr/"
alias trending="$browser http://www.github.com/trending"
alias bitbucket="$browser http://www.bitbucket.org"
alias gitbook="$browser http://www.gitbook.com"
alias awsconsole="$browser https://console.aws.amazon.com"
alias wiki="$browser http://sites.google.com/site/lazypicweb"
alias homepage="$browser http://lazyd.org"
alias googledrive="$browser https://drive.google.com/drive/my-drive"
alias godoc="go doc"
alias baidu="$browser https://www.baidu.com"
alias conference_room="$browser http://www.goyang.go.kr/kr/facilities/main.do"
alias optimizilla="$browser http://optimizilla.com/ko/"
alias sheepit="java -jar ~/init/sheepit/sheepit-client-3.227.2399.jar"
alias renderfarm="$browser http://v5.sheepit-renderfarm.com"
