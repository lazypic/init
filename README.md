# LAZYPIC init
이 리포지터리는 lazypic 초기설정과 관련된 리포지터리입니다.

lazypic은 macOS를 권장합니다.

## Bash 설정
아래줄을 드레그해서 터미널에서 실행합니다.
git이 필요합니다.
```
cd ~ && git clone https://github.com/lazypic/init.git && cd init && sh setup.sh
```

## macOS 패키지 설정
- brew를 설치합니다. 터미널에 붙혀넣어주세요.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- brew를 이용해서 자주 사용하는 패키지를 설치합니다.
```
$ brew tap wallix/awless; brew install awless // aws managing tool
$ brew install ripgrep // grep utility
$ brew install guetzli // image optimization
$ brew install caskformula/caskformula/inkscape // vector editor
$ brew install pandoc
$ brew install mplayer
$ brew install mpv
$ brew install ffmpeg
$ brew install imagemagick
$ brew install potrace // bitmap to vector
```

## AWS 셋팅

~/.aws/credentials 파일에 AWS IAM에서 발급받은 키를 넣어줍니다.
```
[default]
aws_access_key_id = AKID1234567890
aws_secret_access_key = MY-SECRET-KEY
```

~/.aws/config 에 `Seoul Region`을 기본으로 설정합니다.
```
[default]
region = ap-northeast-2
```

## Infra 정보
- DNS 서비스 : https://www.namecheap.com
- Mail 포워딩 : https://www.mailgun.com
- AWS : https://console.aws.amazon.com
