def parseNums (filepath): return map (lambda l: int(l),open(filepath,'r').readlines())
print (str(sum(parseNums("13.grid")))[:10])

  
