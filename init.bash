#load help
source ~/init/help.bash

#update cmd for lazypic users
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
	if [ -d "$HOME/natronset" ]; then
		export NATRON_PLUGIN_PATH=~/natronset
	fi
	if [ -d "/Applications/Natron.app/Contents/MacOS/Natron" ]; then
		alias natron=/Applications/Natron.app/Contents/MacOS/Natron
	fi
	if [ -d "/Applications/Pixar/RenderManProServer-20.9" ]; then
		export RMANTREE=/Applications/Pixar/RenderManProServer-20.9
		export PATH=$PATH:$RMANTREE/bin
	fi
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

# AWS
export AWS_DEFAULT_REGION=ap-northeast-2

#other connect url
alias wacom="$browser http://www.wacom.com/en-us/support/intuos-pro-support-detail"
alias cloudb="$browser http://cloud.blender.org"
alias vimeo="$browser https://vimeo.com/channels/lazypic"
alias youtube="$browser http://www.youtube.com"
alias soundcloud="$browser https://soundcloud.com/groups/lazypic"
alias gmail="$browser http://www.gmail.com"
alias mailgun="$browser https://www.mailgun.com" # mail forwarding
alias github="$browser http://www.github.com/lazypic"
alias bugs="$browser https://music.bugs.co.kr"
alias bitbucket="$browser http://www.bitbucket.org"
alias gitbook="$browser http://www.gitbook.com"
alias awsconsole="$browser https://console.aws.amazon.com"
alias homepage="$browser http://lazypic.org"
alias googledrive="$browser https://drive.google.com/drive/my-drive"
alias conference_room="$browser http://www.goyang.go.kr/kr/facilities/main.do"
alias optimizilla="$browser http://optimizilla.com/ko/"
alias sheepit="java -jar ~/init/sheepit/sheepit-client-3.227.2399.jar"
alias renderfarm="$browser http://www.sheepit-renderfarm.com"
alias weather="curl wttr.in/seoul"
alias jukedeck="https://www.jukedeck.com"
alias flickr="https://www.flickr.com/photos/161844533@N02/"

# Software
krita="/Applications/krita.app/Contents/MacOS/krita"
if [ -f $krita ]; then
	alias krita=$krita
fi

# deliverery food
alias mc="https://www.mcdelivery.co.kr/m/kr/jsp-mobile/sys/userLogin.jsp"
alias 차이홍="echo 031-916-8867" # Our favorite Chinese restaurant
