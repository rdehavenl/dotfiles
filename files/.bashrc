# .bashrc

## MyStuf, and bits
GIT_COMPLETION=1
GIT_COMPLETION_INSTALL_SRC="https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.aws_credentials
source ~/.aws_my_instance

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ $GIT_COMPLETION == 1 ]; then
  if [ ! -f ~/.bash_git ];  then
    if [ ! -z $GIT_COMPLETION_INSTALL_SRC ]; then
      echo "Info: Fetching Git-Prompt from '$GIT_COMPLETION_INSTALL_SRC'"
      curl -sL ${GIT_COMPLETION_INSTALL_SRC} > ~/.bash_git 
      source ~/.bash_git
      export PS1='\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;37m\]\h\[\033[01;34m\] \w\[\033[01;32m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$ \[\033[00m\]'
    else
      echo "Warning: Git-Prompt not installed, not auto-installing" 
    fi
  else
    source ~/.bash_git
    export PS1='\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;37m\]\h\[\033[01;34m\] \w\[\033[01;32m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$ \[\033[00m\]'
  fi
fi
