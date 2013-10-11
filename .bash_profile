export HISTSIZE=1000000
export HISTCONTROL=ignoredups
export SVN_EDITOR=vim

alias mysql='mysql -uroot -p'
alias sublime2="/home/frank/SublimeText2/sublime_text"
alias sublime="/opt/sublime_text/sublime_text"
alias be="bundle exec"
alias l="ls -lah"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function parse_git_branch {
    branch=$(git branch 2> /dev/null | grep "*" | sed -e s/^..//g)
      if [[ -z ${branch} ]]; then
            return
              fi
                echo " ["${branch}"]"
}

export PS1=""
USER_HOST="frank@dev-frank"
if [ $USER_HOST !=  "$(whoami)@$(hostname -f)" ]; then
    PS1="\u@\h"
    fi

#PS1=$PS1"\w\$(parse_git_branch)\n$ "
PS1=$PS1"\w\$(parse_git_branch)$ "
