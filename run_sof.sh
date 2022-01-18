#!/bin/bash
device=0
data=data/stackOverflow/
batch=15
n_head=4
n_layers=3
d_model=32
d_rnn=32
d_inner=64
d_k=16
d_v=16
dropout=0.1
lr=5e-3
smooth=0.1
epoch=50
log=log.txt

python Main.py -data $data -batch $batch -n_head $n_head -n_layers $n_layers -d_model $d_model -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log -save True

