source help.bash

#update
alias update="cd ~/init && git pull"

#golang setting
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GO15VENDOREXPERIMENT=1

#web
if [[ `uname` == 'Linux' ]] || [[ `uname` == 'MINGW'* ]]; then
	alias reddit="firefox http://www.reddit.com/r/golang &"
	alias cloudb="firefox http://cloud.blender.org &"
	alias vimeo="firefox https://vimeo.com/channels/lazypic &"
	alias youtube="firefox http://www.youtube.com &"
	alias soundcloud="firefox https://soundcloud.com/groups/lazypic &"
	alias gmail="firefox http://www.gmail.com &"
	alias github="firefox http://www.github.com &"
	alias bitbucket="firefox http://www.bitbucket.org &"
	alias gitbook="firefox http://www.gitbook.com &"
	alias wiki="firefox http://sites.google.com/site/lazypicweb &"
	alias homepage="firefox http://lazyd.org &"
	alias googledrive="firefox https://drive.google.com/drive/my-drive &"
	alias godoc="firefox https://golang.org/pkg/ &"
	alias baidu="firefox https://www.baidu.com &"
elif [[ `uname` == 'Darwin' ]]; then
	#swift setting
	compile_swift() {
		/usr/bin/xcrun swiftc -O $1 -o $2
	}

	#alias
	alias say="say -v yuna"
	alias reddit="open http://www.reddit.com/r/golang"
	alias swift="/usr/bin/xcrun swift"
	alias cloudb="open http://cloud.blender.org"
	alias vimeo="open https://vimeo.com/channels/lazypic"
	alias youtube="open http://www.youtube.com"
	alias soundcloud="open https://soundcloud.com/groups/lazypic"
	alias gmail="open http://www.gmail.com"
	alias github="open http://www.github.com"
	alias bitbucket="open http://www.bitbucket.org"
	alias gitbook="open http://www.gitbook.com"
	alias wiki="open http://sites.google.com/site/lazypicweb"
	alias homepage="open http://lazyd.org"
	alias googledrive="open https://drive.google.com/drive/my-drive"
	alias godoc="open https://golang.org/pkg/"
	alias baidu="open https://www.baidu.com"
	alias imail="open https://www.icloud.com"
	#renderman
	export RMANTREE=/Applications/Pixar/RenderManProServer-20.1
	export PATH=$RMANTREE/bin:$PATH
fi

