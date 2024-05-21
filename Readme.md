# This is my bash config modular 

clone this repository in ~/.config/bash/
```bash
git clone git@github.com:augusto-cesar-dsr/bash-config.git ~/.config/bash
```

then run:
```bash
touch ~/.config/bash/bash_specifics_cmds.sh
echo 'source "$HOME/.config/bash/imports.sh"' >> ~/.bashrc
```
## Files
- .bash_aliases: this is a file with alias to your system


- bash_specifics_cmds.sh: is a file with some information for not share, is in this file you should create a `export PROJECTS_ROOT_PATH='root path to yours projects'`


- bash_variables.sh: is a file to use export some variable


- bash_functions.sh: is a file to save yours functions


- clis/: is a directory to save your tree files with the clis for yours project.
No need change the clis/default.sh, cus they for default import all clis files inside the path.
