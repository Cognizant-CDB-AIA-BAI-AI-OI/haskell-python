fibHelper :: Int −> Int −> Int −> Int

fibHelper 0 val1 val2 = val1
fibHelper 1 val1 val2 = val2
fibHelper n val1 val2 =
    fibHelper ( n−1 ) val2 ( val1 + val2 )
fib :: Int −> Int
fib n = fibHelper n 0 1
