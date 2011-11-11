(println (reduce + (filter (fn [n] (or (= (mod n 3) 0) (= (mod n 5) 0)) ) (range 1 1000) ) ) )
