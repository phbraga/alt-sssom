#!/bin/sh

BIN_NAME="./alt-sssom"
PARAM="../../pbml/phmb4/Parameters/alt-sssom-deep_0"
TEST_FILE="../../pbml/phmb4/Parameters/inputCifar10Test"
TRAIN_FILE="../../pbml/phmb4/Parameters/inputCifar10Train"
RESULT_FOLDER="../alt-sssom-deep"
NUM_NOMES=1000

tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}01 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l01/ -p ${PARAM} -s -c -N ${NUM_NODES}"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}05 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l05/ -p ${PARAM} -s -c -N ${NUM_NODES}"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}10 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l10/ -p ${PARAM} -s -c -N ${NUM_NODES}"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}25 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l25/ -p ${PARAM} -s -c -N ${NUM_NODES}"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}50 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l50/ -p ${PARAM} -s -c -N ${NUM_NODES}"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}75 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l75/ -p ${PARAM} -s -c -N ${NUM_NODES}"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE} -t ${TEST_FILE} -r ${RESULT_FOLDER}-l100/ -p ${PARAM} -s -c -N ${NUM_NODES}"