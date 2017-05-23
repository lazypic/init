# LAZYPIC init
이 리포지터리는 lazypic 초기설정과 관련된 리포지터리입니다.
lazypictures는 리눅스와 macOS만 사용합니다.

## Bash 설정
아래줄을 드레그해서 터미널에서 실행합니다.
git이 필요합니다.
```
cd ~ && git clone https://github.com/lazypic/init.git && cd init && sh setup.sh
```

## 추가적으로 설치하면 좋은것
- golang : https://golang.org/dl/
- gitbash : https://git-for-windows.github.io
- tor : ```go get -u github.com/kybin/tor```
- ripgrep : https://github.com/BurntSushi/ripgrep/releases

## 윈도우즈에서 Bash 사용법
```
 설정 > 업데이트 및 복구 > 개발자용
 > 개발자 모두 활성화 > 시스템 재시작 > 검색(윈도우 키 + S 키)
 > 'Windows 기능 켜기/끄기' 입력 후 실행
 > Linux용 Windows 하위 시스템(베타) 선택
 > 검색(윈도우 키 + S 키) > '명령 프롬포트' 실행 > 'bash' 
```

## 스토리지 마운트
#### macOS
goofys를 설치합니다.

```
brew cask install osxfuse
brew install goofys
```

~/.aws/credentials 파일에 AWS IAM에서 발급받은 키를 넣어줍니다.
```
[default]
aws_access_key_id = AKID1234567890
aws_secret_access_key = MY-SECRET-KEY
```

홈디렉토리에 lazypic 폴더를 만들고 마운트합니다.
```
$ cd
$ mkdir lazypic
$ goofys lazypic lazypic // $ goofys <bucket> <mountpoint>
```

성공되었다면 df 명령을 이용해서 마운트를 확인합니다.

```
Filesystem      Size   Used  Avail Capacity iused      ifree %iused  Mounted on
lazypic        1.0Pi    0Bi  1.0Pi     0%       0 1000000000    0%   /Users/?????/lazypic
```
~/lazypic 폴더가 1페타 바이트를 사용할 수 있다고 뜨면 설정이 완료됩니다.
