#!/bin/bash


python Main.py -data data/simulated/sin_hawkes/ -batch 2 -n_head 1 -n_layers 1 -d_model 16 -d_rnn 32 -d_inner 64 -d_k 16 -d_v 16 -dropout 0.1 -lr 1e-4 -smooth  0.1  -epoch 50 -log log_sin_hawkes.txt -save True

