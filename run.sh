#!/bin/bash
#CUDA_VISIBLE_DEVICES=8,9,10,11,12,13,14,15
NGPU=8
#CUDA_VISIBLE_DEVICES=1,2,6,7,8,9,10,11,12,13,14,15
#NGPU=12

NCCL_HOME=/home/jgwohlbier/nccl/build

EXES="all_gather_perf all_reduce_perf broadcast_perf reduce_perf reduce_scatter_perf"
#EXE=all_gather_perf
#EXE=all_reduce_perf
#EXE=broadcast_perf
#EXE=reduce_perf
#EXE=reduce_scatter_perf

MIN=8

# lambda
MAX=512M
# dgx-2
#MAX=10240M

for EXE in $EXES; do
    # build command line
    #cmd="CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES}"
    cmd="$cmd LD_PRELOAD=${NCCL_HOME}/lib/libnccl.so.2"
    cmd="$cmd ./build/${EXE}"
    cmd="$cmd -b ${MIN} -e ${MAX} -f 2"
    cmd="$cmd -g ${NGPU}"
    echo "Running: $cmd"
    eval $cmd
done
