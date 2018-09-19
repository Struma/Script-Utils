#!/usr/bin/env python3

#This is a simple script utility to bind all the csv tables in a directory into a single file
#usage is ./Table_glob output_file_name.csv

import glob  #glob is the best when it comes to grabbing lots of files
import pandas as pd
import sys

out_name = str(sys.argv[1])

glob_csv = [name for name in glob.glob("*.csv")]

glob_tab = [pd.read_csv(name) for name in glob_csv]

final_tab = pd.concat(glob_tab)

final_tab.to_csv(out_name)

print("Table is bound as: %s" % out_name)
