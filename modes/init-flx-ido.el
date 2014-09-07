(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(ido-mode t)
(ido-everywhere t)

(require-package 'flx-ido)
(flx-ido-mode t)

(require-package 'ido-vertical-mode)
(ido-vertical-mode)

(provide 'init-flx-ido)
