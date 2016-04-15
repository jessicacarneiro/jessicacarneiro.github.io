#!/bin/zsh
# Modified Gist https://gist.github.com/jessicacarneiro/ed9e197841cd4ade1ac5

if [ "$#" -ne 1 ] ; then
  echo "Usage: $0 <title>" >&2
  exit 1
fi


title=`echo "$1" |sed 's/ /-/g'`
fileName="_posts/`date +%Y-%m-%d-$title.md`"

touch $fileName

cat > $fileName <<DELIM
---
layout: post
title: "$1"
date:  `date "+%Y-%m-%d %H:%M:%S"`
categories:
---

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

DELIM

mvim $fileName +8
