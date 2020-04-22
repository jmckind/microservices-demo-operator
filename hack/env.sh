#!/bin/sh

# Copyright 2020 Microservices-Demo Operator Developers
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# 	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# General vars
export MSD_OPERATOR_NAME=${MSD_OPERATOR_NAME:-"microservices-demo-operator"}
export MSD_OPERATOR_NAMESPACE=${MSD_OPERATOR_NAMESPACE:-"demo"}
export MSD_OPERATOR_VERSION=${MSD_OPERATOR_VERSION:-`awk '$1 == "Version" {gsub(/"/, "", $3); print $3}' version/version.go`}
export MSD_OPERATOR_PREVIOUS_VERSION=${MSD_OPERATOR_PREVIOUS_VERSION:-`awk '$1 == "Version" {gsub(/"/, "", $3); print $3}' version/version.go`}
export MSD_OPERATOR_BUILD_DIR=${MSD_OPERATOR_BUILD_DIR:-"build"}
export MSD_OPERATOR_DEPLOY_DIR=${MSD_OPERATOR_DEPLOY_DIR:-"deploy"}
export MSD_OPERATOR_DOCS_DIR=${MSD_OPERATOR_DOCS_DIR:-"docs"}
#export MSD_OPERATOR_BRANCH_NAME=${MSD_OPERATOR_BRANCH_NAME:-`git status -b -uno | awk 'NR==1{print $3}'`}
export MSD_OPERATOR_BRANCH_NAME=${MSD_OPERATOR_BRANCH_NAME:-"latest"}

# Container image vars
export MSD_OPERATOR_IMAGE_BUILDER=${MSD_OPERATOR_IMAGE_BUILDER:-"podman"}
export MSD_OPERATOR_IMAGE_REPO=${MSD_OPERATOR_IMAGE_REPO:-"quay.io/jmckind/${MSD_OPERATOR_NAME}"}
export MSD_OPERATOR_IMAGE_TAG=${MSD_OPERATOR_IMAGE_TAG:-${MSD_OPERATOR_BRANCH_NAME}}
export MSD_OPERATOR_IMAGE=${MSD_OPERATOR_IMAGE:-"${MSD_OPERATOR_IMAGE_REPO}:${MSD_OPERATOR_IMAGE_TAG}"}

# Ensure go module support is enabled
export GO111MODULE=on
