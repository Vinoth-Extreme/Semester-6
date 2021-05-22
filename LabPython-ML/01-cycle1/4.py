s = "Sathyabama 2021 @%$"
alphas = specChars = nums = lwrCases = uprCases = 0

for i in s:
    if i.isalpha():
        alphas = alphas + 1
        if i.islower():
            lwrCases = lwrCases + 1
        if i.isupper():
            uprCases = uprCases + 1
    elif i.isdigit():
        nums = nums + 1
    else:
        if i == '"':
            specChars = specChars - 1
        specChars = specChars + 1

print("Digits:", nums)
print("Special Charecters:", specChars)
print("Alphabets:", alphas)
print("Lowercase Alphabets:", lwrCases)
print("Uppercase Alphabets:", uprCases)