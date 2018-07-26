# LAZYPIC init
- 이 리포지터리는 Lazypic 설정 리포지터리입니다.
- Lazypic은 macOS를 사용합니다.
- Lazypic은 유무선 인터넷 환경을 권장합니다.
- Lazypic은 국가 및 지역에 종속되도록 셋팅하지 않습니다.

## Bash 설정
- Lazypic은 macOS 터미널환경에서 프로그램을 실행, 업무를 진행합니다.
- macOS 터미널은 bash shell을 사용하며, 아래줄을 드레그해서 터미널에서 실행합니다. 이 작업에는 git 설치되어 있어야 합니다.
```
cd ~ && git clone https://github.com/lazypic/init.git && cd init && sh setup.sh
```

- 만약 git이 설치되어있지 않다면, 아래 명령어를 먼저 터미널에서 실행해주세요.
```
$ xcode-select --install
```

## Homebrew 셋팅
- Lazypic은 macOS에서 패키지 매니저로 homebrew를 사용합니다.
- brew를 설치합니다. 터미널에 붙혀넣어주세요.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## macOS cmd tools.
- brew를 이용해서 자주 사용하는 패키지를 설치합니다.
```bash
$ brew tap wallix/awless; brew install awless # aws managing tool
$ brew install ripgrep # grep utility
$ brew install guetzli # image optimization
$ brew install pandoc
$ brew install mplayer
$ brew install mpv
$ brew install ffmpeg
$ brew install imagemagick
$ brew install potrace # bitmap to vector
$ brew install exiftool # edit image metadata
```

- 위 리스트는 `install_brew_package.sh` 파일에도 선언되어있습니다.
- 모두 설치하기를 원한다면 아래처럼 터미널에서 타이핑해주세요.
```bash
$ sh ~/init/install_brew_package.sh
```

## macOS gui tools.
- potraceGUI : http://www.hi-ho.ne.jp/sato-akira/dragpotrace/
- xquartz : https://www.xquartz.org/
- inkscape : https://inkscape.org/en/release

## AWS 셋팅
- Lazypic은 인프라로 AWS를 사용합니다.
- 키 발급은 Lazypic 구성원만 관리자를 통해서 발급받을 수 있습니다.
- 문의 : admin@lazypic.org
- Cloud 자원의 접근을 위해 AWS IAM에서 발급받은 키정보를 이용해서 credentials 파일을 생성합니다.
- ~/.aws/credentials 파일내용은 아래와 같습니다.
```
[default]
aws_access_key_id = AKID1234567890
aws_secret_access_key = MY-SECRET-KEY
```

- Lazypic은 `Seoul Region`을 기본으로 사용합니다.
~/.aws/config 파일에 `Seoul Region`을 기본으로 설정합니다.
```
[default]
region = ap-northeast-2
```
- AWS 접속시 MFA를 사용한다면, [Google Authenticator](https://itunes.apple.com/kr/app/google-authenticator/id388497605?mt=8)를 핸드폰에 설치해주세요.

## Infra 정보
- DNS 서비스 : https://www.namecheap.com
- AWS : https://console.aws.amazon.com
- Mail 포워딩 : https://www.mailgun.com
