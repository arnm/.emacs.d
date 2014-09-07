(require-package 'rust-mode)
(require 'rust-mode)

(after 'rust-mode
  ;; https://github.com/phildawes/racer
  (setq racer-path "/home/alexei/Dev/rust/tools/racer/editors")
  (add-to-list 'load-path racer-path)
  (require 'racer)
  (global-set-key "\t" 'racer--complete-or-indent))

(provide 'init-rust-mode)
