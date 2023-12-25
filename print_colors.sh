#!/bin/sh

# print info
info="\n\
  ayu-light-sh\n\
  https://github.com/llistnr/ayu-light-ish\n\
  ayu-light theme for ish\n"
echo $info

# print foreground colors
text="ayu-light"
fgs=(30 31 32 33 34 35 36 37)
for fg in $fgs[@]; do
    echo -n " "
    echo -en " \033[${fg}m${text} "
done
echo "\n"

# print background colors
text="         "
bgs=(40 41 42 43 44 45 46 47)
for i in {1..10}; do
    for bg in $bgs[@]; do
        echo -n " "
        echo -en " \033[${fg}m\033[${bg}m${text}\033[0m "
    done
    echo
done
echo

