#! /bin/bash
N_L=$(cat -n "$1" | wc -l)
N_L=$(((N_L + 1) / 2))
echo $(awk "NR == $N_L {print; exit}" $(echo $1))
