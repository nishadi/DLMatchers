import csv
import logging
import os
from typing import Callable

import pandas as pd

import constants as C
from logging_customized import setup_logging

setup_logging()


def convert_deepmatcher_structure(filename_matches: str, filename_table_a: str,
                                  filename_table_b: str,
                                  filename_destination: str,
                                  fun_join_left: Callable,
                                  fun_join_right: Callable):
  df_table_a = pd.read_csv(filename_table_a, sep=",", encoding="UTF-8")
  df_table_b = pd.read_csv(filename_table_b, sep=",", encoding="UTF-8")

  with open(filename_matches) as src, open(filename_destination, "w+") as dest:
    reader = csv.DictReader(src, delimiter=",")
    writer = csv.writer(dest, delimiter="\t")

    writer.writerow([C.INDEX_KEY, C.TEXT_LEFT, C.TEXT_RIGHT, C.LABEL])

    for idx, line in enumerate(reader):
      # find the row in tableA and tableB which contain the actual values.
      # Make sure both keys have the same data type (we use string comparison
      # as keys can be strings) As there should only exist one row per id,
      # we use iloc (which returns a data series)
      left = \
        df_table_a.loc[df_table_a['id'].astype(str) == line['left_id']].iloc[
          0]
      right = \
        df_table_b.loc[df_table_b['id'].astype(str) == line['right_id']].iloc[
          0]

      # which attributes we join is depending on the dataset
      left_joined_attributes = fun_join_left(left)
      right_joined_attributes = fun_join_right(right)

      writer.writerow(
        [idx, left_joined_attributes, right_joined_attributes, line['label']])

  logging.info("Created new tsv. Filename: {}".format(filename_destination))

def full_join_except_id(row: pd.Series):
  single_text_blob = []
  for index, row_value in row[1:].items():
    if not row.isnull()[index]:
      single_text_blob.append(str(
        row_value))  # make sure non-string values (e.g. prices as floats) get converted

  return " ".join(single_text_blob)


if __name__ == "__main__":

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

    convert_deepmatcher_structure(
      os.path.join(source_dir, "train.csv"),
      os.path.join(source_dir, "tableA.csv"),
      os.path.join(source_dir, "tableB.csv"),
      os.path.join(dest_dir, "train.tsv"),
      full_join_except_id, full_join_except_id)

    convert_deepmatcher_structure(
      os.path.join(source_dir, "test.csv"),
      os.path.join(source_dir, "tableA.csv"),
      os.path.join(source_dir, "tableB.csv"),
      os.path.join(dest_dir, "test.tsv"),
      full_join_except_id, full_join_except_id)

    convert_deepmatcher_structure(
      os.path.join(source_dir, "valid.csv"),
      os.path.join(source_dir, "tableA.csv"),
      os.path.join(source_dir, "tableB.csv"),
      os.path.join(dest_dir, "dev.tsv"),
      full_join_except_id, full_join_except_id)
