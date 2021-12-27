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
```
upto n = [1..n]
fac' n = product [1..n]
power2table n = [ power2 i | i<-[0..n] ]
sumsquares n = sum [ i*i | i<-[1..n] ]
factors n = [ f | f<-[1..n], isFactorOf f n ]
isFactorOf f n = n `mod` f == 0
primes n = [ p | p <- [1..n], factors p == [1,p] ]
```
#### Anonymous / Lambda functions
```
-- square x = x^2
square = \ x -> x^2

--sqlist' = map square [1..10]
sqlist' = map (\x-> x^2) [1..10]

between' = filter (\n-> 3<=n && n<=6) [1..10]
```

