
(defun arnm/indent-buffer ()
  (interactivew)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))
