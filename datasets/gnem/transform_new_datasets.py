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

  shutil.copyfile(source_dir + 'tableA.csv', dest_dir + '/tableA.csv')
  shutil.copyfile(source_dir + 'tableB.csv', dest_dir + '/tableB.csv')

  for file_name in ['test.csv', 'train.csv', 'valid.csv']:

    rows = list()
    dataset = list(csv.DictReader(open(source_dir + file_name, 'r')))
    for row in dataset:
      tr_row = {
        'ltable_id' : row['left_id'],
        'rtable_id' : row['right_id'],
        'label': row['label']
      }
      rows.append(tr_row)

    attributes = ['ltable_id', 'rtable_id', 'label']
    w = csv.DictWriter(open(dest_dir + file_name, 'a'), attributes)
    w.writeheader()
    w.writerows(rows)
