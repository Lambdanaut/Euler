'''So much for one liners...

I had to make an incrementer(x=0) so I could numbers.pop(x).
Numbers.remove(number) was WAY less efficient than numbers.pop(x).
'''

def seiveOfEratosthenes(primeRange):
  numbers = [number for number in range(2,primeRange)]
  primes = []
  while numbers != []:
    prime = numbers.pop(0)
    primes.append(prime)
    x = 0
    for number in numbers:
      if number % prime == 0:
        numbers.pop(x)
      x+=1
  return primes

print(seiveOfEratosthenes(120000)[10001-1])
