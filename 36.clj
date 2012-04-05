(def numbers ( map (fn [x] (list (str x) (Integer/toString x 2) ) ) (range 0 1000000) ) )

(def palindromes (filter (fn [n] (and (= (first n) (apply str (reverse (first n) ) ) ) (= (second n) (apply str (reverse (second n) ) ) ) ) ) numbers) )

(defn sum [a] (reduce (fn [a b] (+ a b) ) a ) )

(def answer (sum (map (fn [x] (Integer/parseInt (first x) 10 ) ) palindromes ) ) )

(println answer)

