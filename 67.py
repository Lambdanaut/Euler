# This gets embarrassingly, depressingly close to the answer, but not quite. 
# I'm not sure yet what's wrong, but a tweak to 18's node_score function might do it.
solution_18 = __import__('18')

grid = solution_18.load_grid("67.grid")
print("The Solution is: " + str(solution_18.search(grid)))