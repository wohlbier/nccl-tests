#!/bin/bash
CUDA_VISIBLE_DEVICES=8,9,10,11,12,13,14,15
NCCL_HOME=/home/jgwohlbier/nccl/build

#EXE=all_gather_perf
#EXE=all_reduce_perf
#EXE=broadcast_perf
#EXE=reduce_perf
EXE=reduce_scatter_perf

MIN=8
MAX=10240M
NGPU=8

CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} \
                    LD_PRELOAD=${NCCL_HOME}/lib/libnccl.so.2 \
                    ./build/${EXE} \
                    -b ${MIN} -e ${MAX} -f 2 \
                    -g ${NGPU}
