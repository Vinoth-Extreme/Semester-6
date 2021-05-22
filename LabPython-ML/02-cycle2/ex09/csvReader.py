import csv

r1 = []
r2 = []
r3 = []
r4 = []

with open("data.csv", 'r') as file:
    reader = csv.reader(file, delimiter = ',')

    for i, row in enumerate(reader):
        if i == 0:
            for j, data in enumerate(row):
                if j == 0:
                    continue
                r1.append(data)
        if i == 1:
            for j, data in enumerate(row):
                if j == 0:
                    continue
                r2.append(data)
        if i == 2:
            for j, data in enumerate(row):
                if j == 0:
                    continue
                r3.append(data)
        if i == 3:
            for j, data in enumerate(row):
                if j == 0:
                    continue
                r4.append(data)

for i in range(0, len(r1)):
    print(r1[i], ' ', r2[i], ' ', r3[i], ' ', r4[i])