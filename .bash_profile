
# [ALIASES]

## system shortcuts
alias ls="ls -G"
alias egrep="egrep --colour"
alias grep="egrep --colour"

## installed software shortcuts
alias nose="nosetests --verbosity=2 -s"

## useful shortcuts
alias delete_pyc="find . -name "*.pyc" -exec rm -rf {} \;"
alias mysql_dump="mysqldump -u root --opt --add-drop-table --compact --quick -B \!^ > \!^.sql"
alias graph_models="./manage.py graph_models -a -g -o \!^.png"

## MacOS specific
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

# [PATHS]

export PATH=$PATH:$HOME/usr/bin:/usr/local/sbin:/data/usr/bin:/opt/local/bin:/opt/local/sbin:
export GEM_HOME='/usr/local/Cellar/gems/1.8'
export BASH_COMPLETION_PATH=$HOME/usr/bash_completion.d
export PKG_CONFIG_PATH=/usr/local/Cellar/graphviz/2.26.3/lib/pkgconfig/

source ~/.git-completion.bash
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[00m\]$(__git_ps1 "(%s)") \$ ' 

eval "`pip completion --bash`"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# MacOS specific
# copy or tar files without ._ (dot underscore) files in OSX
export COPY_EXTENDED_ATTRIBUTES_DISABLED=true
