import csv
import os

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

for source_dir, dest_dir in dataset_dir:

  if not os.path.isdir(dest_dir):
    os.mkdir(dest_dir)

  tableA = csv.DictReader(open(source_dir + 'tableA.csv'))
  attributes = tableA.fieldnames
  attributes.remove('id')

  for file_name in ['test.csv', 'train.csv', 'valid.csv']:

    lines = list()
    dataset = list(csv.DictReader(open(source_dir + file_name, 'r')))
    for row in dataset:
      line = ''
      for a in attributes:
        line += 'COL ' + a + ' '
        val = row['left_' + a][1:-1] # Remove '""'
        if '\t' in val:
          val = val.replace('\t', ' ') # Required for ditto processing
          val = val.strip()
        line += 'VAL ' +  val + ' '
      line += '\t'
      for a in attributes:
        line += 'COL ' + a + ' '
        val = row['right_' + a][1:-1] # Remove '""'
        if '\t' in val:
          val = val.replace('\t', ' ')
          val = val.strip()
        line += 'VAL ' +  val + ' '
      line += '\t' + row['label']
      lines.append(line)

    # Write the file
    dest_filename = dest_dir + file_name.split('.')[0] + '.txt'
    with open(dest_filename, 'w') as f:
      for line in lines:
        f.write(line)
        f.write('\n')
