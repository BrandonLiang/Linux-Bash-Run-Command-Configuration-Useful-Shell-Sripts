
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

export SPARK_HOME=/usr/local/Cellar/apache-spark/2.2.0/libexec
#export SPARK_HOME=$SPARK_HOME/libexec:$SPARK_HOME
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build:$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
export PATH=$SPARK_HOME/../bin:$PATH
export PATH=$HOME/anaconda3/bin:$PATH # adding Anaconda3
export PATH=/opt/anaconda/bin:$PATH
export PATH=~/src/opensmile-2.3.0:$PATH # openSmile
#export PYTHONPATH=$SPARK_HOME/libexec/python:$SPARK_HOME/libexec/python/build:$SPARK_HOME/libexec/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
#export JAVA_HOME=/usr/bin/java
#export PYSPARK_SUBMIT_ARGS="--master spark://brliang:7077"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

export PATH="$PATH:/usr/local/smlnj-110.78/bin"
# added by Anaconda 2.3.0 installer
export PATH="/Users/brandonliang/anaconda/bin:$PATH"

##
# Your previous /Users/brandonliang/.bash_profile file was backed up as /Users/brandonliang/.bash_profile.macports-saved_2016-03-24_at_15:59:59
##

# MacPorts Installer addition on 2016-03-24_at_15:59:59: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export SSL_CERT_FILE="/Users/brandonliang/anaconda3/lib/python3.7/site-packages/certifi/cacert.pem"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias l='ls -ltha'

##
# Your previous /Users/brandonliang/.bash_profile file was backed up as /Users/brandonliang/.bash_profile.macports-saved_2016-09-05_at_20:39:39
##

# MacPorts Installer addition on 2016-09-05_at_20:39:39: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
alias today='date +"%A, %B %-d, %Y"'

# tree with common ignores
alias treet="tree -I 'lib_managed'"
alias trees="tree -I 'target|lib_managed'"
alias treet="tree -I 'target|lib_managed|tmp'"
alias treeu="tree -I 'target|lib_managed|tmp|test'"
alias remote="ssh -l truthexi truthexistseverywhere.com"
alias git_graph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(black)%s%C(reset) %C(dim red)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias jupyter_notebook="jupyter notebook --browser $1"
alias 4118_vm_ssh="ssh w4118@172.16.78.133"
alias 4705_001_gcp_ssh="ssh -Y xl2891@35.192.201.79"
alias cs_ssh="ssh xl2891@clic.cs.columbia.edu"
alias speech_lab_ssh="ssh xl2891@puma.cs.columbia.edu"
alias pandas_df="~/src/MachineLearning/bin/pandas_df.sh"
alias spark_df="~/src/MachineLearning/bin/spark_df.sh"
alias install_kernel="sudo make modules_install && sudo make install"

# git commands
alias git_log="git log --all --decorate --oneline --graph"

# ssh commands
alias oracle="ssh -i ~/.ssh/id_rsa opc@129.213.56.191"

# Color prompt by paul
RED='\[\033[01;31m\]'
WHITE='\[\033[01;00m\]'
GREEN='\[\033[01;32m\]'
BLUE='\[\033[01;34m\]'
#export PS1="${debian_chroot:+($debian_chroot)}$GREEN\u$WHITE@$BLUE\h$WHITE\w\$ " 
export PS1="$(date +%Y/%m/%d\ %H:%M:%S) ${debian_chroot:+($debian_chroot)}$GREEN\u$WHITE@$BLUE\h$WHITE\w\$ "
git config --global color.ui auto
# Enable tab completion
#source ~/git-completion.bash

# colors!
#green="\[\033[0;32m\]"
#blue="\[\033[0;34m\]"
#purple="\[\033[0;35m\]"
#reset="\[\033[0m\]"

# Change command prompt
#source ~/git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
#export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export BASH_SILENCE_DEPRECATION_WARNING=1

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/src/speech-to-text-807cad04130b.json"
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
  tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }
export PATH="/usr/local/opt/ruby/bin:$PATH"
