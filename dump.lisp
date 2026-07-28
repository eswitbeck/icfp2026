(require :asdf)

(defun map-char (fn str)
  (let ((chars nil))
    (loop for c across str
          do (push (funcall fn c) chars)
          finally (return (nreverse chars)))))

(defun escape-char (c)
  (format nil "`~d`" (char-code c)))

(defun make-path (char-list)
  (format nil "@~a~{s~a~}H" (car char-list) (cdr char-list)))

(defun make-program (str)
  (let* ((chars (map-char #'escape-char str))
         (path (make-path chars))
         (len (length path)))
    (format nil "+~a+~%|~a|~%~:*~:*+~a+~%" 
            (make-string len :initial-element #\-)
            path)))

(let ((history (uiop:slurp-stream-string *standard-input*)))
  (format t "~A" (make-program history)))
