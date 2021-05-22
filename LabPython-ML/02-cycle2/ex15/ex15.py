while True:
    try:
        bg = float(input("Enter budget"))
        s = bg
    except ValueError:
        print("PRINT NUMBER AS AMOUNT")
    else:
        break

a = {"name": [], "quant": [], "price": []}
b = list(a.values())
na = b[0]
qu = b[1]
pr = b[2]

while True:
    try:
        ch = int(input("1. ADD\n2.EXIT\n3.ENTER YOUR CHOICE: "))
    except ValueError:
        print("Enter valid option.")
        continue
    else:
        if ch == 1 and s > 0:
            pn = input("Enter product name: ")
            q = input("Enter quantity: ")
            p = float(input("Enter price: "))

            if p > s:
                print("\nCan, T BUT THE PRODUCT")
                continue

            else:
                if pn in na:
                    ind = na.index(pn)
                    qu = remove(qu[ind])
                    pr.remove(pr[ind])
                    qu.insert(ind, q)
                    pr.insert(ind, p)

                    s = bg - sum(pr)
                    print("\nLeft amount: ", s)
                else:
                    na.append(pn)
                    qu.append(q)
                    pr.append(p)
                    s = bg - sum(pr)
                    print("\nAmount Left: ", s)
        elif s <= 0:
            print("\nNo Budget")
        else:
            break
print("\n Amount Left: Rs.", s)
if s in pr:
    print("\nAmount left can buy you a", na[pr.index(s)])

print("\n\n\nGROCERY LIST")
for i in range(len(na)):
    print(na[i], "    ", qu[i], "    ", pr[i])