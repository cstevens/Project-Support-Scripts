#!/bin/bash
set -x #echo on
#############################
#
# copyright 2018 Open Connectivity Foundation, Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#############################

CURPWD=`pwd`

OCF_VERSION=$1

if [[ ! -v OCFPATH ]]; then
  echo "export OCFPATH=~/$OCF_VERSION" >> ~/.bashrc
  echo "export PATH=~/OCF_VERSION:\$PATH" >> ~/.bashrc
elif [ "$OCFPATH" == 'iot' ]; then
  sed -i.bak "s|"iot"|${OCF_VERSION}|g" ~/.bashrc
else
  sed -i.bak "s|"iot-lite"|${OCF_VERSION}|g" ~/.bashrc
fi

export OCFPATH=~/$OCF_VERSION

cd $CURPWD
