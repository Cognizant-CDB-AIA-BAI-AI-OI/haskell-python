# Introduction to Haskell.

##  Definition by recursion

```haskell 
-- | Computing factorial of a number
-- 5! = 5 * 4 * 3 * 2 * 1

fac :: Integer -> Integer
fac n | n==0  = 1
      | n> 0  = fac(n-1) * n
```

#### Lists, enumerations, list comprehensions
```haskell 
upto n = [1..n]
fac' n = product [1..n]
power2table n = [ power2 i | i<-[0..n] ]
sumsquares n = sum [ i*i | i<-[1..n] ]
factors n = [ f | f<-[1..n], isFactorOf f n ]
isFactorOf f n = n `mod` f == 0
primes n = [ p | p <- [1..n], factors p == [1,p] ]
```
#### Anonymous / Lambda functions
```haskell 
(\x -> 2 + x) 3

filter (\x -> x `mod` 2 == 1) [1, 2, 3, 4, 5, 6]

-- square x = x^2
square = \ x -> x^2

--sqlist' = map square [1..10]
sqlist' = map (\x-> x^2) [1..10]

between' = filter (\n-> 3<=n && n<=6) [1..10]
```
---
### Factorial
#### Python
``` python
def fact(n, a = 1):
    if (n == 1):
        return a 
    return fact(n - 1, n * a)

print(fact(5))
```
```haskell
facAux 0 r = r
facAux n r = facAux (n − 1) ( r ∗ n)
facTail n = facAux n 1
```

### Fibonocci using tail recursion
```haskell
fibHelper 0 val1 val2 = val1
fibHelper 1 val1 val2 = val2
fibHelper n val1 val2 =
    fibHelper ( n−1 ) val2 ( val1 + val2 )
fib :: Int −> Int
fib n = fibHelper n 0 1
```

### Currying
```haskell
add = (\x -> (\y -> x + y))
inc n = add n 1
```


