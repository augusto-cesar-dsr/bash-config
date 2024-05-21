#########################################
########## BASH VARIABLES SETS ########## 
#########################################

#############
### PATHS ###
#############
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux64/bin"
export NVM_DIR="$HOME/.nvm"

##############
### EVALS ###
#############
eval "$(rbenv init -)"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#####################
### PROMPT CURSOR ###
#####################
export PS1='\[\e[1;36m\][\[\e[0;32m\]\[\e[1;37m\]🤖\[\e[0;90m\] $(basename $PWD)\[\e[1;37m\]👾\[\e[1;36m\] 🤔 \[\e[1;31m\]$(parse_git_branch)\[\e[1;36m\]]▶ \[\e[0m\]'

