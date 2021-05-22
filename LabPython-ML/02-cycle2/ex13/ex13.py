n = int(input("Enter n value: "))

seq = []

ans = []

finalAns = []

for i in range(0, n):
    seq.append(input("Enter 4 digit binary"))

for i in seq:
    x = int(str(i), 2)
    if x % 5 == 0:
        ans.append(x)

for i in ans:
    if i % 5 == 0:
        finalAns.append(i)

print(finalAns)