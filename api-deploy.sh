#!/bin/bash

#COMMAND LINE VARIABLES 
#1. environment eg: dev or sit or uat
env=$1

#2. deploy port arguement eg: 8080 
serverPort=$2

#3. jar name
projectName=$3

#4. external configuration
configFile=$4

#### CONFIGURABLE VARIABLES ######
#destination absolute path. It must be pre created
# todo : improve this script to create if not exists
destAbsPath=/Users/praveentirunamali/mine/projects/springboots-manual/$projectName/$env

if [ -d $destAbsPath ] 
then
    echo "Directory exists"
    rm -rf $destAbsPath
    echo "deleted directory"
fi

if [ ! -d $destAbsPath ] 
then
    mkdir $destAbsPath
    echo "created path $destAbsPath"
fi

