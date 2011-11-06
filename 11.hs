module Main where

type Point = (Int,Int)
data Direction = N | NE | E | SE | S | SW | W | NW deriving (Show,Enum,Ord,Eq)
data Grid = Grid {gGrid   :: [[Int]],gWidth  :: Int,gHeight :: Int} deriving Show
makeGrid :: [[Int]] -> Grid
makeGrid grid = Grid grid (length $ grid !! 0) (length grid)

(%!%) :: Grid -> Point -> Int
(%!%) grid (x,y) = (gGrid grid !! y) !! x

parseGrid :: FilePath -> IO Grid
parseGrid file = do
  f <- fmap (map words.lines) $ readFile file 
  return $ makeGrid $ map (map (read)) f

pointsFromDirection :: Grid -> Point -> Direction -> [Point]
pointsFromDirection grid (x,y) direction = case direction of
  N  -> if y > 0 then point : pointsFromDirection grid (x,y-1) direction else []
  NE -> if y > 0 && x < gWidth grid then point : pointsFromDirection grid (x+1,y-1) direction else []
  E  -> if x < gWidth grid then point : pointsFromDirection grid (x+1,y) direction else []
  SE -> if x < gWidth grid && y < gHeight grid then point : pointsFromDirection grid (x+1,y+1) direction else []
  S  -> if y < gHeight grid then point : pointsFromDirection grid (x,y+1) direction else []
  SW -> if x > 0 && y < gHeight grid then point : pointsFromDirection grid (x-1,y+1) direction else []
  W  -> if x > 0 then point : pointsFromDirection grid (x-1,y) direction else []
  NW -> if x > 0 && y > 0 then point : pointsFromDirection grid (x-1,y-1) direction else []
  where point = (x,y)

main = do
  grid <- parseGrid "11.grid"
  putStrLn $ show $ maximum $ map (\point -> maximum $ map (\direction -> product $ map (grid %!%) $ take 4 $ pointsFromDirection grid point direction) [N .. NW ]) [(x,y) | x <- [0..(gWidth grid) - 1], y <- [0..(gHeight grid) - 1] ]
