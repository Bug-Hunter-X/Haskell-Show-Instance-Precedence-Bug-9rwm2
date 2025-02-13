{-# LANGUAGE FlexibleInstances #-}

instance (Show a, Show b) => Show (a, b) where
  showsPrec p (a, b) = showParen (p > 10) $ showString "(" . showsPrec 11 a . showString ", " . showsPrec 11 b . showString ")"

data Point = Point Float Float

instance Show Point where
  showsPrec p (Point x y) = showParen (p > 10) $ showString "Point (" . showsPrec 11 x . showString "," . showsPrec 11 y . showString ")"

main :: IO ()
main = do
  print (1, 2 :: Int)
  print (Point 1.0 2.0)