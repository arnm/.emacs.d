(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(ido-mode t)
(ido-everywhere t)

(require-package 'flx-ido)
(flx-ido-mode t)

(require-package 'ido-vertical-mode)
(ido-vertical-mode)

(require-package 'smex)
(require 'smex)

(smex-initialize)

(provide 'init-flx-ido)
