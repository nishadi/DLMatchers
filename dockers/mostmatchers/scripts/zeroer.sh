#!/bin/bash

source /opt/conda/etc/profile.d/conda.sh
conda init bash
source ~/.bashrc
conda activate ZeroER
conda info | egrep "conda version|active environment"

cd /methods/zeroer/
python zeroer.py Dd1 --run_transitivity --LR_dup_free
echo 'Finished Dd1'

python zeroer.py Dd2 --run_transitivity --LR_dup_free
echo 'Finished Dd2'

python zeroer.py Dd3 --run_transitivity --LR_dup_free
echo 'Finished Dd3'

python zeroer.py Dd4 --run_transitivity --LR_dup_free
echo 'Finished Dd4'

python zeroer.py Ds1 --run_transitivity --LR_dup_free
echo 'Finished Ds1'

python zeroer.py Ds2 --run_transitivity --LR_dup_free
echo 'Finished Ds2'

python zeroer.py Ds3 --run_transitivity --LR_dup_free
echo 'Finished Ds3'

python zeroer.py Ds4 --run_transitivity --LR_dup_free
echo 'Finished Ds4'

python zeroer.py Ds5 --run_transitivity --LR_dup_free
echo 'Finished Ds5'

python zeroer.py Ds6 --run_transitivity --LR_dup_free
echo 'Finished Ds6' 

python zeroer.py Ds7 --run_transitivity --LR_dup_free
echo 'Finished Ds7'

python zeroer.py Dt1 --run_transitivity --LR_dup_free
echo 'Finished Dt1'

python zeroer.py Dt2 --run_transitivity --LR_dup_free
echo 'Finished Dt2'

python zeroer.py Dn1 --run_transitivity --LR_dup_free
echo 'Finished Dn1'

python zeroer.py Dn2 --run_transitivity --LR_dup_free
echo 'Finished Dn2'

python zeroer.py Dn3 --run_transitivity --LR_dup_free
echo 'Finished Dn3'

python zeroer.py Dn4 --run_transitivity --LR_dup_free
echo 'Finished Dn4'

python zeroer.py Dn5 --run_transitivity --LR_dup_free
echo 'Finished Dn5'

python zeroer.py Dn6 --run_transitivity --LR_dup_free
echo 'Finished Dn6'

python zeroer.py Dn7 --run_transitivity --LR_dup_free
echo 'Finished Dn7'

python zeroer.py Dn8 --run_transitivity --LR_dup_free
echo 'Finished Dn8'
