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

# return hostname, name and ips from cointaines running
function docker-ips {
  local containers=$(docker container ls | grep -v 'CONTAINER'| awk '{ printf(" %s", $1) }')
  for container in $containers; do
    docker inspect --format  " {{.Config.Hostname}} | {{.Name}} | {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} |"  $container
  done
}

function project_path() {
  PROJECT=$1
  shift
  cd "$PROJECTS_ROOT_PATH/$PROJECT/"
}

