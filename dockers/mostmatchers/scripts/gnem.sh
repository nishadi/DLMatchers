#!/bin/bash

source /opt/conda/etc/profile.d/conda.sh
conda init bash
source ~/.bashrc

conda activate p39
conda info | egrep "conda version|active environment"

EPOCHS=40

cd /methods/GNEM/

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Ds1/tableA.csv --tableB_path data/Ds1/tableB.csv --train_path data/Ds1/train.csv --test_path data/Ds1/test.csv --val_path data/Ds1/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Ds1'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Ds2/tableA.csv --tableB_path data/Ds2/tableB.csv --train_path data/Ds2/train.csv --test_path data/Ds2/test.csv --val_path data/Ds2/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Ds2'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Ds3/tableA.csv --tableB_path data/Ds3/tableB.csv --train_path data/Ds3/train.csv --test_path data/Ds3/test.csv --val_path data/Ds3/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Ds3'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Ds4/tableA.csv --tableB_path data/Ds4/tableB.csv --train_path data/Ds4/train.csv --test_path data/Ds4/test.csv --val_path data/Ds4/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Ds4'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Ds5/tableA.csv --tableB_path data/Ds5/tableB.csv --train_path data/Ds5/train.csv --test_path data/Ds5/test.csv --val_path data/Ds5/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Ds5'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Ds6/tableA.csv --tableB_path data/Ds6/tableB.csv --train_path data/Ds6/train.csv --test_path data/Ds6/test.csv --val_path data/Ds6/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Ds6'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Ds7/tableA.csv --tableB_path data/Ds7/tableB.csv --train_path data/Ds7/train.csv --test_path data/Ds7/test.csv --val_path data/Ds7/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Ds7'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dt1/tableA.csv --tableB_path data/Dt1/tableB.csv --train_path data/Dt1/train.csv --test_path data/Dt1/test.csv --val_path data/Dt1/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dt1'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dt2/tableA.csv --tableB_path data/Dt2/tableB.csv --train_path data/Dt2/train.csv --test_path data/Dt2/test.csv --val_path data/Dt2/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dt2'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dd1/tableA.csv --tableB_path data/Dd1/tableB.csv --train_path data/Dd1/train.csv --test_path data/Dd1/test.csv --val_path data/Dd1/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dd1'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dd2/tableA.csv --tableB_path data/Dd2/tableB.csv --train_path data/Dd2/train.csv --test_path data/Dd2/test.csv --val_path data/Dd2/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dd2'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dd3/tableA.csv --tableB_path data/Dd3/tableB.csv --train_path data/Dd3/train.csv --test_path data/Dd3/test.csv --val_path data/Dd3/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dd3'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dd4/tableA.csv --tableB_path data/Dd4/tableB.csv --train_path data/Dd4/train.csv --test_path data/Dd4/test.csv --val_path data/Dd4/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dd4'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn1/tableA.csv --tableB_path data/Dn1/tableB.csv --train_path data/Dn1/train.csv --test_path data/Dn1/test.csv --val_path data/Dn1/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn1'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn2/tableA.csv --tableB_path data/Dn2/tableB.csv --train_path data/Dn2/train.csv --test_path data/Dn2/test.csv --val_path data/Dn2/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn2'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn3/tableA.csv --tableB_path data/Dn3/tableB.csv --train_path data/Dn3/train.csv --test_path data/Dn3/test.csv --val_path data/Dn3/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn3'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn4/tableA.csv --tableB_path data/Dn4/tableB.csv --train_path data/Dn4/train.csv --test_path data/Dn4/test.csv --val_path data/Dn4/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn4'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn5/tableA.csv --tableB_path data/Dn5/tableB.csv --train_path data/Dn5/train.csv --test_path data/Dn5/test.csv --val_path data/Dn5/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn5'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn6/tableA.csv --tableB_path data/Dn6/tableB.csv --train_path data/Dn6/train.csv --test_path data/Dn6/test.csv --val_path data/Dn6/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn6'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn7/tableA.csv --tableB_path data/Dn7/tableB.csv --train_path data/Dn7/train.csv --test_path data/Dn7/test.csv --val_path data/Dn7/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn7'

python train.py --seed 28 --log_freq 5 --lr 0.0001 --embed_lr 0.00002 --epochs ${EPOCHS} --batch_size 2 --tableA_path data/Dn8/tableA.csv --tableB_path data/Dn8/tableB.csv --train_path data/Dn8/train.csv --test_path data/Dn8/test.csv --val_path data/Dn8/valid.csv --gpu 0 --gcn_layer 1 --test_score_type mean min max
echo 'Finished Dn8'