#################
### FUNCTIONS ###
#################

# Update gnome terminal title
function termtitle() {
    # take argument
    TITLE=$1
    shift
    # update title
    PROMPT_COMMAND='echo -ne "\033]0; $TITLE \007"'
}

# Take the branch in local folder, if have .git path
parse_git_branch() { git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \ \1/' -e 's/[[:space:]]//g'; };

########## Docker functions
# return hostname, name and ips from cointaines running
function docker-ips {
  local containers=$(docker container ls | grep -v 'CONTAINER'| awk '{ printf(" %s", $1) }')
  for container in $containers; do
    docker inspect --format  " {{.Config.Hostname}} | {{.Name}} | {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} |"  $container
  done
}

# compose comands friendly from a compose file development
function friendly-compose() {
  # you need to use some standard like "docker-awesome-wonderful.yml" in your project
  # then user the tag start or empty to see all tags from docker compose usage

  docker compose -f $(find -name 'docker*-*-*.yml') $1
}

# starting bash docker function
function open-bash-in-docker() {
  docker exec -it $1 bash
}

# autocomplete to docker find name
_docker_auto_completion_name() {
  local name
  for name in "$(docker ps --format {{.Names}} | grep -v 'NAMES' | grep -s -G "$2[a-z]*.*" )"; do
    COMPREPLY+=( $(basename "$name") )
  done
}

# link autocompletion in to function autocompletion
complete -F _docker_auto_completion_name open-bash-in-docker

############## to navigate

# to navigate in custom projects paths
function project_path() {
  cd "$PROJECTS_ROOT_PATH"/$1
}

# funtion privated to path autocompletion
_project_path_auto_complete() {
    local file
    for file in "$PROJECTS_ROOT_PATH/$2"*; do
        [[ -d $file ]] || continue
        COMPREPLY+=( $(basename "$file") )
    done
}

# link autocompletion in to function autocompletion
complete -F _project_path_auto_complete project_path

############### to servicies

function who_service_use_port(){
  sudo lsof -i -P -n | grep $1
}

function stop_service() {
  sudo systemctl stop $1
}

function power_options() {
  /home/$USER/.config/bash/bin/logout
}

function change_display() {
  /home/$USER/.config/bash/bin/rofi_change_display
}
