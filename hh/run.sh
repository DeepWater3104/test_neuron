#! /bin/bash

#PJM --rsc-list "node=1"
#PJM --mpi "max-proc-per-node=48"
#PJM -g hp200139
#PJM --rsc-list "elapse=00:05:00"
#PJM -S
#PJM -m b,e
#PJM --mail-list "fukami.satoshi760@mail.kyutech.jp"
#PJM -x PJM_LLIO_GFSCACHE=/vol0004

. ../../spack/RIKEN-spack2/share/spack/setup-env.sh
spack load /ve3bexq #neuron@8.0.0 built with numpy@1.24.3
spack find -lv --loaded

python3 hh.py
