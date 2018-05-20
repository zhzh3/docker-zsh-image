FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install zsh git vim curl wget -y
RUN curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

RUN mkdir -p /var/lib/locales/supported.d/
RUN echo '' >> /var/lib/locales/supported.d/locale
RUN sed -i '$a zh_CN.UTF-8 UTF-8' /var/lib/locales/supported.d/locale
RUN sed -i '$a en_US.UTF-8 UTF-8' /var/lib/locales/supported.d/locale
RUN sed -i '$a zh_CN.GBK GBK' /var/lib/locales/supported.d/locale

RUN dpkg-reconfigure locales

ENV LC_ALL zh_CN.UTF-8  
ENV LANG zh_CN.UTF-8  
