#!/bin/bash

set -e

source /home/software/docker/env.sh

roslaunch duckietown camera.launch veh:=docker raw:=true
