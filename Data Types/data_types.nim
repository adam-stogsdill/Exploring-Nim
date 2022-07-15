# Learning about different data types in NIM

var a: int # Set a variable a to an integer with no determined value
var b = 7 # Set b to 7 and data type is auto detected

echo a
echo b

var
  c = -11
  d = "Hello"
  e = "!"

echo c, d, e

for i, j in [1, 2, 3]:
    echo i, ", ", j