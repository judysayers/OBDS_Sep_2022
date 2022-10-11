#!/usr/bin/env python
### 1. script to find all occurrences of TATA motif in promoter sequence  ###

# import re

# sequence = 'TATAATGCTGACTTATAGCGCTATATATATATA'

# motif = 'TATA'

# for motif in re.finditer(motif, sequence):
#     print('TATA location', motif.start(), motif.end())

# print('Number of TATA motifs:', sequence.count('TATA'))

# option 2 without using find

sequence = 'TATAATGCTGACTTATAGCGCTATATATATATA'

motif = 'TATA'

position = 0
counter = 0
running = True
while running:
    if sequence[position:].startswith(motif):
        print(position, position + len(motif))
        counter += 1
    position += 1
    if len(sequence) <= position:
        running = False
print(counter)

#!/usr/bin/env python  
### 2. script to compute GC content of DNA sequence ###
  
sequence = 'TATAATGCTGACTTATAGCGCTATATATATATA'
GC_count = 0
total_count = 0

for base in sequence:
    if base == 'G' or base == 'C':
        GC_count += 1
        total_count += 1
    else:
        total_count += 1

print(GC_count)
print(total_count)
print('GC content',round((GC_count/total_count)*100,2), '%')

#!/usr/bin/env python 
### 3. script to calculate the hamming distance between 2 DNA sequences ###

sequence_1 = 'GAGCCTACTAACGGGAT'
sequence_2 = 'CATCGTAATGACGGCCT'

mismatch_count = 0

for base in range(0, len(sequence_1)):
    if sequence_1[base] != sequence_2[base]:
        mismatch_count += 1
    else:
        mismatch_count += 0
print('The Hamming distance is: ',mismatch_count)

#!/usr/bin/env python 
### 4. script to find a consensus motif ###
import copy

# input list of strings
string_inputs = ['ATCCAGCT', 'GGGCAACT', 'ATGGATCT', 'AAGCAACC', 'TTGGAACT', 'ATGCCATT', 'ATGGCACT']

# create dictionary of dictionaries to store bases by position
motif_profile = {}
for pos in range(0, len(string_inputs[0])):
    base_counts = {'A':0, 'T':0, 'C':0, 'G':0}
    for idx, motif in enumerate(string_inputs):
        base = motif[pos]
        if base == 'A':
            base_counts['A'] += 1
        if base == 'T':
            base_counts['T'] += 1
        if base == 'C':
            base_counts['C'] += 1
        if base == 'G':
            base_counts['G'] += 1
    motif_profile[pos] = copy.deepcopy(base_counts)

print(motif_profile)

for pos in motif_profile:
    print(motif_profile[pos])

# create consensus sequence list
consensus_sequence = []

for pos in motif_profile.values():
    max_count = max(pos.values())
    for base, value in pos.items():
        if value == max_count:
            consensus_sequence.append(base)

print(consensus_sequence)
print(''.join(consensus_sequence))
    # if pos['A'] > motif_profile['T'] and  motif_profile['A'] > motif_profile['C'] and motif_profile['A'] >  motif_profile['G']:
    #     consensus_sequence.append('A')
    # if motif_profile['T'] > motif_profile['A'] and motif_profile['T'] >  motif_profile['C'] and motif_profile['T'] >  motif_profile['G']:
    #     consensus_sequence.append('T')
    # if motif_profile['C'] > motif_profile['A'] and motif_profile['C'] > motif_profile['T'] and motif_profile['C'] > motif_profile['G']:
    #     consensus_sequence.append('C')
    # if motif_profile['G'] > motif_profile['A'] and motif_profile['G'] > motif_profile['C'] and motif_profile['G'] > motif_profile['T']:
    #     consensus_sequence.append('G')





