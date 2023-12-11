#!/bin/bash

source /opt/conda/etc/profile.d/conda.sh
conda init bash
source ~/.bashrc
conda activate base
conda info | egrep "conda version|active environment"

cd /methods/DLMatchers/EMTransformer/
SEED=22
EPOCHS=40

# ROBERTA Base Experiments

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dd1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd1'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dd2 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd2'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dd3 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd3'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dd4 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd4'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Ds1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds1'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Ds2 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds2'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Ds3 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds3'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Ds4 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds4'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Ds5 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds5'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Ds6 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds6'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Ds7 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds7'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dt1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dt1'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dt2_new --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dt2'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn1'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn2 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn2'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn3 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn3'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn4 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn4'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn5 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn5'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn6 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn6'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn7 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn7'

python src/run_all.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=Dn8 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn8'


# BERT Base Experiments

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dd1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd1'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dd2 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd2'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dd3 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd3'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dd4 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dd4'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Ds1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds1'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Ds2 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds2'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Ds3 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds3'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Ds4 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds4'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Ds5 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds5'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Ds6 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds6'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Ds7 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Ds7'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dt2_new --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dt2'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dt1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dt1'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn1 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn1'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn2 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn2'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn3 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn3'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn4 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn4'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn5 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn5'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn6 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn6'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn7 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn7'

python src/run_all.py --model_type=bert --model_name_or_path=bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=Dn8 --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=${EPOCHS} --seed=${SEED}
echo 'Finished Dn8'



