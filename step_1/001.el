;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.


;;--------------------------------------------------------
;;basic, hello world 
;;--------------------------------------------------------
(setq my-name "albe")

"albe"
(insert "Hello, elisp world! I'm " my-name)
Hello, elisp world! I'm albe
(defun hello (name) (insert "Hello, " name))
(hello albe)
(hello "albe")
Hello, albe

;;-------------------------------------------------------
;;use "progn" or "let" to combine several SEXPs 
;;
;;-------------------------------------------------------

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (insert "Hello! " )
  (other-window 1))

(let ((local-name "albe"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (insert "Hello! " local-name )
  (other-window 1))

;;format string

(format "Hello %s! \n" "visotor")

;;interactive mode

(defun greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))
    (switch-to-buffer-other-window "*test*")
    (erase-buffer)
    (insert (format "Hello %s!\n\nI am%s." your-name from-name))
    (other-window 1)))

(greeting "Albe")

  
 
