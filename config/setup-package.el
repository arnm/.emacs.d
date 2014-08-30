(require 'package)

(setq package-archives '(("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(defun filter (condp lst)
  "Emacs Lisp doesn’t come with a ‘filter’ function to keep elements that satisfy
a conditional and excise the elements that do not satisfy it. One can use ‘mapcar’
to iterate over a list with a conditional, and then use ‘delq’ to remove the ‘nil’
values."
  (delq nil
        (mapcar (lambda (x) (and (funcall condp x) x)) lst)))

(defun inverse-filter (condp lst)
  "A filter function, but returns a list of the entries that don't match the predicate."
  (delq nil
        (mapcar (lambda (x) (and (not (funcall condp x)) x)) lst)))

(defun packages-install (packages)
  "Given a list of packages, this will install them from the standard locations."
  (let ((to-install (inverse-filter 'package-installed-p packages)))
    (when to-install
      (package-refresh-contents)
      (dolist (it to-install)
          (package-install it)
      (delete-other-windows)))))

(provide 'setup-package)
