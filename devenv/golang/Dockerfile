# Dockerfile for golang dev environment
FROM ubuntu:18.04
MAINTAINER leakgintapan

# TODO: install make
# TODO: Install sudo apt-get install build-essential
RUN apt-get update && apt-get install git tmux vim curl zsh -y
# install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install golang 1.11.4
RUN mkdir /root/downloads
ADD https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz /root/downloads
RUN tar xzf /root/downloads/go1.11.4.linux-amd64.tar.gz -C /usr/local

# install vundle
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install dotfiles
RUN git clone https://github.com/leakingtapan/dotfiles.git ~/dotfiles

CMD ["/bin/zsh"]
