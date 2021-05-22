n = int(input())
z = int(input())

a = []
s = 0
for i in range(0, n):
    n = [int(x) for x in input("Enter value of N").split()]
    b = int(max(n))
    print(b)
    s = s + pow(b, 2)
    result = s % z
print("Result: ", result)