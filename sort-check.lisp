(defun filter (f l)
  (let ((final nil))
    (loop for e in l
          when (funcall f e)
            do (push e final)
          end
          finally (return (nreverse final)))))

(defun half-sort (len l)
  (if (= 1 len)
      l
      (let* ((avg (/ (loop for i in l sum i) len))
             (less-than (filter (lambda (l) (>= avg l)) l))
             (greater-than (filter (lambda (l) (< avg l)) l)))
        (append (half-sort (length less-than) less-than)
                (half-sort (length greater-than) greater-than)))))
