# installer instructions
####source CURRENT_FILE_PATH

# text colors
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
GREY="\[\033[00;00m\]"
BLUE="\[\033[01;34m\]"
WHITE="\[\033[00m\]"
LGREEN="\[\033[01;32m\]"

# prompt with git branch
function parse_git_branch () {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
PS1="$YELLOW\$(parse_git_branch) $BLUE\w$WHITE\$ "

# aliases
alias pr='prv=$(pwd)'/' ; if [[ $prv == *"/git/"?* ]]
then
	cd ${prv/${prv#/*git/*/}/};
else
	cd ~/git
fi'
alias st='git status'
alias br='git bran'
alias abs='git sub git branch |grep \*'
