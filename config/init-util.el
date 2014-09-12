(if (fboundp 'with-eval-after-load)
    (defmacro after (feature &rest body)
      "After FEATURE is loaded, evaluate BODY."
      (declare (indent defun))
      `(with-eval-after-load ,feature ,@body))
  (defmacro after (feature &rest body)
    "After FEATURE is loaded, evaluate BODY."
    (declare (indent defun))
    `(eval-after-load ,feature
       '(progn ,@body))))

(defun arnm/make-dir-path ()
  (when buffer-file-name
    (let ((dir (file-name-directory buffer-file-name)))
      (when (and (not (file-exists-p dir))
		 (y-or-n-p (format "Directory %s does not exist. Create it?" dir)))
	(make-directory dir t)))))
(add-hook 'before-save-hook 'arnm/make-dir-path)

(defun arnm/open-file ()
  (interactive)
  (if (projectile-project-p)
      (projectile-find-file) 
    (call-interactively 'find-file))) 

(defmacro arnm/lazy-major-mode (pattern mode)
  "Defines a new major-mode matched by PATTERN, installs MODE if necessary, and activates it."
  `(add-to-list 'auto-mode-alist
		'(,pattern . (lambda ()
			       (require-package (quote ,mode))
			       (,mode)))))
(provide 'init-util)
