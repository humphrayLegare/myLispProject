;;myLispProject is a personnal project of mine because I love lisp so much
;;project is base on common lisp

(defvar *db* nil)


;;functions
(defun make-car (name model fabricant color year)
  "create a car"
  (list :name name :model model :fabricant fabricant :color color :year year))

(defun make-cd (name artist genre year)
  "create a cd"
  (list :name name :artist artist :genre genre :year year))

(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-cd ()
    (make-cd
     (prompt-read "Title")
     (prompt-read "Artist")
     (prompt-read "Genre")
     (prompt-read "Year")))



;;push a cd in the database
;@argument cd
(defun add-record(cd)
(push cd *db*))

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

;;test
(defparameter *spark* (make-dog "spark" "german sheperd" 12))

;; (loop for i in *spark* do (print i))


;;create a cd and it will be push in the *db* var

(add-record (make-cd "Imagine" "John Lennon" "Alternatif" "1975"))
(add-record (make-cd "Whatever" "Metallica" "Metal" "1990"))
(add-record (make-cd "My love" "Sim Bomi" "Love" "2013"))
(add-record (make-cd "Korea" "Sim Bomi" "Ambiance" "2011"))

(defun dump-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

(dump-db)
(add-record (prompt-for-cd))


