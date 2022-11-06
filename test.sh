#!/bin/bash

python main.py --n_layers=4 --rnn_type=hgru --axon_delay=1 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=4 --rnn_type=hgru --axon_delay=0 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=4 --rnn_type=lstm --axon_delay=1 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=4 --rnn_type=conv --axon_delay=1 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=4 --rnn_type=conv --axon_delay=0 --pred_loss=0 --load_model=1 --test_only=1
python main.py --n_layers=4 --rnn_type=hgru --axon_delay=1 --pred_loss=0 --load_model=1 --test_only=1

python main.py --n_layers=3 --rnn_type=hgru --axon_delay=1 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=3 --rnn_type=hgru --axon_delay=0 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=3 --rnn_type=lstm --axon_delay=1 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=3 --rnn_type=conv --axon_delay=1 --pred_loss=1 --load_model=1 --test_only=1
python main.py --n_layers=3 --rnn_type=conv --axon_delay=0 --pred_loss=0 --load_model=1 --test_only=1
python main.py --n_layers=3 --rnn_type=hgru --axon_delay=1 --pred_loss=0 --load_model=1 --test_only=1
