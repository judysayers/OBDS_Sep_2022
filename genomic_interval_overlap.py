'''
Import modules
Set up parsing arguments
set up logging 
Define output file or stdout
Open both BED files 
start counter to log number of overlapping changes
iterate over both files line by line looking for:
fragments on same chromosome that overlap
include break option for unique overlaps only
b.seek needed to reset to the start of the file at the end of the loop
log number of overlapped intervals
must finally close files as opened without 'with'

'''

### Script to find any intervals that overlap by at least 1 bp between 2 bed files ###
#! /usr/bin/env python

import argparse
import sys
import logging

logging.basicConfig(level=logging.DEBUG)

parser = argparse.ArgumentParser() # Create a parser

parser.add_argument('-o', # output 
                dest='overlap_bed', # Variable name to store option (optional)
                help='This is your bedfile of intervals overlapping between input file a and b. Use a hyphen to specify standard out', # Help text (optional)
                default='-',
                )
parser.add_argument('-a', # input a
                    '--input_a', # input in .bed format
                    dest='a_file', # Variable name to store option (optional)
                    ## nargs=2, #possibility to change this to */+ for more files
                    help='Upload the first input BED file', # Help text (optional)
                    )
parser.add_argument('-b', # input b
                    '--input_b', # input in .bed format
                    dest='b_file', # Variable name to store option (optional)
                    ## nargs=2, #possibility to change this to */+ for more files
                    help='Upload the second input BED file', # Help text (optional)
                    )
parser.add_argument('-u', # look for unique overlaps only
                    '--uniq', # input in .bed format
                    dest='uniq', # Variable name to store option (optional)
                    default= False,
                    action='store_true', 
                    help='Include this option if you only want to return unique overlaps', # Help text (optional)
                    )

args = parser.parse_args() # Parse arguments

if args.overlap_bed == '-':
    out = sys.stdout #send output to stdout
else:
    out = open(args.overlap_bed, mode="w") #open output file in write mode
logging.info("Reading input files")
with open(args.a_file, mode="r") as a: #open file a in read mode
    with open(args.b_file, mode="r") as b:#open file b in read mode
        count = 0
        logging.info("Calculating overlapping intervals and counting number of overlaps")
        for i, line_a in enumerate(a): 
            column_a = line_a.split('\t') 
            chr_a = column_a[0]
            start_a = int(column_a[1])
            end_a = int(column_a[2])
            for j, line_b in enumerate(b):
                column_b = line_b.split('\t')
                chr_b = column_b[0]
                start_b = int(column_b[1])
                end_b = int(column_b[2])
                if chr_a == chr_b: #must be on the same chromosome
                    if end_a >= start_b and end_b >= start_a: #must overlap
                        out.write(line_a) #write output to file
                        count += 1 #increase count as an overlap has been found
                        if args.uniq == True:
                            break
            b.seek(0)    

# print number of overlapping intervals found
logging.info(f'Number of overlapping intervals: {count}')

# close the file
out.close()
                        
                        

