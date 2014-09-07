;; make sure TAB works in terminal
(setq evil-want-C-i-jump nil)

(require-package 'evil)
(require-package 'evil-leader)

(require 'evil)
(require 'evil-leader)

(global-evil-leader-mode)
(evil-mode t)

(add-to-list 'evil-emacs-state-modes 'magit-mode)

(provide 'init-evil)
