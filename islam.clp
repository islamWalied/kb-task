
(deftemplate animal
   (slot type))

(defrule check_animal
   ?a <- (animal (type ?t&:(or (eq ?t duck) (eq ?t turtle))))
   =>
   (printout t "Animal detected: " ?t crlf))

(deftemplate rect
   (slot height)
   (slot width))

(defrule perimeter
   ?r <- (rect (height ?h) (width ?w))
   =>
   (bind ?p (* 2 (+ ?h ?w)))
   (printout t "Perimeter of rectangle (height=" ?h ", width=" ?w ") = " ?p crlf))

