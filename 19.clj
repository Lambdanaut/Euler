(def year [31 28 31 30 31 30 31 31 30 31 30 31] )
(def leap [31 29 31 30 31 30 31 31 30 31 30 31] )

(defn incDay [i] 
  (if (<= 7 i) 
    1
    (inc i)
  )
)

(defn leap? [year] 
  (if (= (mod year 100) 0)
    (= (mod year 400) 0) ; On a century
    (= (mod year 4) 0) 
  )
)

(defn makeMonth [daysInMonth day] 
  (reductions (fn [d y] (incDay d) ) day (range 1 daysInMonth) )
)

(defn makeYear [year day] 
  (map second (rest (reductions 
    (fn [prevMonth curMonth] 
      (let [madeMonth (makeMonth curMonth (incDay (first prevMonth) ) ) ]
        [(last madeMonth ) madeMonth] 
      )
    ) [day '()] year
  ) ) )
)

(defn makeYears [year1 year2 day]
  (map second (rest (reductions 
    (fn [prevYear curYear] 
      (let [madeYear (makeYear (if (leap? curYear) leap year ) (first prevYear) ) ] 
        [(last (last madeYear) ) madeYear]
      )
    ) [day '()] (range year1 (+ 1 year2) )
  ) ) )
)

(defn solve [] (reduce + (map (fn [y] (count (filter (fn [m] (= (first m) 1) ) y) ) ) (makeYears 1901 2000 2) ) ) )
