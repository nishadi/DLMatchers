import csv
import os
import shutil


# Source to destination mapping
dataset_dir = [
  ('../new_datasets/Dn1/', 'Dn1/'),
  ('../new_datasets/Dn2/', 'Dn2/'),
  ('../new_datasets/Dn3/', 'Dn3/'),
  ('../new_datasets/Dn4/', 'Dn4/'),
  ('../new_datasets/Dn5/', 'Dn5/'),
  ('../new_datasets/Dn6/', 'Dn6/'),
  ('../new_datasets/Dn7/', 'Dn7/'),
  ('../new_datasets/Dn8/', 'Dn8/')
]

# Iterate data sets
for source_dir, dest_dir in dataset_dir:

  if not os.path.isdir(dest_dir):
    os.mkdir(dest_dir)

  for file_name in ['test.csv', 'train.csv', 'valid.csv']:
    source_file = source_dir + file_name
    dest_file = dest_dir + file_name
    shutil.copy2(source_file, dest_file)
