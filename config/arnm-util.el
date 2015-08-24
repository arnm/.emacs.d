(defun arnm/util/load-path (path)
  "Add path to global 'load-path' list."
  (add-to-list 'load-path path))

(defun arnm/util/load-paths ()
  "Load all paths necessary for initialization."
  (arnm/util/load-path (concat user-emacs-directory "config")))

(defun arnm/util/require-packages (packages)
  "Require each package in list."
  (dolist (package packages)
    (require package)))

(if (fboundp 'with-eval-after-load)
  (defmacro arnm/util/after (feature &rest body)
    (declare (indent defun))
    `(with-eval-after-load ,feature ,@body))
  (defmacro arnm/util/after (feature &rest body)
    (declare (indent defun))
    `(eval-after-load ,feature
                      `(progn ,@body))))

(arnm/util/load-paths)

(provide 'arnm-util)
