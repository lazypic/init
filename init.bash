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
elif [[ `uname` == 'Darwin' ]]; then
	if [ -d "$HOME/go" ]; then
		export GOPATH=$HOME/go
		export GOBIN=$GOPATH/bin
		export PATH=$PATH:$GOBIN
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
export AWS_REGION=ap-northeast-2 # for CLI
export AWS_DEFAULT_REGION=ap-northeast-2 # for SDK

# Mailgun
export MG_DOMAIN=lazypic.org
export MG_URL="https://api.mailgun.net/v3"

#other connect url
alias wacom="$browser http://www.wacom.com/en-us/support/intuos-pro-support-detail"
alias cloudb="$browser http://cloud.blender.org"
alias vimeo="$browser https://vimeo.com/channels/lazypic"
alias youtube="$browser https://www.youtube.com/my_videos?ar=1&o=U"
alias soundcloud="$browser https://soundcloud.com/groups/lazypic"
alias gmail="$browser http://www.gmail.com"
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
alias jukedeck="$browser https://www.jukedeck.com"
alias flickr="$browser https://www.flickr.com/photos/161844533@N02/"
alias financialstatements="$browser https://docs.google.com/spreadsheets/d/1iwuiImg9T-V_05utVck3nrowu2Q0Nlrn3XiWz6Mgf84/edit#gid=0"
alias editblog="$browser https://www.blogger.com/blogger.g?rinli=1&pli=1&blogID=8229706624590863176#allposts"
alias brunch="$browser https://brunch.co.kr/write"
alias slideshare="$browser https://www.slideshare.net"


# Software & app
krita="/Applications/krita.app/Contents/MacOS/krita"
if [ -f $krita ]; then
	alias krita=$krita
fi
# blender
blender="/Applications/Blender/blender.app/Contents/MacOS/blender"
if [ -f $blender ] && [ -d ~/blender ] ; then
	alias blender="$blender --python ~/blender/init.py"
fi
# blender dev
blenderdev="/Applications/Blenderdev/blender.app/Contents/MacOS/blender"
if [ -f $blenderdev ] && [ -d ~/blender ] ; then
	alias blenderdev="$blenderdev --python ~/blender/init.py"
fi
# Natron
if [ -d "$HOME/natronset" ]; then
	export NATRON_PLUGIN_PATH=~/natronset
fi
if [ -d "/Applications/Natron.app/Contents/MacOS/Natron" ]; then
	alias natron=/Applications/Natron.app/Contents/MacOS/Natron
fi

# Nuke
if [ -d "$HOME/nuke" ]; then
	export NUKE_PATH=~/nuke
fi
if [ -d "/Applications/Nuke10.5v8" ]; then
	alias nuke=/Applications/Nuke10.5v8/NukeX10.5v8.app/NukeX10.5v8
fi

# OpenColorIO / 3.2G
if [ -d "$HOME/OpenColorIO-Configs/aces_1.0.3" ]; then
	export OCIO=$HOME/OpenColorIO-Configs/aces_1.0.3/config.ocio
fi


# 촬영관련 스크립트
if [ -f ~/bmpcc/bmpcc.py ]; then
	alias bmpcc="python ~/bmpcc/bmpcc.py"
fi

# Our facorite deliverery food
alias mc="$browser https://www.mcdelivery.co.kr/kr/home.html"
alias 차이홍="echo 031-916-8867 && say 031-916-8867" # Our favorite Chinese restaurant
