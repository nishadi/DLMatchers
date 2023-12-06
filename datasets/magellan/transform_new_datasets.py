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

  # Copy tableA.csv and tableB.csv
  shutil.copyfile(source_dir + 'tableA.csv', dest_dir + '/tableA.csv')
  shutil.copyfile(source_dir + 'tableB.csv', dest_dir + '/tableB.csv')

  tableA = csv.DictReader(open(source_dir + 'tableA.csv'))
  tableB = csv.DictReader(open(source_dir + 'tableB.csv'))
  tableA_dict = {row['id']: row for row in tableA}
  tableB_dict = {row['id']: row for row in tableB}

  attributes = tableA.fieldnames

  for file_name in ['test.csv', 'train.csv', 'valid.csv']:

    dataset_rows = csv.DictReader(open(source_dir + file_name, 'r'))

    dest_attributes = ['_id', 'label']
    for a in attributes:
      dest_attributes.append('table1.' + a)
      dest_attributes.append('table2.' + a)

    id = 0
    rows = list()
    for record_pair in dataset_rows:
      l_record = tableA_dict[record_pair['left_id']]
      r_record = tableB_dict[record_pair['right_id']]

      tr_row = {
        '_id': id,
        'label': record_pair['label'],
      }
      for a in attributes:
        tr_row['table1.' + a] = l_record[a]
        tr_row['table2.' + a] = r_record[a]
      rows.append(tr_row)
      id += 1

    w = csv.DictWriter(open(dest_dir + file_name, 'w'), dest_attributes)
    w.writeheader()
    w.writerows(rows)
