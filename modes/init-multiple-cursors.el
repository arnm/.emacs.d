(require-package 'multiple-cursors)
(require 'multiple-cursors)

(setq mc/cmds-to-run-for-all
      '(evil-append-line
        evil-backward-WORD-begin
        evil-backward-word-begin
        evil-delete-char
        evil-delete-line
        evil-digit-argument-or-evil-beginning-of-line
        evil-emacs-state
        evil-end-of-line
        evil-force-normal-state
	evil-forward-char
	evil-backward-char
	evil-next-line
	evil-previous-line
        evil-forward-WORD-begin
        evil-forward-WORD-end
        evil-forward-word-begin
        evil-forward-word-end
        evil-insert
        evil-next-line
        evil-normal-state
        evil-previous-line
	evil-change))

(multiple-cursors-mode t)
(provide 'init-multiple-cursors)
