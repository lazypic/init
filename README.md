# LAZYPIC init
이 리포지터리는 lazypic 초기설정과 관련된 리포지터리입니다.

lazypic은 macOS를 권장합니다.

## Bash 설정
아래줄을 드레그해서 터미널에서 실행합니다.
git이 필요합니다.
```
cd ~ && git clone https://github.com/lazypic/init.git && cd init && sh setup.sh
```

## 추천 패키지

#### macOS
brew를 이용해서 자주 사용하는 패키지를 설치합니다.
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

#### macOS & AWS
- aws 제어를 위해 awless를 설치합니다.
```
go get -u github.com/wallix/awless
```

~/.aws/credentials 파일에 AWS IAM에서 발급받은 키를 넣어줍니다.
```
[default]
aws_access_key_id = AKID1234567890
aws_secret_access_key = MY-SECRET-KEY
```

#### 도메인
- 사용하는 도메인등록 사이트 : https://www.namecheap.com
