#!/bin/bash

unset http_proxy
unset https_proxy

# "If your LC_CTYPE is English, you may not be able to use input
# method in emacs due to an old emacs' bug. You can set your LC_CTYPE
# to something else such as zh_CN.UTF-8 before emacs starts to get rid
# of this problem."

# See https://wiki.archlinux.org/index.php/fcitx#Emacs and
# https://fcitx-im.org/wiki/FAQ#Emacs
LC_CTYPE=zh_CN.UTF-8 proxychains emacsclient -a "" -c "$@"
