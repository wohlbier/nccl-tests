Results on dgx-2. Someone was using 0,3,4,5
```
Running: CUDA_VISIBLE_DEVICES=1,2,6,7,8,9,10,11,12,13,14,15 LD_PRELOAD=/home/jgwohlbier/nccl/build/lib/libnccl.so.2 ./build/all_gather_perf -b 8 -e 10240M -f 2 -g 12
# nThread 1 nGpus 12 minBytes 8 maxBytes 10737418240 step: 2(factor) warmup iters: 5 iters: 20 validation: 1
#
# Using devices
#   Rank  0 Pid  87569 on    seville device  0 [0x36] Tesla V100-SXM3-32GB
#   Rank  1 Pid  87569 on    seville device  1 [0x39] Tesla V100-SXM3-32GB
#   Rank  2 Pid  87569 on    seville device  2 [0x5c] Tesla V100-SXM3-32GB
#   Rank  3 Pid  87569 on    seville device  3 [0x5e] Tesla V100-SXM3-32GB
#   Rank  4 Pid  87569 on    seville device  4 [0xb7] Tesla V100-SXM3-32GB
#   Rank  5 Pid  87569 on    seville device  5 [0xb9] Tesla V100-SXM3-32GB
#   Rank  6 Pid  87569 on    seville device  6 [0xbc] Tesla V100-SXM3-32GB
#   Rank  7 Pid  87569 on    seville device  7 [0xbe] Tesla V100-SXM3-32GB
#   Rank  8 Pid  87569 on    seville device  8 [0xe0] Tesla V100-SXM3-32GB
#   Rank  9 Pid  87569 on    seville device  9 [0xe2] Tesla V100-SXM3-32GB
#   Rank 10 Pid  87569 on    seville device 10 [0xe5] Tesla V100-SXM3-32GB
#   Rank 11 Pid  87569 on    seville device 11 [0xe7] Tesla V100-SXM3-32GB
#
#                                             out-of-place                       in-place
#       size         count    type     time   algbw   busbw  error     time   algbw   busbw  error
#        (B)    (elements)             (us)  (GB/s)  (GB/s)            (us)  (GB/s)  (GB/s)
           0             0   float    57.30    0.00    0.00  0e+00    57.09    0.00    0.00  0e+00
           0             0   float    57.12    0.00    0.00  0e+00    57.62    0.00    0.00  0e+00
           0             0   float    57.20    0.00    0.00  0e+00    57.31    0.00    0.00  0e+00
          48             1   float    57.46    0.00    0.00  0e+00    57.40    0.00    0.00  0e+00
          96             2   float    57.38    0.00    0.00  0e+00    57.63    0.00    0.00  0e+00
         240             5   float    57.05    0.00    0.00  0e+00    57.54    0.00    0.00  0e+00
         480            10   float    57.16    0.01    0.01  0e+00    57.40    0.01    0.01  0e+00
        1008            21   float    57.87    0.02    0.02  0e+00    57.47    0.02    0.02  0e+00
        2016            42   float    57.70    0.03    0.03  0e+00    57.06    0.03    0.03  0e+00
        4080            85   float    58.00    0.06    0.06  0e+00    57.38    0.07    0.07  0e+00
        8160           170   float    56.60    0.13    0.13  0e+00    57.26    0.13    0.13  0e+00
       16368           341   float    58.53    0.26    0.26  0e+00    58.23    0.26    0.26  0e+00
       32736           682   float    58.13    0.52    0.52  0e+00    58.17    0.52    0.52  0e+00
       65520          1365   float    59.04    1.02    1.02  0e+00    58.99    1.02    1.02  0e+00
      131040          2730   float    59.93    2.00    2.00  0e+00    59.59    2.02    2.02  0e+00
      262128          5461   float    63.22    3.80    3.80  0e+00    62.90    3.82    3.82  0e+00
      524256         10922   float    70.67    6.80    6.80  0e+00    70.15    6.85    6.85  0e+00
     1048560         21845   float    72.82   13.20   13.20  0e+00    73.95   13.00   13.00  0e+00
     2097120         43690   float    106.2   18.10   18.10  0e+00    114.1   16.85   16.85  0e+00
     4194288         87381   float    133.7   28.76   28.76  0e+00    149.7   25.68   25.68  0e+00
     8388576        174762   float    186.4   41.25   41.25  0e+00    216.2   35.57   35.57  0e+00
    16777200        349525   float    313.3   49.08   49.08  0e+00    375.4   40.97   40.97  0e+00
    33554400        699050   float    465.7   66.04   66.04  0e+00    578.6   53.16   53.16  0e+00
    67108848       1398101   float    915.3   67.21   67.21  0e+00    595.5  103.30  103.30  0e+00
   134217696       2796202   float   1765.5   69.69   69.69  0e+00   1146.6  107.30  107.30  0e+00
   268435440       5592405   float   3480.7   70.69   70.69  0e+00   2246.1  109.55  109.55  0e+00
   536870880      11184810   float   6920.5   71.11   71.11  0e+00   4451.5  110.55  110.55  0e+00
  1073741808      22369621   float    13744   71.61   71.61  0e+00   8837.0  111.38  111.38  0e+00
  2147483616      44739242   float    27187   72.41   72.41  0e+00    17644  111.57  111.57  0e+00
  4294967280      89478485   float    53902   73.04   73.04  1e+00    35154  111.99  111.99  1e+00
  8589934560     178956970   float   106773   73.75   73.75  1e+00    70089  112.34  112.34  1e+00
# Out of bounds values : 4 FAILED
# Avg bus bandwidth    : 30.2993
#
Running: CUDA_VISIBLE_DEVICES=1,2,6,7,8,9,10,11,12,13,14,15 LD_PRELOAD=/home/jgwohlbier/nccl/build/lib/libnccl.so.2 ./build/all_reduce_perf -b 8 -e 10240M -f 2 -g 12
# nThread 1 nGpus 12 minBytes 8 maxBytes 10737418240 step: 2(factor) warmup iters: 5 iters: 20 validation: 1
#
# Using devices
#   Rank  0 Pid  88131 on    seville device  0 [0x36] Tesla V100-SXM3-32GB
#   Rank  1 Pid  88131 on    seville device  1 [0x39] Tesla V100-SXM3-32GB
#   Rank  2 Pid  88131 on    seville device  2 [0x5c] Tesla V100-SXM3-32GB
#   Rank  3 Pid  88131 on    seville device  3 [0x5e] Tesla V100-SXM3-32GB
#   Rank  4 Pid  88131 on    seville device  4 [0xb7] Tesla V100-SXM3-32GB
#   Rank  5 Pid  88131 on    seville device  5 [0xb9] Tesla V100-SXM3-32GB
#   Rank  6 Pid  88131 on    seville device  6 [0xbc] Tesla V100-SXM3-32GB
#   Rank  7 Pid  88131 on    seville device  7 [0xbe] Tesla V100-SXM3-32GB
#   Rank  8 Pid  88131 on    seville device  8 [0xe0] Tesla V100-SXM3-32GB
#   Rank  9 Pid  88131 on    seville device  9 [0xe2] Tesla V100-SXM3-32GB
#   Rank 10 Pid  88131 on    seville device 10 [0xe5] Tesla V100-SXM3-32GB
#   Rank 11 Pid  88131 on    seville device 11 [0xe7] Tesla V100-SXM3-32GB
#
#                                                     out-of-place                       in-place
#       size         count    type   redop     time   algbw   busbw  error     time   algbw   busbw  error
#        (B)    (elements)                     (us)  (GB/s)  (GB/s)            (us)  (GB/s)  (GB/s)
           8             2   float     sum    61.03    0.00    0.00  2e-07    61.04    0.00    0.00  1e-07
          16             4   float     sum    60.87    0.00    0.00  1e-07    60.37    0.00    0.00  1e-07
          32             8   float     sum    60.86    0.00    0.00  1e-07    60.99    0.00    0.00  6e-08
          64            16   float     sum    60.26    0.00    0.00  6e-08    60.69    0.00    0.00  6e-08
         128            32   float     sum    60.60    0.00    0.00  6e-08    61.52    0.00    0.00  6e-08
         256            64   float     sum    60.70    0.00    0.01  6e-08    61.41    0.00    0.01  6e-08
         512           128   float     sum    61.53    0.01    0.02  6e-08    60.30    0.01    0.02  6e-08
        1024           256   float     sum    60.93    0.02    0.03  2e-07    60.42    0.02    0.03  2e-07
        2048           512   float     sum    61.25    0.03    0.06  2e-07    61.26    0.03    0.06  2e-07
        4096          1024   float     sum    62.86    0.07    0.12  2e-07    62.83    0.07    0.12  2e-07
        8192          2048   float     sum    62.42    0.13    0.24  2e-07    63.50    0.13    0.24  2e-07
       16384          4096   float     sum    64.46    0.25    0.47  2e-07    61.31    0.27    0.49  2e-07
       32768          8192   float     sum    63.44    0.52    0.95  2e-07    63.68    0.51    0.94  2e-07
       65536         16384   float     sum    65.05    1.01    1.85  2e-07    65.13    1.01    1.84  2e-07
      131072         32768   float     sum    65.86    1.99    3.65  2e-07    64.75    2.02    3.71  2e-07
      262144         65536   float     sum    68.35    3.84    7.03  2e-07    68.60    3.82    7.01  2e-07
      524288        131072   float     sum    75.87    6.91   12.67  2e-07    75.52    6.94   12.73  2e-07
     1048576        262144   float     sum    89.15   11.76   21.56  2e-07    88.14   11.90   21.81  2e-07
     2097152        524288   float     sum    143.5   14.62   26.80  2e-07    144.7   14.50   26.58  2e-07
     4194304       1048576   float     sum    183.7   22.84   41.87  2e-07    184.0   22.79   41.78  2e-07
     8388608       2097152   float     sum    283.5   29.59   54.25  2e-07    282.9   29.65   54.36  2e-07
    16777216       4194304   float     sum    482.8   34.75   63.71  2e-07    487.1   34.45   63.15  2e-07
    33554432       8388608   float     sum    565.7   59.32  108.75  2e-07    563.6   59.53  109.15  2e-07
    67108864      16777216   float     sum   1051.8   63.80  116.98  2e-07   1052.0   63.79  116.96  2e-07
   134217728      33554432   float     sum   2047.7   65.54  120.17  2e-07   2046.4   65.59  120.24  2e-07
   268435456      67108864   float     sum   4036.6   66.50  121.92  2e-07   4036.7   66.50  121.91  2e-07
   536870912     134217728   float     sum   8021.5   66.93  122.70  2e-07   8022.0   66.92  122.69  2e-07
  1073741824     268435456   float     sum    15986   67.17  123.14  2e-07    15989   67.15  123.12  2e-07
  2147483648     536870912   float     sum    31928   67.26  123.31  2e-07    31938   67.24  123.27  2e-07
  4294967296    1073741824   float     sum    63758   67.36  123.50  2e-07    63766   67.36  123.49  2e-07
  8589934592    2147483648   float     sum   127453   67.40  123.56  2e-07   127443   67.40  123.57  2e-07
# Out of bounds values : 0 OK
# Avg bus bandwidth    : 42.5578
#
Running: CUDA_VISIBLE_DEVICES=1,2,6,7,8,9,10,11,12,13,14,15 LD_PRELOAD=/home/jgwohlbier/nccl/build/lib/libnccl.so.2 ./build/broadcast_perf -b 8 -e 10240M -f 2 -g 12
# nThread 1 nGpus 12 minBytes 8 maxBytes 10737418240 step: 2(factor) warmup iters: 5 iters: 20 validation: 1
#
# Using devices
#   Rank  0 Pid  88618 on    seville device  0 [0x36] Tesla V100-SXM3-32GB
#   Rank  1 Pid  88618 on    seville device  1 [0x39] Tesla V100-SXM3-32GB
#   Rank  2 Pid  88618 on    seville device  2 [0x5c] Tesla V100-SXM3-32GB
#   Rank  3 Pid  88618 on    seville device  3 [0x5e] Tesla V100-SXM3-32GB
#   Rank  4 Pid  88618 on    seville device  4 [0xb7] Tesla V100-SXM3-32GB
#   Rank  5 Pid  88618 on    seville device  5 [0xb9] Tesla V100-SXM3-32GB
#   Rank  6 Pid  88618 on    seville device  6 [0xbc] Tesla V100-SXM3-32GB
#   Rank  7 Pid  88618 on    seville device  7 [0xbe] Tesla V100-SXM3-32GB
#   Rank  8 Pid  88618 on    seville device  8 [0xe0] Tesla V100-SXM3-32GB
#   Rank  9 Pid  88618 on    seville device  9 [0xe2] Tesla V100-SXM3-32GB
#   Rank 10 Pid  88618 on    seville device 10 [0xe5] Tesla V100-SXM3-32GB
#   Rank 11 Pid  88618 on    seville device 11 [0xe7] Tesla V100-SXM3-32GB
#
#                                                     out-of-place                       in-place
#       size         count    type    root     time   algbw   busbw  error     time   algbw   busbw  error
#        (B)    (elements)                     (us)  (GB/s)  (GB/s)            (us)  (GB/s)  (GB/s)
           8             2   float       0    59.75    0.00    0.00  0e+00    59.96    0.00    0.00  0e+00
          16             4   float       0    60.18    0.00    0.00  0e+00    60.04    0.00    0.00  0e+00
          32             8   float       0    60.60    0.00    0.00  0e+00    60.99    0.00    0.00  0e+00
          64            16   float       0    59.84    0.00    0.00  0e+00    58.48    0.00    0.00  0e+00
         128            32   float       0    60.38    0.00    0.00  0e+00    59.19    0.00    0.00  0e+00
         256            64   float       0    59.74    0.00    0.00  0e+00    60.01    0.00    0.00  0e+00
         512           128   float       0    60.01    0.01    0.01  0e+00    59.64    0.01    0.01  0e+00
        1024           256   float       0    60.01    0.02    0.02  0e+00    60.80    0.02    0.02  0e+00
        2048           512   float       0    59.57    0.03    0.03  0e+00    60.24    0.03    0.03  0e+00
        4096          1024   float       0    60.42    0.07    0.07  0e+00    60.14    0.07    0.07  0e+00
        8192          2048   float       0    59.31    0.14    0.14  0e+00    58.61    0.14    0.14  0e+00
       16384          4096   float       0    60.94    0.27    0.27  0e+00    59.66    0.27    0.27  0e+00
       32768          8192   float       0    60.16    0.54    0.54  0e+00    59.88    0.55    0.55  0e+00
       65536         16384   float       0    60.25    1.09    1.09  0e+00    60.88    1.08    1.08  0e+00
      131072         32768   float       0    75.48    1.74    1.74  0e+00    73.91    1.77    1.77  0e+00
      262144         65536   float       0    74.46    3.52    3.52  0e+00    73.24    3.58    3.58  0e+00
      524288        131072   float       0    75.34    6.96    6.96  0e+00    76.50    6.85    6.85  0e+00
     1048576        262144   float       0    74.62   14.05   14.05  0e+00    79.08   13.26   13.26  0e+00
     2097152        524288   float       0    75.95   27.61   27.61  0e+00    75.47   27.79   27.79  0e+00
     4194304       1048576   float       0    90.08   46.56   46.56  0e+00    89.17   47.04   47.04  0e+00
     8388608       2097152   float       0    133.4   62.88   62.88  0e+00    131.7   63.69   63.69  0e+00
    16777216       4194304   float       0    217.0   77.31   77.31  0e+00    215.9   77.70   77.70  0e+00
    33554432       8388608   float       0    362.1   92.66   92.66  0e+00    361.0   92.94   92.94  0e+00
    67108864      16777216   float       0    635.5  105.59  105.59  0e+00    638.7  105.08  105.08  0e+00
   134217728      33554432   float       0   1192.9  112.51  112.51  0e+00   1190.5  112.74  112.74  0e+00
   268435456      67108864   float       0   2283.9  117.53  117.53  0e+00   2283.1  117.57  117.57  0e+00
   536870912     134217728   float       0   4482.5  119.77  119.77  0e+00   4481.7  119.79  119.79  0e+00
  1073741824     268435456   float       0   8856.1  121.24  121.24  0e+00   8852.2  121.30  121.30  0e+00
  2147483648     536870912   float       0    17632  121.80  121.80  0e+00    17640  121.74  121.74  0e+00
  4294967296    1073741824   float       0    35198  122.02  122.02  0e+00    35192  122.05  122.05  0e+00
  8589934592    2147483648   float       0    70321  122.15  122.15  0e+00    70368  122.07  122.07  0e+00
# Out of bounds values : 0 OK
# Avg bus bandwidth    : 41.2456
#
Running: CUDA_VISIBLE_DEVICES=1,2,6,7,8,9,10,11,12,13,14,15 LD_PRELOAD=/home/jgwohlbier/nccl/build/lib/libnccl.so.2 ./build/reduce_perf -b 8 -e 10240M -f 2 -g 12
# nThread 1 nGpus 12 minBytes 8 maxBytes 10737418240 step: 2(factor) warmup iters: 5 iters: 20 validation: 1
#
# Using devices
#   Rank  0 Pid  89207 on    seville device  0 [0x36] Tesla V100-SXM3-32GB
#   Rank  1 Pid  89207 on    seville device  1 [0x39] Tesla V100-SXM3-32GB
#   Rank  2 Pid  89207 on    seville device  2 [0x5c] Tesla V100-SXM3-32GB
#   Rank  3 Pid  89207 on    seville device  3 [0x5e] Tesla V100-SXM3-32GB
#   Rank  4 Pid  89207 on    seville device  4 [0xb7] Tesla V100-SXM3-32GB
#   Rank  5 Pid  89207 on    seville device  5 [0xb9] Tesla V100-SXM3-32GB
#   Rank  6 Pid  89207 on    seville device  6 [0xbc] Tesla V100-SXM3-32GB
#   Rank  7 Pid  89207 on    seville device  7 [0xbe] Tesla V100-SXM3-32GB
#   Rank  8 Pid  89207 on    seville device  8 [0xe0] Tesla V100-SXM3-32GB
#   Rank  9 Pid  89207 on    seville device  9 [0xe2] Tesla V100-SXM3-32GB
#   Rank 10 Pid  89207 on    seville device 10 [0xe5] Tesla V100-SXM3-32GB
#   Rank 11 Pid  89207 on    seville device 11 [0xe7] Tesla V100-SXM3-32GB
#
#                                                     out-of-place                       in-place
#       size         count    type   redop    root     time   algbw   busbw  error     time   algbw   busbw  error
#        (B)    (elements)                             (us)  (GB/s)  (GB/s)            (us)  (GB/s)  (GB/s)
           8             2   float     sum       0    58.15    0.00    0.00  2e-07    59.52    0.00    0.00  1e-07
          16             4   float     sum       0    60.01    0.00    0.00  1e-07    58.71    0.00    0.00  1e-07
          32             8   float     sum       0    58.97    0.00    0.00  1e-07    59.64    0.00    0.00  6e-08
          64            16   float     sum       0    58.64    0.00    0.00  6e-08    59.84    0.00    0.00  6e-08
         128            32   float     sum       0    59.18    0.00    0.00  6e-08    59.71    0.00    0.00  6e-08
         256            64   float     sum       0    58.92    0.00    0.00  6e-08    58.74    0.00    0.00  6e-08
         512           128   float     sum       0    60.30    0.01    0.01  6e-08    57.73    0.01    0.01  6e-08
        1024           256   float     sum       0    60.55    0.02    0.02  2e-07    60.43    0.02    0.02  2e-07
        2048           512   float     sum       0    60.09    0.03    0.03  2e-07    57.61    0.04    0.04  2e-07
        4096          1024   float     sum       0    60.19    0.07    0.07  2e-07    58.26    0.07    0.07  2e-07
        8192          2048   float     sum       0    59.15    0.14    0.14  2e-07    58.06    0.14    0.14  2e-07
       16384          4096   float     sum       0    61.34    0.27    0.27  2e-07    57.98    0.28    0.28  2e-07
       32768          8192   float     sum       0    59.67    0.55    0.55  2e-07    58.24    0.56    0.56  2e-07
       65536         16384   float     sum       0    60.51    1.08    1.08  2e-07    60.28    1.09    1.09  2e-07
      131072         32768   float     sum       0    74.93    1.75    1.75  2e-07    77.44    1.69    1.69  2e-07
      262144         65536   float     sum       0    75.53    3.47    3.47  2e-07    74.95    3.50    3.50  2e-07
      524288        131072   float     sum       0    76.78    6.83    6.83  2e-07    74.11    7.07    7.07  2e-07
     1048576        262144   float     sum       0    75.52   13.88   13.88  2e-07    74.72   14.03   14.03  2e-07
     2097152        524288   float     sum       0    83.23   25.20   25.20  2e-07    82.65   25.37   25.37  2e-07
     4194304       1048576   float     sum       0    94.52   44.37   44.37  2e-07    94.50   44.39   44.39  2e-07
     8388608       2097152   float     sum       0    138.0   60.80   60.80  2e-07    138.4   60.62   60.62  2e-07
    16777216       4194304   float     sum       0    213.1   78.71   78.71  2e-07    213.2   78.69   78.69  2e-07
    33554432       8388608   float     sum       0    354.3   94.71   94.71  2e-07    354.1   94.76   94.76  2e-07
    67108864      16777216   float     sum       0    626.6  107.11  107.11  2e-07    627.0  107.03  107.03  2e-07
   134217728      33554432   float     sum       0   1179.0  113.84  113.84  2e-07   1179.5  113.79  113.79  2e-07
   268435456      67108864   float     sum       0   2269.8  118.27  118.27  2e-07   2265.0  118.51  118.51  2e-07
   536870912     134217728   float     sum       0   4447.1  120.72  120.72  2e-07   4449.9  120.65  120.65  2e-07
  1073741824     268435456   float     sum       0   8823.3  121.69  121.69  2e-07   8817.8  121.77  121.77  2e-07
  2147483648     536870912   float     sum       0    17547  122.39  122.39  2e-07    17552  122.35  122.35  2e-07
  4294967296    1073741824   float     sum       0    35049  122.54  122.54  2e-07    35017  122.65  122.65  2e-07
  8589934592    2147483648   float     sum       0    69989  122.73  122.73  2e-07    70007  122.70  122.70  2e-07
# Out of bounds values : 0 OK
# Avg bus bandwidth    : 41.3386
#
Running: CUDA_VISIBLE_DEVICES=1,2,6,7,8,9,10,11,12,13,14,15 LD_PRELOAD=/home/jgwohlbier/nccl/build/lib/libnccl.so.2 ./build/reduce_scatter_perf -b 8 -e 10240M -f 2 -g 12
# nThread 1 nGpus 12 minBytes 8 maxBytes 10737418240 step: 2(factor) warmup iters: 5 iters: 20 validation: 1
#
# Using devices
#   Rank  0 Pid  89663 on    seville device  0 [0x36] Tesla V100-SXM3-32GB
#   Rank  1 Pid  89663 on    seville device  1 [0x39] Tesla V100-SXM3-32GB
#   Rank  2 Pid  89663 on    seville device  2 [0x5c] Tesla V100-SXM3-32GB
#   Rank  3 Pid  89663 on    seville device  3 [0x5e] Tesla V100-SXM3-32GB
#   Rank  4 Pid  89663 on    seville device  4 [0xb7] Tesla V100-SXM3-32GB
#   Rank  5 Pid  89663 on    seville device  5 [0xb9] Tesla V100-SXM3-32GB
#   Rank  6 Pid  89663 on    seville device  6 [0xbc] Tesla V100-SXM3-32GB
#   Rank  7 Pid  89663 on    seville device  7 [0xbe] Tesla V100-SXM3-32GB
#   Rank  8 Pid  89663 on    seville device  8 [0xe0] Tesla V100-SXM3-32GB
#   Rank  9 Pid  89663 on    seville device  9 [0xe2] Tesla V100-SXM3-32GB
#   Rank 10 Pid  89663 on    seville device 10 [0xe5] Tesla V100-SXM3-32GB
#   Rank 11 Pid  89663 on    seville device 11 [0xe7] Tesla V100-SXM3-32GB
#
#                                                     out-of-place                       in-place
#       size         count    type   redop     time   algbw   busbw  error     time   algbw   busbw  error
#        (B)    (elements)                     (us)  (GB/s)  (GB/s)            (us)  (GB/s)  (GB/s)
           0             0   float     sum    58.16    0.00    0.00  0e+00    58.77    0.00    0.00  0e+00
           0             0   float     sum    60.10    0.00    0.00  0e+00    58.20    0.00    0.00  0e+00
           0             0   float     sum    60.65    0.00    0.00  0e+00    58.57    0.00    0.00  0e+00
          48             1   float     sum    60.22    0.00    0.00  6e-08    58.26    0.00    0.00  6e-08
          96             2   float     sum    60.72    0.00    0.00  1e-07    59.49    0.00    0.00  1e-07
         240             5   float     sum    59.74    0.00    0.00  6e-08    58.56    0.00    0.00  6e-08
         480            10   float     sum    60.45    0.01    0.01  6e-08    58.16    0.01    0.01  6e-08
        1008            21   float     sum    60.54    0.02    0.02  3e-08    59.00    0.02    0.02  1e-07
        2016            42   float     sum    60.04    0.03    0.03  2e-07    58.05    0.03    0.03  2e-07
        4080            85   float     sum    61.11    0.06    0.06  2e-07    58.13    0.06    0.06  2e-07
        8160           170   float     sum    60.44    0.12    0.12  2e-07    58.87    0.13    0.13  2e-07
       16368           341   float     sum    61.75    0.24    0.24  2e-07    58.77    0.26    0.26  2e-07
       32736           682   float     sum    61.28    0.49    0.49  2e-07    61.45    0.49    0.49  2e-07
       65520          1365   float     sum    61.49    0.98    0.98  2e-07    59.92    1.00    1.00  2e-07
      131040          2730   float     sum    63.18    1.90    1.90  2e-07    62.40    1.93    1.93  2e-07
      262128          5461   float     sum    65.50    3.67    3.67  2e-07    66.69    3.60    3.60  2e-07
      524256         10922   float     sum    73.73    6.52    6.52  2e-07    72.75    6.61    6.61  2e-07
     1048560         21845   float     sum    76.13   12.63   12.63  2e-07    75.19   12.78   12.78  2e-07
     2097120         43690   float     sum    130.0   14.79   14.79  2e-07    130.9   14.69   14.69  2e-07
     4194288         87381   float     sum    168.6   22.81   22.81  2e-07    165.8   23.19   23.19  2e-07
     8388576        174762   float     sum    241.5   31.84   31.84  2e-07    239.6   32.09   32.09  2e-07
    16777200        349525   float     sum    338.1   45.49   45.49  2e-07    338.2   45.47   45.47  2e-07
    33554400        699050   float     sum    554.9   55.43   55.43  2e-07    554.2   55.50   55.50  2e-07
    67108848       1398101   float     sum   1353.5   45.45   45.45  2e-07   1358.1   45.30   45.30  2e-07
   134217696       2796202   float     sum   2095.0   58.73   58.73  2e-07   2107.9   58.37   58.37  2e-07
   268435440       5592405   float     sum   5185.7   47.45   47.45  2e-07   5198.9   47.33   47.33  2e-07
   536870880      11184810   float     sum   8201.1   60.01   60.01  2e-07   8256.6   59.60   59.60  2e-07
  1073741808      22369621   float     sum    20415   48.21   48.21  2e-07    20469   48.09   48.09  2e-07
  2147483616      44739242   float     sum    31771   61.96   61.96  2e-07    31916   61.68   61.68  2e-07
  4294967280      89478485   float     sum    80680   48.80   48.80  2e-07    80962   48.63   48.63  2e-07
  8589934560     178956970   float     sum   122722   64.16   64.16  2e-07   123574   63.72   63.72  2e-07
# Out of bounds values : 0 OK
# Avg bus bandwidth    : 20.3609
#
```



# NCCL Tests

These tests check both the performance and the correctness of [NCCL](http://github.com/nvidia/nccl) operations.

## Build

To build the tests, just type `make`.

If CUDA is not installed in /usr/local/cuda, you may specify CUDA\_HOME. Similarly, if NCCL is not installed in /usr, you may specify NCCL\_HOME.

```shell
$ make CUDA_HOME=/path/to/cuda NCCL_HOME=/path/to/nccl
```

NCCL tests rely on MPI to work on multiple processes, hence multiple nodes. If you want to compile the tests with MPI support, you need to set MPI=1 and set MPI\_HOME to the path where MPI is installed.

```shell
$ make MPI=1 MPI_HOME=/path/to/mpi CUDA_HOME=/path/to/cuda NCCL_HOME=/path/to/nccl
```

## Usage

NCCL tests can run on multiple processes, multiple threads, and multiple CUDA devices per thread. The number of process is managed by MPI and is therefore not passed to the tests as argument. The total number of ranks (=CUDA devices) will be equal to (number of processes)\*(number of threads)\*(number of GPUs per thread).

### Quick examples

Run on 8 GPUs (`-g 8`), scanning from 8 Bytes to 128MBytes :
```shell
$ ./build/all_reduce_perf -b 8 -e 128M -f 2 -g 8
```

Run with MPI on 40 processes (potentially on multiple nodes) with 4 GPUs each :
```shell
$ mpirun -np 40 ./build/all_reduce_perf -b 8 -e 128M -f 2 -g 4
```

### Performance

See the [Performance](doc/PERFORMANCE.md) page for explanation about numbers, and in particular the "busbw" column.

### Arguments

All tests support the same set of arguments :

* Number of GPUs
  * `-t,--nthreads <num threads>` number of threads per process. Default : 1.
  * `-g,--ngpus <GPUs per thread>` number of gpus per thread. Default : 1.
* Sizes to scan
  * `-b,--minbytes <min size in bytes>` minimum size to start with. Default : 32M.
  * `-e,--maxbytes <max size in bytes>` maximum size to end at. Default : 32M.
  * Increments can be either fixed or a multiplication factor. Only one of those should be used
    * `-i,--stepbytes <increment size>` fixed increment between sizes. Default : (max-min)/10.
    * `-f,--stepfactor <increment factor>` multiplication factor between sizes. Default : disabled.
* NCCL operations arguments
  * `-o,--op <sum/prod/min/max/all>` Specify which reduction operation to perform. Only relevant for reduction operations like Allreduce, Reduce or ReduceScatter. Default : Sum.
  * `-d,--datatype <nccltype/all>` Specify which datatype to use. Default : Float.
  * `-r,--root <root/all>` Specify which root to use. Only for operations with a root like broadcast or reduce. Default : 0.
* Performance
  * `-n,--iters <iteration count>` number of iterations. Default : 20.
  * `-w,--warmup_iters <warmup iteration count>` number of warmup iterations (not timed). Default : 5.
  * `-m,--agg_iters <aggregation count>` number of operations to aggregate together in each iteration. Default : 1.
* Test operation
  * `-p,--parallel_init <0/1>` use threads to initialize NCCL in parallel. Default : 0.
  * `-c,--check <0/1>` check correctness of results. This can be quite slow on large numbers of GPUs. Default : 1.
  * `-z,--blocking <0/1>` Make NCCL collective blocking, i.e. have CPUs wait and sync after each collective. Default : 0.

## Copyright

NCCL tests are provided under the BSD license. All source code and accompanying documentation is copyright (c) 2016-2019, NVIDIA CORPORATION. All rights reserved.
