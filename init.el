(add-to-list 'load-path "~/.emacs.d/vendor")

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes (quote ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(highlight-changes-colors (quote ("#D700D7" "#AF87FF")))
 '(highlight-tail-colors (quote (("#303030" . 0) ("#B3EE3A" . 20) ("#AFEEEE" . 30) ("#8DE6F7" . 50) ("#FFF68F" . 60) ("#FFA54F" . 70) ("#FE87F4" . 85) ("#303030" . 100))))
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(scroll-bar-mode nil)
 '(syslog-debug-face (quote ((t :background unspecified :foreground "#5FFFFF" :weight bold))))
 '(syslog-error-face (quote ((t :background unspecified :foreground "#FF1493" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#87D700"))))
 '(syslog-info-face (quote ((t :background unspecified :foreground "#5FD7FF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#CDC673"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#D700D7"))))
 '(syslog-warn-face (quote ((t :background unspecified :foreground "#FF8C00" :weight bold))))
 '(tool-bar-mode nil)
 '(weechat-color-list (quote (unspecified "#1B1E1C" "#303030" "#5F0000" "#FF1493" "#6B8E23" "#87D700" "#968B26" "#CDC673" "#21889B" "#5FD7FF" "#A41F99" "#D700D7" "#349B8D" "#5FFFFF" "#F5F5F5" "#FFFAFA"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; MELPA

;; IDO mode
(require 'ido)
(ido-mode t)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

;; magit
(require 'magit)

;; nyan-mode
(nyan-mode 1)

;; evil-mode
(require 'evil)
(define-key evil-motion-state-map "j" 'evil-backward-char)
(define-key evil-motion-state-map ";" 'evil-forward-char)
(define-key evil-motion-state-map "k" 'evil-next-line)
(define-key evil-motion-state-map "l" 'evil-previous-line)
(evil-mode 1)

;; auto complete mode
(require 'auto-complete)

;; Jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; js2-mode
(add-hook 'js-mode-hook 'js2-minor-mode)

;; cider clj
(require 'cider)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

;; VENDOR

(require 'key-chord)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)
