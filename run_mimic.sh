#!/bin/bash
device=0
data=data/mimic/
batch=32
n_head=4
n_layers=4
d_model=64
d_rnn=64
d_inner=256
d_k=16
d_v=16
dropout=0.1
lr=5e-4
smooth=0.1
epoch=100
log=log.txt

python Main.py -data $data -batch $batch -n_head $n_head -n_layers $n_layers -d_model 64 -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr 0.0005 -smooth $smooth -epoch 100 -log $log -save True

