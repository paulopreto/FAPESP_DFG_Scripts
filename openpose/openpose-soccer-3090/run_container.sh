#!/bin/bash

WORKING_DIR=$(pwd)
DOCKER_NAME=openpose
CUDA_VISIBLE_DEVICES=0

LOCAL_DATASET_DIR=${WORKING_DIR}/data
LOCAL_WORKING_DIR=${WORKING_DIR}/working

DOCKER_DATASET_DIR=/dataset
DOCKER_WORKING_DIR=/working


filename=$(basename ${fname})
docker run --gpus all -it --rm --userns=host --pid=host \
    -v ${HOME}:${HOME} \
    -v ${LOCAL_DATASET_DIR}:${DOCKER_DATASET_DIR} \
    -v ${LOCAL_WORKING_DIR}:${DOCKER_WORKING_DIR} \
    -v $HOME:$HOME \
    ${DOCKER_NAME} bash 

