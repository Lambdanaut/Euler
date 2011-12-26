names = open("22.grid").read().replace("\"","").rsplit(",")
names.sort()
total = 0
curName = 0
for name in names:
  curName += 1
  namescore = 0
  for letter in name:
    namescore += ord(letter) - 64
  total += namescore * curName
print(total)
