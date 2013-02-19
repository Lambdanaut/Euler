from __future__ import division

def load_grid(filename):
  return map (lambda x: map (lambda y: int(y), x.strip("\n").split(" ")), open(filename, 'r').readlines())

def get_node((x, y), grid):
  return grid[y][x]

def node_score(node_path_value, depth):
  return node_path_value / (depth + 1)

def move_possibilities((x, y)):
  return [(x,y+1),(x+1,y+1)]

def search(grid):
  end = len(grid) - 1
  # Node :: ((x,y), (parent_x,parent_y), Sum of path to node)
  cur_id = 0
  open_list = [((0,0), cur_id, get_node((0,0), grid))]
  while True:
    cur_id += 1

    # Get the best node from the open list
    (cur_xy, cur_parent_id, cur_sum) = reduce(lambda ((x1,y1), par1, sum1), ((x2,y2), par2, sum2): ((x1,y1), par1, sum1) if node_score(sum1, y1) > node_score(sum2, y2) else ((x2,y2), par2, sum2), open_list)
    (cur_x, cur_y) = cur_xy

    # If we've reached the end of the pyramid, then we're done! 
    if cur_y == end:
      break

    # Remove the current node from the open list
    open_list.remove((cur_xy, cur_parent_id, cur_sum))

    # Where we can move to from our current node
    cur_possibilities = map(lambda node: (node, cur_id, get_node(node, grid) + cur_sum), move_possibilities(cur_xy))
    open_list = open_list + cur_possibilities

  # Get our final sum
  return cur_sum

grid = load_grid('18.grid')
print(search(grid))