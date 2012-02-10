n = 2
z = 1
diagonals = [z]
while n <= 1001:
  for x in range(0,4):
    diagonals.append(z+n)
    z+=n
  n+=2
print(diagonals)
print(sum(diagonals))
