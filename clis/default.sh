#############################
### IMPORT YOUR CLI BELOW ###
#############################

file_paths=$(find $HOME/.config/bash/clis/*/ -type f -name "*.sh")

for file in $file_paths; do
  source "$file"
done
