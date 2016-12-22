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
alias pr='prv=$(pwd)'/' ; if [[ $prv == *"/git/"?* ]]
then
	cd ${prv/${prv#/*git/*/}/};
else
	cd ~/git
fi'

# git
alias st='git status'
alias br='git bran'
alias abs='git sub git bran |grep -v Entering |sort | uniq'

# remove color codes/special characters
alias plaintext='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'

# firefox profile manager
alias ffpm='firefox -ProfileManager -no-remote'
alias ff='firefox -P default'
alias ffdev='firefox -P DEV'

# ls
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lll='ll'

# find files
alias search='find -iname'

# functions
# easy calculations
calc() { echo $(( $1 )); }

# grep recursively all files with $1 extension
gre() { grep -r --include '*'$1  $2; }

