import array as arr

list = []
n = int(input("Enter number of values required: "))
a = arr.array('i', [1, 2, 3, 4, 5])
mySet = {"A", 1, "B", 2, "C", True, 8.9}

for i in range(1, n+1):
    x = int(input())
    list.append(x)

print("*********List*********")
print("The list elements are", list)
print("*********Array*********")
print("Length of the array is", len(a))
print("First element of the array is", a[0])
print("*********Sets*********")
for i, val in enumerate(mySet):
    print("Set item {0} is {1}", i ,val)