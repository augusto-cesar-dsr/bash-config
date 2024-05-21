#############################################
############ PERSONALITY ALIAS ##############
#############################################

#######################
### PROJECT ALIASES ###
#######################
alias show_projects='ls $PROJECTS_ROOT_PATH'
alias frs='foreman s'

#########################
### SOFTWARES ALIASES ###
#########################
alias vim=nvim

###################
### GIT ALIASES ###
###################
alias gp='git pull origin develop'
alias gd='git diff --cached'
alias gs='git status'

###################
### SSH ALIASES ###
###################
alias dev='ssh dev' # precisa ter configurado o arquivo ~/.ssh/config
alias qa='ssh qa' # precisa ter configurado o arquivo ~/.ssh/config

#####################
### CONDA ALIASES ###
#####################
# alias conda_up='conda activate'
# alias conda_down='conda deactivate'

##############################
### OLD ALIASES & EXAMPLES ###
##############################
# alias study_vue_path='cd ~/Documentos/Estudos-Cursos/Sites/Curso-VUE/'
# alias study='tmuxinator start study'
# alias stpstudy='cd ~ && tmuxinator stop study'

# alias start='termtitle git &&
#              project_path &&
#              gnome-terminal --tab -t server -- bash -c "foreman s; exec bash" &&
#              gnome-terminal --tab --title="rails c" -- bash -c "rails c; exec bash" &&
#              gnome-terminal --tab -t geral -- bash -c "code . && clear &&
#              echo \"Alguma mensagem usual!\"; exec bash" &&
#              clear'
# alias stpstart='cd ~ && tmuxinator stop start'

