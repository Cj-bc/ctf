module Cell
( Cell
, Cells
, set
, Cell.lookup
, swap
) where

--   Cell = (Number, x, y)
data Cell = Cell Int Int Int
type Cells = [Cell]



set :: [Int] -> Cells
set (x1:x2:x3:x4:x5:x6:x7:x8:x9:_) = [Cell x1 (-1) 1,   Cell x2 0 1,   Cell x3 1 1
                                     ,Cell x4 (-1) 0,   Cell x5 0 0,   Cell x6 1 0
                                     ,Cell x7 (-1) (-1),Cell x8 0 (-1),Cell x9 1 (-1)]

lookup :: Cells -> Int -> Cell
lookup (c@(Cell num _ _):cs) x | x == num  = c
                                   | otherwise = Cell.lookup cs x



swap :: Cells -> Int -> Int -> Cells
swap cells t1 t2 = [Cell 1 24 4]
                    where
                        (Cell n nx ny) = Cell.lookup cells t1
                        (Cell m mx my) = Cell.lookup cells t1


