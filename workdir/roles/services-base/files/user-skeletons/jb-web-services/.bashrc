#!/usr/bin/env bash

if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

alias ll='ls -la'