#!/bin/bash

source /opt/conda/etc/profile.d/conda.sh
conda init bash
source ~/.bashrc
conda activate deepmatcher
conda info | egrep "conda version|active environment"

cd /methods/EntityMatcher/
cp /methods/EntityMatcher/data/runner.py /opt/conda/envs/deepmatcher/lib/python3.6/site-packages/deepmatcher/

python run.py -m "HierMatcher" -d "data/Dd1" -e "embedding"
echo 'Finished Dd1'

python run.py -m "HierMatcher" -d "data/Dd2" -e "embedding"
echo 'Finished Dd2'

python run.py -m "HierMatcher" -d "data/Dd3" -e "embedding"
echo 'Finished Dd3'

python run.py -m "HierMatcher" -d "data/Dd4" -e "embedding"
echo 'Finished Dd4'

python run.py -m "HierMatcher" -d "data/Ds1" -e "embedding"
echo 'Finished Ds1'

python run.py -m "HierMatcher" -d "data/Ds2" -e "embedding"
echo 'Finished Ds2'

python run.py -m "HierMatcher" -d "data/Ds3" -e "embedding"
echo 'Finished Ds3'

python run.py -m "HierMatcher" -d "data/Ds4" -e "embedding"
echo 'Finished Ds4'

python run.py -m "HierMatcher" -d "data/Ds5" -e "embedding"
echo 'Finished Ds5'

python run.py -m "HierMatcher" -d "data/Ds6" -e "embedding"
echo 'Finished Ds6'

python run.py -m "HierMatcher" -d "data/Ds7" -e "embedding"
echo 'Finished Ds7'

python run.py -m "HierMatcher" -d "data/Dt1" -e "embedding"
echo 'Finished Dt1'

python run.py -m "HierMatcher" -d "data/Dt2" -e "embedding"
echo 'Finished Dt2'

python run.py -m "HierMatcher" -d "data/Dn1" -e "embedding"
echo 'Finished Dn1'

python run.py -m "HierMatcher" -d "data/Dn2" -e "embedding"
echo 'Finished Dn2'

python run.py -m "HierMatcher" -d "data/Dn3" -e "embedding"
echo 'Finished Dn3'

python run.py -m "HierMatcher" -d "data/Dn4" -e "embedding"
echo 'Finished Dn4'

python run.py -m "HierMatcher" -d "data/Dn5" -e "embedding"
echo 'Finished Dn5'

python run.py -m "HierMatcher" -d "data/Dn6" -e "embedding"
echo 'Finished Dn6'

python run.py -m "HierMatcher" -d "data/Dn7" -e "embedding"
echo 'Finished Dn7'

python run.py -m "HierMatcher" -d "data/Dn8" -e "embedding"
echo 'Finished Dn8'