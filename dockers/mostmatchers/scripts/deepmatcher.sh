#!/bin/bash

source /opt/conda/etc/profile.d/conda.sh
conda init bash
source ~/.bashrc
conda activate deepmatcher
conda info | egrep "conda version|active environment"

cd /methods/deepmatcher-sample/
cp /methods/EntityMatcher/data/runner.py /opt/conda/envs/deepmatcher/lib/python3.6/site-packages/deepmatcher/

python run.py /methods/EntityMatcher/data/Ds1 Ds1
echo 'Finished Ds1'

python run.py /methods/EntityMatcher/data/Ds2 Ds2
echo 'Finished Ds2'

python run.py /methods/EntityMatcher/data/Ds3 Ds3
echo 'Finished Ds3'

python run.py /methods/EntityMatcher/data/Ds4 Ds4
echo 'Finished Ds4'

python run.py /methods/EntityMatcher/data/Ds5 Ds5
echo 'Finished Ds5'

python run.py /methods/EntityMatcher/data/Ds6 Ds6
echo 'Finished Ds6'

python run.py /methods/EntityMatcher/data/Ds7 Ds7
echo 'Finished Ds7'

python run.py /methods/EntityMatcher/data/Dd1 Dd1
echo 'Finished Dd1'

python run.py /methods/EntityMatcher/data/Dd2 Dd2
echo 'Finished Dd2'

python run.py /methods/EntityMatcher/data/Dd3 Dd3
echo 'Finished Dd3'

python run.py /methods/EntityMatcher/data/Dd4 Dd4
echo 'Finished Dd4'

python run.py /methods/EntityMatcher/data/Dt1 Dt1
echo 'Finished Dt1'

python run.py /methods/EntityMatcher/data/Dt2 Dt2
echo 'Finished Dt2'

python run.py /methods/EntityMatcher/data/Dn1 Dn1
echo 'Finished Dn1'

python run.py /methods/EntityMatcher/data/Dn2 Dn2
echo 'Finished Dn2'

python run.py /methods/EntityMatcher/data/Dn3 Dn3
echo 'Finished Dn3'

python run.py /methods/EntityMatcher/data/Dn4 Dn4
echo 'Finished Dn4'

python run.py /methods/EntityMatcher/data/Dn5 Dn5
echo 'Finished Dn5'

python run.py /methods/EntityMatcher/data/Dn6 Dn6
echo 'Finished Dn6'

python run.py /methods/EntityMatcher/data/Dn7 Dn7
echo 'Finished Dn7'

python run.py /methods/EntityMatcher/data/Dn8 Dn8
echo 'Finished Dn8'