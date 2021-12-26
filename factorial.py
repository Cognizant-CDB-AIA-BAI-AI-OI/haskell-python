def fact(n, a = 1):
    if (n == 1):
        return a 
    return fact(n - 1, n * a)

print(fact(5))
