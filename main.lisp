;;myLispProject is a personnal project of mine because I love lisp so much
;;project is base on common lisp

(defvar *name* "legare")
(defvar *first-name* "humphray")
(defvar *age* 31)


;;functions
(defun make-car (name model fabricant color year)
  "create a car"
  (list :name name :model model :fabricant fabricant :color color :year year))

(defun make-cd (name artist genre year)
  "create a cd"
  (list :name name :artist artist :genre genre :year year))

(defun make-dog (name race age)
  "create a dog"
  (list :name name :race race :age age))

;;class
(defclass Friend ()
  (name sex age))

(defclass House()
  (price city color))

;;create an instance of some class
(defparameter *bomi*(make-instance 'Friend))
(setf (slot-value *bomi* 'name) "Sim Bomi")
(setf (slot-value *bomi* 'sex) "Female")
(setf (slot-value *bomi* 'age) 31)

(defparameter *myhouse* (make-instance 'House))
(setf (slot-value *myhouse* 'price) 120000)
(setf (slot-value *myhouse* 'city) "Seoul")
(setf (slot-value *myhouse* 'color) "Grey")



