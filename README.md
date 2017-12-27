# LAZYPIC init
이 리포지터리는 lazypic 초기설정과 관련된 리포지터리입니다.

lazypic은 데비안계열의 리눅스 또는 macOS를 권장합니다.

## Bash 설정
아래줄을 드레그해서 터미널에서 실행합니다.
git이 필요합니다.
```
cd ~ && git clone https://github.com/lazypic/init.git && cd init && sh setup.sh
```

## 추천 패키지
#### linux
#### macOS
brew를 이용해서 자주 사용하는 패키지를 설치합니다.
```
$ brew install ripgrep //https://github.com/BurntSushi/ripgrep/releases
$ brew install guetzli // 이미지 최적화
$ brew install pandoc
$ brew install mplayer
$ brew install mpv
```

#### 윈도우즈에서 Bash 사용법
```
 설정 > 업데이트 및 복구 > 개발자용
 > 개발자 모두 활성화 > 시스템 재시작 > 검색(윈도우 키 + S 키)
 > 'Windows 기능 켜기/끄기' 입력 후 실행
 > Linux용 Windows 하위 시스템(베타) 선택
 > 검색(윈도우 키 + S 키) > '명령 프롬포트' 실행 > 'bash' 
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
