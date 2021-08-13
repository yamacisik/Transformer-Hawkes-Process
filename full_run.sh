#!/bin/bash

python Main.py -data data/simulated/2_d_hawkes/ -batch 2 -n_head 1 -n_layers 1 -d_model 16 -d_rnn 32 -d_inner 64 -d_k 16 -d_v 16 -dropout 0.1 -lr 1e-4 -smooth  0.1  -epoch 50 -log log_2dhawkes.txt -save True
python Main.py -data data/simulated/power_hawkes/ -batch 2 -n_head 1 -n_layers 1 -d_model 16 -d_rnn 32 -d_inner 64 -d_k 16 -d_v 16 -dropout 0.1 -lr 1e-4 -smooth  0.1  -epoch 50 -log log_power_hawkes.txt -save True
python Main.py -data data/simulated/sin_hawkes/ -batch 2 -n_head 1 -n_layers 1 -d_model 16 -d_rnn 32 -d_inner 64 -d_k 16 -d_v 16 -dropout 0.1 -lr 1e-4 -smooth  0.1  -epoch 50 -log log_sin_hawkes.txt -save True


python Main.py -data data/mimic/ -batch 1 -n_head 3 -n_layers 3 -d_model 64 -d_rnn 64 -d_inner 256 -d_k 16 -d_v 16 -dropout 0.1 -lr 1e-4 -smooth  0.1  -epoch 100 -log mimic.txt -save True

python Main.py -data data/stackOverflow/ -batch 4 -n_head 4 -n_layers 4 -d_model 512 -d_rnn 64 -d_inner 1024 -d_k 512 -d_v 512 -dropout 0.1 -lr 1e-4 -smooth  0.1  -epoch 100 -log sof.txt -save True
