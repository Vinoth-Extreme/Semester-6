def LastNlines(fname, N):
    with open(fname) as file:
        for line in (file.readlines() [-N:]):
            print(line, end=" ")

if __name__ == '__main__':
    fname = "data.txt"
    n = int(input("Enter n: "))
    try:
        LastNlines(fname, n)
    except:
        print("Error")