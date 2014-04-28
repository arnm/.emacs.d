(require 'multiple-cursors)

(global-set-key (kbd "C-\-") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-\=") 'mc/mark-next-like-this)
(global-set-key (kbd "C-0") 'mc/mark-next-like-this)

(setq mc/cmds-to-run-for-all
      '(
        evil-append-line
        evil-backward-WORD-begin
        evil-backward-word-begin
        evil-delete-char
        evil-delete-line
        evil-digit-argument-or-evil-beginning-of-line
        evil-emacs-state
        evil-end-of-line
        evil-force-normal-state
        evil-forward-WORD-begin
        evil-forward-WORD-end
        evil-forward-word-begin
        evil-forward-word-end
        evil-insert
        evil-next-line
        evil-normal-state
        evil-previous-line
	evil-change
        ))

(multiple-cursors-mode t)
(provide 'setup-multiple-cursors)
