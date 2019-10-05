;; execise for 1.5
;; test elisp using normal-order or app-order ?

(defun p() (p))
(defun test (x y)
  (if (= x 0) 0 y))
;; test
(test 1 2)
(test 0 2)

(test 0 (p))
