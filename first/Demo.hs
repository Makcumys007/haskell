module Demo where
import Data.Char
{-
! # $ % & * + . / < = > ? @ \ ^ | - ~
-}

-- вывод строки
main = putStrLn "Hello, world!"

-- создание своего оператора
infixl 6 *+*

a *+* b = a ^ 2 + b ^ 2

infixl 6 |-|

x |-| y = if res > 0 then res else res * (-1)
	where
		res = x - y	

-- факториал
factorial n = if n == 0 then 1 else n * factorial(n - 1)

factorial' 0 = 1
factorial' n = n * factorial'(n - 1)

-- двойной факториал
doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n = n * doubleFact(n - 2)



-- объеденить символы '4' и '2' в число 42
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y = if (isNumber x) && (isNumber y)
			then digitToInt x * 10 + digitToInt y
			else 100

dist :: (Double, Double) -> (Double, Double) -> Double
dist p1 p2 = sqrt((fst p2 - fst p1) ^ 2 + (snd p2 - snd p1) ^ 2)

