#!/bin/bash

################################################################################
##### Specify software and dependencies that are required for this project #####
################################################################################

##### Yarn #####
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update
# sudo apt install -y yarn

##### Node v14.x + npm #####
# curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
# sudo apt-get install -y nodejs

##### Python + Pip + Poetry #####
# sudo apt-get install -y python3-distutils
# sudo apt-get install -y python3-apt
# curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py
# rm get-pip.py
# source $HOME/.poetry/env

##### Golang v16x #####
# wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
# sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.16.7.linux-amd64.tar.gz
# echo "" | sudo tee -a ~/.bash_profile
# echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.bash_profile
# echo "" | sudo tee -a ~/.zshrc
# echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.zshrc
# rm go1.16.7.linux-amd64.tar.gz
