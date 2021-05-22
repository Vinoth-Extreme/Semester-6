import sys
lst = ['a', 2, 3]

for i in lst:
    try:
        print("The element is", i)
        r = 1/int(i)
        print("The reciprocal of", i, "is", r)
        break
    except:
        print("OOps!", sys.exc_info()[0], "occured!")
        print("Next entry")
        print()