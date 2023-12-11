#!/bin/bash

source /opt/conda/etc/profile.d/conda.sh
conda init bash
source ~/.bashrc

conda activate p377
conda info | egrep "conda version|active environment"

cd /methods/ditto/
EPOCHS=40

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Structured/Beer --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished structured_beer'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Structured/DBLP-ACM --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished structured_dblp_acm'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Structured/DBLP-GoogleScholar --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished structured_dblp_scholar'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Structured/Amazon-Google --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished structured_amazon_google'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Structured/Fodors-Zagats --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished structured_fodors_zagats'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Structured/iTunes-Amazon --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished structured_itunes_amazon'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Structured/Walmart-Amazon --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished structured_walmart_amazon'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Textual/Abt-Buy --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished textual_abt_buy'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Textual/Company --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm bert  --fp16 --da del --dk general  --summarize
echo 'Finished textual_company'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dirty/DBLP-ACM --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished dirty_dblp_acm'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dirty/DBLP-GoogleScholar --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished dirty_dblp_scholar'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dirty/iTunes-Amazon --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished dirty_itunes_amazon'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dirty/Walmart-Amazon --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS}  --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished dirty_walmart_amazon'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn1 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished Dn1'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn2 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished Dn2'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn3 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished Dn3'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn4 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished Dn4'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn5 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished Dn5'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn6 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished Dn6'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn7 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk product  --summarize
echo 'Finished Dn7'

CUDA_VISIBLE_DEVICES=0 python train_ditto.py  --task Dn8 --batch_size 64  --max_len 256  --lr 3e-5  --n_epochs ${EPOCHS} --lm roberta  --fp16 --da del --dk general  --summarize
echo 'Finished Dn8'
