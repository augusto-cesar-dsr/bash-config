source "$HOME/.config/bash/clis/default.sh"

file_paths=$(find $HOME/.config/bash/ -type f -name "bash_*.sh")

for file in $file_paths; do
  source "$file"
done
