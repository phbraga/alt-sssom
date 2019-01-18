#!/bin/sh

BIN_NAME="./alt-sssom"
PARAM="../../pbml/phmb4/Parameters/alt-sssom_0"
TEST_FILE="../../pbml/phmb4/Parameters/inputPathsTest"
TRAIN_FILE="../../pbml/phmb4/Parameters/inputPathsTrain"
RESULT_FOLDER="../alt-sssom"

tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}01 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l01/ -p ${PARAM} -s -c"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}05 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l05/ -p ${PARAM} -s -c"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}10 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l10/ -p ${PARAM} -s -c"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}25 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l25/ -p ${PARAM} -s -c"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}50 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l50/ -p ${PARAM} -s -c"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE}75 -t ${TEST_FILE} -r ${RESULT_FOLDER}-l75/ -p ${PARAM} -s -c"
tmux new-session -d "${BIN_NAME} -i ${TRAIN_FILE} -t ${TEST_FILE} -r ${RESULT_FOLDER}-l100/ -p ${PARAM} -s -c"