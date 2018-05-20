FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install zsh git vim curl wget -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
