(defconst paredit-modes
  '(fundamental-mode
    text-mode
    prog-mode
    log-edit-mode))

(defun arnm/paredit/mode ()
  "Enables / Disables Paredit depending on the current mode."
  (if (apply 'derived-mode-p paredit-modes)
      (paredit-mode t)
    (paredit-mode nil)))

(add-hook 'after-change-major-mode-hook 'arnm/paredit/mode)
