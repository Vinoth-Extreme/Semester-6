def evenDigits (l ,u):
    r = list()

    for i in range(l, u+1):
        new = ''
        res = list(str(i))
        for j in range(len(res)):
            if int(res[j]) % 2 == 0:
                new += res[j]
            if len(new) == len(res):
                print(','.join(list(new)))

if __name__ == '__main__':
    lower = int(input("Enter the lower limit"))
    upper = int(input("Enter the upper limit"))
    evenDigits(lower, upper)