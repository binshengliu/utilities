#!/bin/bash
unset http_proxy
unset https_proxy
# LC_CTYPE=zh_CN.UTF-8 exec tsocks emacsclient -a "" -c "$@"
LC_CTYPE=zh_CN.UTF-8 exec emacsclient -a "" -c "$@"
