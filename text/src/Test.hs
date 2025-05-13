module Test
    ( testFunc
    ) where

-- whereは外部からのモジュールをインポートするために必要(whereで定義されていない関数は外部から見えない)

testFunc :: IO ()

increment :: Int -> Int
increment x = x + 1

partial :: Int -> (Int -> Int)
partial x y = x + y
func:: Int -> Int
func = partial 3

bar :: Int
bar = y * z
    where y = z * 2  -- indentを揃える必要がある
          z = 8 

testFunc = do
    putStrLn "Hello, Haskell!"
    print (increment 1)
    print (increment 2)
    print (func 5) -- 3 + 5 = 8
    print (bar) -- 2 * 2 = 4

    

