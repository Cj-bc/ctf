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
set [] = []
set (x1:x2:x3:x4:x5:x6:x7:x8:x9:_) = [Cell x1 (-1) 1,   Cell x2 0 1,   Cell x3 1 1
                                     ,Cell x4 (-1) 0,   Cell x5 0 0,   Cell x6 1 0
                                     ,Cell x7 (-1) (-1),Cell x8 0 (-1),Cell x9 1 (-1)]

-- As this is not for general use,
-- It won't wrap values with Maybe.
-- If you want to use this for more wide usage,
-- You should consider to use Maybe to return value.
lookup :: Cells -> Int -> Cell
lookup [] _ = Cell (-1) 0 0
lookup (c@(Cell num _ _):cs) x | x == num  = c
                               | otherwise = Cell.lookup cs x

-- Returns Cells just drops given cell
rest :: Cells -> Cell -> Cells
rest [] _ = []
rest (c@(Cell num _ _):cs) drp@(Cell x _ _) | x == num = cs
                                             | otherwise = c : rest cs drp


-- Swap dst of two cells
swap :: Cells -> Int -> Int -> Cells
swap cells t1 t2 = rest (rest cells nc) mc ++ [Cell n mx my, Cell m nx ny]
                    where
                        nc@(Cell n nx ny) = Cell.lookup cells t1
                        mc@(Cell m mx my) = Cell.lookup cells t2


