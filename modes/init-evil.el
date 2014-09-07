;; make sure TAB works in terminal
(setq evil-want-C-i-jump nil)

(setq evilnc-hotkey-comment-operator "gc")

(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-nerd-commenter)
(require-package 'evil-surround)

(require 'evil)
(require 'evil-leader)
(require 'evil-nerd-commenter)

(defcustom dotemacs-evil-state-modes
  '(fundamental-mode
    text-mode
    prog-mode
    log-edit-mode)
  "List of modes that should start up in Evil state."
  :type '(repeat (symbol))
  :group 'dotemacs)

(defun my-enable-evil-mode ()
  (if (apply 'derived-mode-p dotemacs-evil-state-modes)
      (turn-on-evil-mode)
    (set-cursor-color "red")))

(add-hook 'after-change-major-mode-hook 'my-enable-evil-mode)

(global-evil-leader-mode t)
(global-evil-surround-mode t)

(defun my-evil-modeline-change (default-color)
  "changes the modeline color when the evil mode changes"
  (let ((color (cond ((evil-insert-state-p) '("#002233" . "#ffffff"))
		     ((evil-visual-state-p) '("#330033" . "#ffffff"))
		     ((evil-normal-state-p) default-color)
		     (t '("#440000" . "#ffffff")))))
    (set-face-background 'mode-line (car color))
    (set-face-foreground 'mode-line (cdr color))))

(lexical-let ((default-color (cons (face-background 'mode-line)
				   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
	    (lambda () (my-evil-modeline-change default-color))))

(provide 'init-evil)
