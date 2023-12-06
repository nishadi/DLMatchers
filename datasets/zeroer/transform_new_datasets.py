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

  # Create a metadata file
  with open(dest_dir + 'metadata.txt', 'w') as file:
    file.write('tableA.csv\n')
    file.write('tableB.csv\n')
    file.write('matches_tableA_tableB.csv')


  # Copy tableA.csv, tableB.csv, and train.csv
  shutil.copyfile(source_dir + 'tableA.csv', dest_dir + '/tableA.csv')
  shutil.copyfile(source_dir + 'tableB.csv', dest_dir + '/tableB.csv')

  # Create the train file and matches file
  matches_list = list()
  train_list = list()
  dataset = list(csv.DictReader(open(source_dir + 'train.csv', 'r')))
  for row in dataset:
    train_list.append(
      {
        'ltable_id': row['left_id'],
        'rtable_id': row['right_id'],
        'label': row['label']
      }
    )

    if row['label'] == '1':
      matches_list.append(
        {
          'ltable_id': row['left_id'],
          'rtable_id': row['right_id']
        }
      )

  w = csv.DictWriter(open(dest_dir + 'train.csv', 'a'),
                     ['ltable_id', 'rtable_id', 'label'])
  w.writeheader()
  w.writerows(train_list)

  w = csv.DictWriter(open(dest_dir + 'matches_tableA_tableB.csv', 'a'),
                     ['ltable_id', 'rtable_id'])
  w.writeheader()
  w.writerows(matches_list)
