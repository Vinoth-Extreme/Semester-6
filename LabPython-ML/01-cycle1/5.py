import textwrap
s = input("Enter string: ")
w = int(input("Enter width: "))

print(textwrap.fill(s, w))