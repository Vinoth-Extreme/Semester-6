filePointer = open("FileByPy.txt", "x")
filePointer.write("This file i created by python file handling concept")
filePointer.close()

filePointer = open("FileByPy.txt", "r")
print("*************The content of the file*************")
print(filePointer.read())
filePointer.close()