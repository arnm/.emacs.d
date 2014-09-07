(require-package 'clojure-mode)
(require 'clojure-mode)

(after 'clojure-mode
  (setq cider-repl-use-clojure-font-lock t)
  (setq nrepl-hide-special-buffers t)
  (setq cider-popup-stacktraces nil)

  (require-package 'cider)
  (require 'cider)

  (defun cider-send-and-evaluate-sexp ()
    "Sends the s-expression located before the point or the active
region to the REPL and evaluates it. Then the Clojure buffer is
activated as if nothing happened."
    (interactive)
    (if (not (region-active-p))
	(cider-insert-last-sexp-in-repl)
      (cider-insert-in-repl
       (buffer-substring (region-beginning) (region-end)) nil))
    (cider-switch-to-repl-buffer)
    (cider-repl-closing-return)
    (cider-switch-to-last-clojure-buffer)
    (message "")))

(provide 'init-clojure-mode)

