module Main where

data Direction = N | NE | E | SE | S | SW | W | NW deriving (Show,Enum,Ord,Eq)
data Grid = Grid {gGrid   :: [[Int]],gWidth  :: Int,gHeight :: Int} deriving Show
makeGrid :: [[Int]] -> Grid
makeGrid grid = Grid grid (length $ length grid) (length grid)

(%!%) :: Grid -> (Int,Int) -> Int
(%!%) grid (x,y) = x !! (gGrid grid !! y)

parseGrid :: FilePath -> IO Grid
parseGrid file = do
  f <- fmap (map words.lines) $ readFile file 
  return $ makeGrid $ map (map (read)) f
