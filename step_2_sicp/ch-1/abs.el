;; The function of abs
(defun abs (x)
  (if (> x 0) x (- 0 x)))

;; test for abs
(abs 2)
(abs -2)
(abs 0)

;; another type of abs
(defun abs2 (x)
  (cond ((> x 0) x)
	((= x 0) x)
	((< x 0) (- 0 x))))

;; test for abs2
(abs2 2)
(abs2 -3)
(abs2 0)
