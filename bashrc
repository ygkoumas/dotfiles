# installer instructions
####source CURRENT_FILE_PATH

# text colors
GRAY_WHITE="\[\033[90;107m\]"
BLUE_GRAY="\[\033[01;34;100m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
YELLOW_GRAY="\[\033[0;33;100m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
GREY="\[\033[00;00m\]"
BLUE="\[\033[01;34m\]"
WHITE="\[\033[00m\]"
LGREEN="\[\033[01;32m\]"

# prompt with git branch
function parse_git_branch () {
	git bran 2> /dev/null
}
PS1="$GRAY_WHITE\$(parse_git_branch)$BLUE_GRAY \w$WHITE\$ "

# aliases
alias pr='cd $(git root)'

# grep
alias grep='grep --color=auto'

# git
alias st='git status'
alias br='git bran'
alias abs='git submodule --quiet foreach  git bran |sort -u'

# remove color codes/special characters
alias plaintext='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'

#tcl
#create a tcl executable file
tcltouch() { echo '#!/usr/bin/tclsh' >> $1; echo $2 >> $1; chmod +x $1; }

# firefox profile manager
alias ffpm='firefox -ProfileManager -no-remote'
alias ff='firefox -P default'
alias ffdev='firefox -P DEV'

# ls
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias lll='ll'

# find files
alias search='find -iname'

# use python without creating pyc files
alias pythonr='python -B'

# functions
# easy calculations
calc() { echo $(( $1 )); }

# grep recursively all files with $1 extension
gre() { grep -r --include '*'$1  $2; }

# git recursively, similar to "git submodule foreach"
rgit()
{
	for i in $(echo */);
	do
		echo "";
		echo $i;
		cd $i;
		git "$@";
		cd ..;
	done
}

# try to cd lower on the filesystem
fd() { cd $1 || fd '*/'$1; }

# show the weather of a given location
weather() { curl 'wttr.in/'$1; }

# print a new line after output of every command
PROMPT_COMMAND="echo"
