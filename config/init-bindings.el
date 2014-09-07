(after 'evil

  (require 'rxvt)
  (require-package 'key-chord)

  (key-chord-mode 1)
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  (key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
  (setq key-chord-two-keys-delay 0.1)

  (after "evil-leader-autoloads"
    (evil-leader/set-leader ",")
    (evil-leader/set-key
      "b" 'switch-to-buffer
      "c" 'kill-this-buffer
      "d" 'delete-window
      "k" 'kill-buffer
      "n" 'write-file
      "o" 'find-file
      "q" 'save-buffers-kill-terminal
      "s" 'split-window-vertically
      "v" 'split-window-horizontally
      "w" 'save-buffer)

    (after "smex-autoloads"
      (evil-leader/set-key
	"e" 'smex))

    (after "projectile-autoloads"
      (evil-leader/set-key
	"a" 'projectile-find-file
	"p s" 'projectile-switch-project
	"p c" 'projectile-kill-buffers
	"p b" 'projectile-switch-to-buffer))

    (after "expand-region-autoloads"
      (evil-leader/set-key
	"r" 'er/expand-region))

    (after "ace-jump-mode-autoloads"
      (evil-leader/set-key
	"j c" 'evil-ace-jump-char-mode
	"j w" 'evil-ace-jump-word-mode
	"j l" 'evil-ace-jump-line-mode)))

  (after "multiple-cursors-autoloads"
    (define-key evil-visual-state-map (kbd "C-a") 'mc/mark-all-like-this)
    (define-key evil-visual-state-map (kbd "C-n") 'mc/mark-next-like-this)
    (define-key evil-visual-state-map (kbd "C-p") 'mc/mark-previous-like-this))

  (after "cider-autoloads"
    (evil-leader/set-key-for-mode 'clojure-mode
      "g j" 'cider-jack-in
      "g e" 'cider-send-and-evaluate-sexp))

  (define-key evil-motion-state-map ";" 'evil-forward-char)
  (define-key evil-motion-state-map "j" 'evil-backward-char)
  (define-key evil-motion-state-map "k" 'evil-next-line)
  (define-key evil-motion-state-map "l" 'evil-previous-line)

  ;; Insert State
  (define-key evil-insert-state-map (kbd "C-a") 'evil-append-line)
  (define-key evil-insert-state-map (kbd "C-i") 'evil-insert-line)

  ;; State Change Keys
  (define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)

  ;; Insert Movement Keys
  (define-key evil-insert-state-map (kbd "C-;") 'evil-forward-char)
  (define-key evil-insert-state-map (kbd "C-j") 'evil-backward-char)
  (define-key evil-insert-state-map (kbd "C-k") 'evil-next-line)
  (define-key evil-insert-state-map (kbd "C-l") 'evil-previous-line)
  (define-key evil-insert-state-map (kbd "C-o") 'evil-open-below)
  ;; terminal hack - rxvt
  (define-key evil-insert-state-map (kbd "<right>") 'evil-forward-char)

  ;; Window Movement Keys
  (define-key evil-normal-state-map (kbd "C-;") 'evil-window-right)
  (define-key evil-normal-state-map (kbd "C-j") 'evil-window-left)
  (define-key evil-normal-state-map (kbd "C-k") 'evil-window-down)
  (define-key evil-normal-state-map (kbd "C-l") 'evil-window-up)
  ;; terminal hack -rxvt
  (define-key evil-normal-state-map (kbd "<right>") 'evil-window-right)

  (define-key evil-normal-state-map (kbd "C-s") 'shrink-window)
  (define-key evil-normal-state-map (kbd "C-v") 'shrink-window-horizontally)

  ;; Visual State
  (define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state))

(provide 'init-bindings)
