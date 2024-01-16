export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"
export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/php@8.0/lib"
export CPPFLAGS="-I/usr/local/opt/php@8.0/include"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi
# DevOps
export WEBROOT=/Volumes/dev007/servers/localhost
export GITHOME=/Volumes/dev007/repos
# Colors for prompt
BLACK="\[\033[0;30m\]"
BLACKB="\[\033[1;30m\]"
RED="\[\033[0;31m\]"
REDB="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
GREENB="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
YELLOWB="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
BLUEB="\[\033[1;34m\]"
PURPLE="\[\033[0;35m\]"
PURPLEB="\[\033[1;35m\]"
CYAN="\[\033[0;36m\]"
CYANB="\[\033[1;36m\]"
WHITE="\[\033[0;37m\]"
WHITEB="\[\033[1;37m\]"
RESET="\[\033[0;0m\]"
# git prompt helpers
git_branch () {
    if git rev-parse --git-dir >/dev/null 2>&1
        then echo -e "" \[$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')\]
    else
        echo ""
    fi
}
git_color() {
    local STATUS=`git status 2>&1`
    if [[ "$STATUS" == *'Not a git repository'* ]]
        then echo "" # nothing
    else
        if [[ "$STATUS" != *'working tree clean'* ]]
            then echo -e '\033[0;31m' # red if need to commit
        else
            if [[ "$STATUS" == *'Your branch is ahead'* ]]
                then echo -e '\033[0;33m' # yellow if need to push
            else
                echo -e '\033[0;32m' # else green
            fi
        fi
    fi
}
export PS1=$WHITE'\u'$WHITE'@'$BLUE'\h'$WHITE':'$PURPLE'[\w]\e[0m$(git_color)$(git_branch)\n'$WHITE'\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
export CLICOLOR=1
export LSCOLORS=GxExBxBxFxegedabagacad
# end prompt and colors
# aliases
alias ll='ls -alh'
alias llr='ls -alhr'
alias lls='ls -alhS'
alias llsr='ls -alhSr'
alias lld='ls -alht'
alias lldr='ls -alhtr'
alias lldc='ls -alhtU'
alias lldcr='ls -alhtUr'
h() { history | grep "$1"; }
alias perm="stat -f '%Lp'"
alias mkdir='mkdir -pv'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias getsshkey="pbcopy < ~/.ssh/id_rsa.pub"
bash-as() { sudo -u $1 /bin/bash; }
disk-usage() { du -hs "$@" | sort -nr; }
dirdiff() { diff -u <( ls "$1" | sort)  <( ls "$2" | sort ); }
alias edithosts='nano /etc/hosts'
alias editbash='nano ~/.bash_profile'
alias editsshconfig='nano ~/.ssh/config'
alias home='clear && cd ~ && ll'
alias downloads='clear && cd ~/Downloads && ll'
cs() { cd "$@" && ls; }
cl() { cd "$@" && ll; }
project() { clear && cl $GITHOME/"$@"; }
alias add-dock-spacer='defaults write com.apple.dock persistent-apps -array-add "{'tile-type'='spacer-tile';}" && killall Dock'   # Add a spacer to the dock
alias show-hidden-files='defaults write com.apple.finder AppleShowAllFiles 1 && killall Finder'                                   # Show hidden files in Finder
alias hide-hidden-files='defaults write com.apple.finder AppleShowAllFiles 0 && killall Finder'                                   # Hide hidden files in Finder
alias show-dashboard='defaults write com.apple.dashboard mcx-disabled -boolean NO && killall Dock'                                # Show the Dashboard
alias hide-dashboard='defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock'                               # Hide the Dashboard
alias show-spotlight='sudo mdutil -a -i on'                                                                                       # Enable Spotlight
alias hide-spotlight='sudo mdutil -a -i off'                                                                                      # Disable Spotlight
alias today='grep -h -d skip `date +%m/%d` /usr/share/calendar/*'                                                                 # Get history facts about the day
alias mute=" osascript -e 'set volume output muted true' "
alias noMute=" osascript -e 'set volume output muted false' "
alias audio1=" osascript -e 'set volume 1' "
alias audio2=" osascript -e 'set volume 2' "
alias audio3=" osascript -e 'set volume 3' "
alias audio4=" osascript -e 'set volume 4' "
alias audio5=" osascript -e 'set volume 5' "
alias audio6=" osascript -e 'set volume 6' "
alias audio7=" osascript -e 'set volume 7' "
alias edit_profile="nano ~/.bash_profile"
alias reload_profile="source ~/.bash_profile"
alias resource='source ~/.bash_profile'
# functions & helpers
mktar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mkzip() { zip -r "${1%%/}.zip" "$1" ; }
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
alias make1mb=' mkfile 1m ./1MB.dat '
alias make5mb=' mkfile 5m ./5MB.dat '
alias make20mb=' mkfile 20m ./20MB.dat '
alias make30mb=' mkfile 30m ./30MB.dat '
alias make50mb=' mkfile 50m ./50MB.dat '
alias brewup='brew update && brew upgrade && brew cleanup'
makeServer() {
    path="$1"
    if [ -z "$path" ]; then
        path="."
    fi
    port="$2"
    if [ -z "$port" ]; then
        port="9001"
    fi
    file="$3"
    if [ -z "$file" ]; then
        file="index.php"
    fi
    open http://localhost:$port/$file
    php -t $path -S localhost:$port
}
openSocialTabs() {
  open 'https://github.com/' \
      'https://www.linkedin.com/' \
      'https://www.facebook.com/' \
      'https://www.twitter.com/'
}
killPhp() {
    killall php
}
optimize_here() {
    open -a ImageOptim .
}
weather() {
    location="$1"
    if [ -z "$location" ]; then
        location="quincy+ma"
    fi
    curl http://wttr.in/$location?lang=en
}
alias celebrate="grep -h -d skip `date +%m/%d` /usr/share/calendar/*"
alias dev-where='
        which bash;
        which git;
        which brew;
        which php;
        which node;
        which npm;
        which mysql;
        which java;
        '
alias dev-what='
        echo "----- bash  -----------------------------------------------"; bash --version;
        echo "----- git   -----------------------------------------------"; git --version;
        echo "----- brew  -----------------------------------------------"; brew --version;
        echo "----- php   -----------------------------------------------"; php --version;
        echo "----- node  -----------------------------------------------"; node --version;
        echo "----- npm   -----------------------------------------------"; npm --version;
        echo "----- mysql -----------------------------------------------"; mysql --version;
        echo "----- java  -----------------------------------------------"; java -version;
        '
# dev-where
# dev-what
