# This script imports the contents of the input.csv,
# sorts the data in descending alphabetic order,
# then writes output.csv

import csv

with open('../input.csv') as csvfile:
    reader = csv.reader(csvfile, delimiter=',')
    
    for data in reader:
       data = sorted(data, reverse=True)
       #print(data)

with open('../output.csv', "w", newline='') as csvfile:
    writer = csv.writer(csvfile)    
    writer.writerow(data)
        

        
