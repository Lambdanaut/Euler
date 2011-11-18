#!/usr/bin/python2
#This one took me for a ride. PYTHON 2 ONLY BTW. 

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
primes = seiveOfEratosthenes(20000)

def factorize (n):
  factors = []
  while (n >= 2):
    for prime in primes:
      if n % prime == 0:
        factors.append(prime)
        n /= prime
        break
  return factors

def splitFactors (n):
  factors = factorize(n)
  splitFactors = []
  while factors != []:
    currentF = factors[0]
    exponent = 0
    for factor in factors:
      if factor == currentF:
        exponent += 1
      factors = filter (lambda n: n != currentF,factors)
    splitFactors.append((currentF,exponent))
  return splitFactors

def triangles (triRange):
  triangles = [0]
  for number in range(1,triRange+1):
    triangles += [triangles[-1] + number]
  return triangles

for triangle in triangles(20000):
  factored = splitFactors(triangle)
  divisors = 1
  for factor in factored:
    divisors *= factor[1] + 1
  if divisors > 500:
    print(triangle)
    break
