#!/bin/bash
device=0
data=data/simulated/power_hawkes/
batch=1
n_head=1
n_layers=1
d_model=16
d_rnn=32
d_inner=32
d_k=8
d_v=8
dropout=0.1
lr=1e-4
smooth=0.1
epoch=50
log=log.txt

python Main.py -data $data -batch $batch -n_head $n_head -n_layers $n_layers -d_model $d_model -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log -save True

