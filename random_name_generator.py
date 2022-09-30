#!/usr/bin/env python
### script to print participants names one by one in random order  ###

import random 


participants = ['Li-Hsin', 'Nicole', 'Susann', 'Matt', 'Christina', 'Emily', 'Kinam', 'Yu', 'Ayesha', 'Judy', 'Felix', 'Dan']
random_participants = []

running = True 
while running:
    pick = random.choice(participants)
    if pick not in random_participants:
        random_participants.append(pick)
    if len(participants) == len(random_participants):
        running = False

print(random_participants)


    

    



