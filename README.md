# dotfiles

An easy way to set up the configuration to a new OS installation and syncronize it to all of the machines.

## Overview
In this repo you can find some configurations for bash and git.
Please note that the bashrc and gitconfig files of the repo should not substitute the .bashrc and .gitconfig home directory files.
Instead the content of the repo files should be appended to the home files.

## Installation
Running the file include.sh, appends only the location of the repo files to the home directory config files. Thus the configuration is always syncronized with the local repository.
```
  $ git clone https://github.com/ygkoumas/dotfiles.git
  $ cd dotfiles
  $ ./include.sh
```

## Update
`git pull`
into repo folder
