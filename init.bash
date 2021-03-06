#load help
source ~/init/help.bash

#update cmd for lazypic users
if [ -d "$HOME/init" ]; then
	alias update="cd ~/init && git pull && cd \$OLDPWD"
fi

#Go Setting
if [[ `uname` == 'Linux' ]]; then
	export GOBIN=$HOME/bin
	export PATH=$PATH:$GOBIN:/usr/local/go/bin
elif [[ `uname` == 'Darwin' ]]; then
	export GOBIN=$HOME/bin
	export PATH=$PATH:$GOBIN
fi

# USD
export PYTHONPATH=$HOME/Projects/Pixar/BUILD/USD/lib/python
export PATH=$PATH:$HOME/Projects/Pixar/BUILD/USD/bin

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

# AWS 메뉴얼에서 python3.7을 권장함.
if [ -d $HOME/Library/Python/3.7/bin ]; then
	export PATH=$PATH:$HOME/Library/Python/3.7/bin
fi

# uri
alias mailgun="$browser http://mailgun.com"
alias wacom="$browser http://www.wacom.com/en-us/support/intuos-pro-support-detail"
alias cloudb="$browser http://cloud.blender.org"
alias vimeo="$browser https://vimeo.com/channels/lazypic"
alias youtube="$browser https://www.youtube.com/my_videos?ar=1&o=U"
alias gmail="$browser http://www.gmail.com"
alias github="$browser http://www.github.com/lazypic"
alias awsconsole="$browser https://console.aws.amazon.com"
alias homepage="$browser http://lazypic.org"
alias googledrive="$browser https://drive.google.com/drive/my-drive"
alias conference_room="$browser http://www.goyang.go.kr/kr/facilities/main.do"
alias optimizilla="$browser http://optimizilla.com/ko/"
alias sheepit="java -jar ~/init/sheepit/sheepit-client-3.227.2399.jar"
alias renderfarm="$browser https://www.sheepit-renderfarm.com/jobs.php?mode=add"
alias wiki="$browser https://github.com/lazypic/blender/wiki"
alias clib="$browser https://www.youtube.com/channel/UC0L_YtB4PWSkOwp2m9587MA/playlists?view_as=subscriber"
alias rmgitbranch="git branch | grep -v "master" | xargs git branch -D"


# krita 경로설정
krita="/Applications/krita.app/Contents/MacOS/krita"
if [ -f $krita ]; then
	alias krita=$krita
fi

# blender 경로설정
if [[ "$OSTYPE" == "darwin"* ]]; then
	alias blender279="$HOME/app/blender2.79/blender.app/Contents/MacOS/blender --python $HOME/blender/init.py" #tqcs
	alias blender282="$HOME/app/blender2.82/Blender.app/Contents/MacOS/blender --python $HOME/blender/init.py"
	alias blender283="$HOME/app/blender2.83/Blender.app/Contents/MacOS/blender --python $HOME/blender/init.py"
	alias blender290a="$HOME/app/blender2.90a/Blender.app/Contents/MacOS/blender --python $HOME/blender/init.py"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	alias blender279="$HOME/app/blender2.79/blender --python $HOME/blender/init.py" #tqcs
	alias blender282="$HOME/app/blender2.82/Blender --python $HOME/blender/init.py"
	alias blender283="$HOME/app/blender2.83/Blender --python $HOME/blender/init.py"
	alias blender290a="$HOME/app/blender2.90a/Blender --python $HOME/blender/init.py"
fi

# Nuke
NUKEVER="Nuke11.3v2"
NUKEXVER="NukeX11.3v2"
if [ -d "$HOME/nuke" ]; then
	export NUKE_PATH=$HOME/nuke
fi
if [ -d "$HOME/nuke/font" ]; then
	export NUKE_FONT_PATH=$HOME/nuke/font
fi
if [ -d "/Applications/$NUKEVER" ]; then
	alias nukex="/Applications/$NUKEVER/$NUKEXVER.app/$NUKEXVER"
	alias nukenc="/Applications/$NUKEVER/$NUKEVER.app/$NUKEXVER -nc"
	alias nuke="/Applications/$NUKEVER/$NUKEVER.app/$NUKEXVER"
fi

# OpenColorIO / size 3.2G
if [ -d "$HOME/OpenColorIO-Configs/aces_1.0.3" ]; then
	export OCIO=$HOME/OpenColorIO-Configs/aces_1.0.3/config.ocio
fi

# 촬영관련 스크립트
if [ -f ~/bmpcc/bmpcc.py ]; then
	alias bmpcc="python ~/bmpcc/bmpcc.py"
fi
