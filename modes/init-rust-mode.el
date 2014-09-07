(require-package 'rust-mode)
(require 'rust-mode)

(add-to-list 'load-path "/home/alexei/Dev/rust/tools/racer/editors")

(require 'racer)
(global-set-key "\t" 'racer--complete-or-indent)

(provide 'init-rust-mode)
