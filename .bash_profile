# Set color variables
BLACK="\[\e[0;30m\]"
DARK_GRAY="\[\e[1;30m\]"
RED="\[\e[0;31m\]"
YELLOW="\[\e[0;33m\]"
PURPLE="\[\e[1;34m\]"
BLUE="\[\e[0;34m\]"
LIGHT_BLUE="\[\e[1;34m\]"
GREEN="\[\e[0;32m\]"
LIGHT_GREEN="\[\e[1;32m\]"
CYAN="\[\e[0;36m\]"
LIGHT_CYAN="\[\e[1;36m\]"
LIGHT_RED="\[\e[1;31m\]"
PURPLE="\[\e[0;34m\]"
LIGHT_PURPLE="\[\e[1;35m\]"
BROWN="\[\e[0;33m\]"
LIGHT_GRAY="\[\e[0;37m\]"
WHITE="\[\e[1;37m\]"


PS1="${GREEN}\u@${GREEN}\h:${BLUE}\w \n\$"
#PS1='\e[32;1m \u@\h: \w \e[0m \n\$'

export LC_CTYPE=en_US.UTF-8
export LANG=zh_CN.UTF-8 
export LC_ALL=zh_CN.UTF-8

export HISTSIZE=10000

export MONO_GAC_PREFIX="/usr/local"

#svn 预设环境变量
export SVN_EDITOR=/usr/local/bin/subl

#bash_completion 自动补全
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#autoJump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

#homebrew中科大源
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_GITHUB_API_TOKEN="8024d1a53dcf581854cec631e54f4ab4cb733642"
export PATH="/usr/local/opt/ruby@2.3/bin:$PATH"

#java
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8"
export JAVA6=/Library/Java/JavaVirtualMachines/jdk_1.6.0/Contents/Home/bin/

#自己写的脚本的位置
export PATH=/Users/bin/:$PATH
export PATH=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/:$PATH

export PYTHON_BIN=/usr/bin/python2.7
export CLANG_ROOT=/Users/mabingtao/work/android/clang+llvm-3.3-x86_64-apple-darwin12
export PATH=$PATH:${CLANG_ROOT}:${PYTHON_BIN}

#android环境变量
export ANDROID_HOME=/Users/mabingtao/work/android/android-sdk_r24.4.1-macosx/android-sdk-macosx/
export ANDROID_NDK_ROOT=/Users/mabingtao/work/android/android-ndk-r8d/
export NDK_ROOT=/Users/mabingtao/work/android/android-ndk-r8d/

export ANDROID_SDK_ROOT=/Users/mabingtao/work/android/android-sdk_r24.4.1-macosx/android-sdk-macosx/

export ANT_ROOT="/Users/mabingtao/work/android/apache-ant-1.9.3/bin/"
export PATH=$PATH:$ANT_ROOT
export PATH=$PATH:${ANDROID_SDK_ROOT}/tools/:${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_NDK_ROOT}

#git; git命令自动补全
#source /Users/mabingtao/.git-completion.bash

#text high light in terminal
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad

#sed illegal byte sequence
export COCOS_CONSOLE_ROOT=/Users/mabingtao/Downloads/cocos2d-x-3.17/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH


export USE_CCACHE=0 
export NDK_CCACHE=/usr/local/bin/ccache
export CCACHE_PATH=/usr/local/opt/ccache/libexec
#export PATH=$CCACHE_PATH:$PATH
CCACHE_LOGFILE=/Users/mabingtao/ccache.log 

#alias
#alias rm="trash"
alias rm='/usr/local/bin/shell_safe_rm.sh'
alias ll='ls -latrh'
alias scpr="rsync -P --rsh=ssh"
alias zipx='zip -x "*/\.*" -x "\.*"'
alias grep='grep --color=auto'

alias aws="ssh -i ~/Documents/aws0622.pem ubuntu@52.194.213.236"
alias oracle="ssh ubuntu@140.238.0.231"
alias 249="ssh pirate@192.168.1.249"
alias 251="ssh mac@192.168.1.251"
alias 253="ssh mac@192.168.1.253"
alias 2253="ssh mac@192.168.2.253"
alias 136="ssh mac@192.168.1.136"
alias 162="ssh pirate@192.168.1.162"
alias 8819="ssh mac@192.168.88.19"
alias 2203="ssh br@192.168.2.203"
#alias base="ssh -t mabingtao@192.168.7.20 'ssh -t 172.31.0.9 'sudo -u pirate -i''"
alias base="ssh -t mabingtao@192.168.7.20 'ssh -t 192.168.7.29' sudo -u pirate -i''"


# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/mabingtao/Downloads
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/mabingtao/Downloads/cocos2d-x-3.17/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

#golang 
export GOROOT=/usr/local/go/
export GOPATH=/Users/mabingtao/work/golang
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export GOPATH=$GOPATH:/Users/mabingtao/work/gravs/graverobberserver
#export GOPATH=$GOPATH:/Users/mabingtao/work/mmo/botgserver
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#mysql 
export PATH=/usr/local/opt/mysql-client/bin:$PATH

alias genpb='cd  /Users/mabingtao/work/gravs/graverobberclient/protobuf && ./protoc-gen-lua.sh && cd -'
alias gu='gitup.sh /Users/mabingtao/work/gravs/graverobberclient/unity'
alias gs='gitup.sh /Users/mabingtao/work/gravs/graverobberserver'
alias gb='cd /Users/mabingtao/work/gravs/graverobberserver/src/babeltime.com/logicserver; /usr/local/go/bin/go install -v -gcflags "-N -l" ./...; cd -'

#port tcp
function port()  { lsof -iTCP:$1; }
function ports() { lsof -Pn -sTCP:LISTEN; }

#etcd
ETCDCTL_API=3
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

export CMAKE_C_COMPILER='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang'
export CC='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang'
export CXX='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++'
