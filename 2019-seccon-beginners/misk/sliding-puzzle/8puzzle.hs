import Data.List

data Status = Open
            | Close
            | None

type Cost = Int

data Node = EmptyNode
          | Node Cells Status Cost Node


manhattan :: Cell -> Cell -> Int
manhattan (Cell _ x1 y1) (Cell _ x2 y2) = (abs $ x1 - x2) + (abs $ y1 - y2)

heuristic :: Node -> Cells -> Int
heuristic (Node cells _ _ _) goal = sum $ zipWith (manhattan) (sort cells) (sort goal)


main = do
        let startCells = setCells [0,2,3,6,7,1,8,4,5]
            goalCells  = setCells [0,1,2,3,4,5,6,7,8]
