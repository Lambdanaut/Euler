(defn square [n] (* n n))
(println (- (square (reduce + (range 1 101) ) ) (reduce + (map square (range 1 101) ) ) ) )
