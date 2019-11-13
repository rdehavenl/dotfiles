## Lets set some directries
export MYBIN=$HOME/bin
export PACKERBIN=/opt/packer
export TERRAFORMBIN=/opt/terraform
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

## Now the EC2_HOME
export EC2_HOME=$MYBIN/ec2/ec2-api-tools

## Now lets set our PATH
export PATH=$PATH:$MYBIN:$PACKERBIN:$TERRAFORMBIN:$EC2_HOME/bin

## RVM Source
source $HOME/.rvm/scripts/rvm

## Bit Branch Gathering
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;37m\]\h\[\033[01;34m\] \w\[\033[01;32m\]\$(parse_git_branch) \[\033[01;34m\]\$ \[\033[00m\]"
alias myvm="ssh -A 3mhis.vm"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
unset cd
eval $(thefuck --alias)
