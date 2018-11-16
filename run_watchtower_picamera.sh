#!/bin/bash

set -e

source /home/software/docker/env.sh

roslaunch duckietown camera.launch veh:=$HOSTNAME raw:=true decoder_param_file_name:=watchtower
