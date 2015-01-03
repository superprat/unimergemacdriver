#!/bin/sh
#
#
#  Copyright [2014] [Prateek Gupte]
# 
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
# 
#      http://www.apache.org/licenses/LICENSE-2.0
# 
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#
# Paste this file in the root Folder and make sure Assets Folder is also available in the Root Folder
#
# <Local .git folder>/config needs a custom git driver
#[merge "unity"]
#	name = Unity merge
#	driver = ../merge-unity.sh %O %A %B 
#
#


#Check number of arguments
if [ "$#" -ne 3 ]; then
  echo "Usage: [ShellScript] theirs.doc mine.doc base.doc"
  exit 1
fi

sTheirDoc=$1
sMyDoc=$2
sBaseDoc=$3

PROCESSNAME="Unity"

#Check if Unity is Running
#Todo launch Unity and SceneMerge tool if Unity is not running
case "$(ps aux | grep $PROCESSNAME | wc -l)" in

0)  echo "Unity is not Running"
    ;;
*)  echo "Unity is Running"
    ;;

esac

echo "$sMyDoc\n$sTheirDoc" > ..//Assets//merges.txt
