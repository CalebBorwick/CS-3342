def primes(N):
    for i in range(2,N+1):
        isPrime=True
        for j in range(2,i):
            if i%j==0:
                isPrime = False
                break
        if isPrime:
            yield i

n = primes(11)
print(next(n)) # 2
print(next(n)) # 3
print(next(n)) # 5
print(next(n)) # 7
print(next(n)) # 11
print(next(n)) # raises StopIteration
