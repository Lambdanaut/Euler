;A nasty solution. Plan to re-solve soon. 
(defn collatzStep [n] (if (even? n) (/ n 2) (+ (* 3 n) 1) ))
(defn collatzLength [n] (+ 1 (count (take-while (fn [x] (not= x 1) ) (iterate collatzStep n ) ) ) ) )

(println (+ 1 (count (take-while (fn [x] (< x 525) ) (map (fn [x] (collatzLength x) )  (range 1 999999) ) ) ) ) )
