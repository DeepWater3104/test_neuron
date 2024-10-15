#! /bin/bash

#PJM --rsc-list "node=1"
#PJM --mpi "max-proc-per-node=48"
#PJM -g hp200139
#PJM --rsc-list "elapse=02:00:00"
#PJM -S
#PJM -m b,e
#PJM --mail-list "fukami.satoshi760@mail.kyutech.jp"
#PJM -x PJM_LLIO_GFSCACHE=/vol0004

. ../../spack/RIKEN-spack2/share/spack/setup-env.sh

spack load /43rxvrt #neuron@8.0.0 built with numpy@1.24.3 python@3.10.13
spack find -lv --loaded

python3 test.py
