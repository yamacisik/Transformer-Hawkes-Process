#!/bin/bash
device=0
data=data/simulated/power_hawkes/
batch=16
n_head=1
n_layers=1
d_model=64
d_rnn=64
d_inner=128
d_k=16
d_v=16
dropout=0.1
lr=1e-4
smooth=0.1
epoch=50
log=log.txt

python Main.py -data $data -batch 1 -n_head $n_head -n_layers $n_layers -d_model $d_model -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log -save True
python Main.py -data $data -batch 1 -n_head 3 -n_layers 3 -d_model 64 -d_rnn 64 -d_inner 256 -d_k 16 -d_v 16 -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log -save True

