#!/bin/bash
env_name=$1
cmd="$2 $3 $4 $5 $6 $7 $8 $9"
__conda_setup="$('/opt/conda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"

. /opt/conda/etc/profile.d/conda.sh

unset __conda_setup
conda activate $env_name 
$cmd
