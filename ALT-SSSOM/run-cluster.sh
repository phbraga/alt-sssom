#!/bin/sh

BIN_NAME="./alt-sssom"
PARAM="../../pbml/phmb4/Parameters/alt-sssom-cluster_0"
TRAIN_FILE="../../pbml/phmb4/Parameters/inputPathsTrain00"
RESULT_FOLDER="../alt-sssom-cluster"

tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE} -r ${RESULT_FOLDER}-l00/ -p ${PARAM} -s -c -n"