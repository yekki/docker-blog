#!/bin/bash

if [ -d "/data" ]; then
  cd /data
  git clone https://github.com/yekki/yekki.github.com /data
  bundle install
fi