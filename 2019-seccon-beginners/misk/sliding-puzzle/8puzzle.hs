import Data.List

data Status = Open
            | Close
            | None

type Cost = Int

--   Cell = (Number, x, y)
type Cell = (Int, Int, Int)
type Cells = [Cell]

data Node = EmptyNode
          | Node Cells Status Cost Node

setCells :: [Int] -> Cells
setCells (x1:x2:x3:x4:x5:x6:x7:x8:x9:_) = [(x1,-1,1), (x2,0,1), (x3,1,1)
                                          ,(x4,-1,0), (x5,0,0), (x6,1,0)
                                          ,(x7,-1,-1),(x8,0,-1),(x9,1,-1)]

manhattan :: Cell -> Cell -> Int
manhattan (_, x1, y1) (_, x2, y2) = (abs $ x1 - x2) + (abs $ y1 - y2)

heuristic :: Node -> Cells -> Int
heuristic (Node cells _ _ _) goal = sum $ zipWith (manhattan) (sort cells) (sort goal)


main = do
        let startCells = setCells [0,2,3,6,7,1,8,4,5]
            goalCells  = setCells [0,1,2,3,4,5,6,7,8]
