lst = [6, 5, 2 , 1, 6, 4]
mx = max(lst)
smx = 0

for i in lst:
    if i == mx:
        continue
    if i > smx and i < mx:
        smx = i

print("The second highest value is", smx)