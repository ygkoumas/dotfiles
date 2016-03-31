# dotfiles

## Overview
An easy way to set up the configuration to a new OS installation and syncronize it to all of the machines.
### What are there?
Here there are some configurations for bash and git.
The bashrc and gitconfig files of the repo should not substitute the .bashrc and .gitconfig home directory files.
Instead the content of the repo files can be appended into the home files.

## Installation
Running the file include.sh, appends only the location of the repo files into the home directory config files. Thus the configuration is always syncronized with the local repository.
```
  $ git clone https://github.com/ygkoumas/dotfiles.git
  $ cd dotfiles
  $ ./include.sh
```

###Update
`git pull` into repo folder
