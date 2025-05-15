(deftemplate animal
   (slot name)
   (slot type))

(defrule check_animal
   (animal (name ?n&duck|turtle) (type ?t))
   =>
   (printout t "The animal " ?n " is of type " ?t "." crlf))
