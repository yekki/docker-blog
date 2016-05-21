FROM ubuntu

# initialize os
RUN cp /etc/apt/sources.list /etc/apt/sources.list.old \
    && sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
    && apt-get -y update \
    && apt-get -y upgrade

# install & config base functions
RUN apt-get install -y git \
    && apt-get install -y build-essential \
    && apt-get install -y net-tools \
    && apt-get install -y vim \
    && apt-get install -y ruby-full \
    && gem sources --remove https://rubygems.org/ \
    && gem sources -a https://ruby.taobao.org/ \
    && gem install bundle \
    && bundle config 'mirror.https://rubygems.org' 'https://ruby.taobao.org' \
    && gem install jekyll

COPY scripts/* /usr/local/bin

