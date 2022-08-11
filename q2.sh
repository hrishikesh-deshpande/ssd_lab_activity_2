#! /bin/bash
# cat /etc/shells | grep "/usr/bin/" | grep -o "\w*\$" #####! does not show '.' in name of hidden shells
cat /etc/shells | grep "/usr/bin/" | awk 'BEGIN {FS="/"}; {print $NF}'
