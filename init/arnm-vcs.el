(arnm/util/after 'vc-git
  (arnm/package/install 'magit)

  (if (display-graphic-p)
      (progn
        (arnm/package/install 'git-gutter-fringe+)
        (require 'git-gutter-fringe+))
    (arnm/package/install 'git-gutter+))

  (global-git-gutter+-mode))

(arnm/package/install 'diff-hl)
(add-hook 'dired-mode-hook 'diff-hl-dired-mode)
(unless (display-graphic-p)
  (diff-hl-margin-mode))

(provide 'arnm-vcs)
