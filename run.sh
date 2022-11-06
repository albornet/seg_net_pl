#!/bin/bash

echo 'Reset checkpoint data (delete ./logs folder)? (y/n)'
read -t 3 delete_logs
if [ ! $delete_logs ]; then delete_logs='n'; fi
if [ $delete_logs == 'y' ] || [ $delete_logs == 'Y' ]; then
    echo 'Deleting checkpoint data.'
    rm -rf ./logs
elif [ $delete_logs == 'n' ] || [ $delete_logs == 'N' ]; then
    echo 'No checkoint data will be deleted.'
else 
    echo 'Invalid input. Aborting.'
    exit
fi

python main.py --n_layers=4 --rnn_type=hgru --axon_delay=1 --pred_loss=1 --load_model=1
python main.py --n_layers=4 --rnn_type=hgru --axon_delay=0 --pred_loss=1 --load_model=1
python main.py --n_layers=4 --rnn_type=lstm --axon_delay=1 --pred_loss=1 --load_model=1
python main.py --n_layers=4 --rnn_type=conv --axon_delay=1 --pred_loss=1 --load_model=1
python main.py --n_layers=4 --rnn_type=conv --axon_delay=0 --pred_loss=0 --load_model=1
python main.py --n_layers=4 --rnn_type=hgru --axon_delay=1 --pred_loss=0 --load_model=1

python main.py --n_layers=3 --rnn_type=hgru --axon_delay=1 --pred_loss=1 --load_model=1
python main.py --n_layers=3 --rnn_type=hgru --axon_delay=0 --pred_loss=1 --load_model=1
python main.py --n_layers=3 --rnn_type=lstm --axon_delay=1 --pred_loss=1 --load_model=1
python main.py --n_layers=3 --rnn_type=conv --axon_delay=1 --pred_loss=1 --load_model=1
python main.py --n_layers=3 --rnn_type=conv --axon_delay=0 --pred_loss=0 --load_model=1
python main.py --n_layers=3 --rnn_type=hgru --axon_delay=1 --pred_loss=0 --load_model=1
